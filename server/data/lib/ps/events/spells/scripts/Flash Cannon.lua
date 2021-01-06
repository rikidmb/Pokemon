local SKILL_NAME = "Flash Cannon"
local LOOK_DIRS = {
	[NORTH] = {x = 0, y = -1, effectS = EFFECT_GRAY_BEAM_UP_START, effectM = EFFECT_GRAY_BEAM_UP_MIDDLE, effectE = EFFECT_GRAY_BEAM_UP_END},
	[EAST] =  {x = 1, y = 0, effectS = EFFECT_GRAY_BEAM_RIGHT_START, effectM = EFFECT_GRAY_BEAM_RIGHT_MIDDLE, effectE = EFFECT_GRAY_BEAM_RIGHT_END},
	[SOUTH] = {x = 0, y = 1, effectS = EFFECT_GRAY_BEAM_DOWN_START, effectM = EFFECT_GRAY_BEAM_DOWN_MIDDLE, effectE = EFFECT_GRAY_BEAM_DOWN_END},
	[WEST] =  {x = -1, y = 0, effectS = EFFECT_GRAY_BEAM_LEFT_START, effectM = EFFECT_GRAY_BEAM_LEFT_MIDDLE, effectE = EFFECT_GRAY_BEAM_LEFT_END}
}
local HALF_POWER = math.floor(getPokemonSkillDamage(SKILL_NAME) / 2)

function onTargetCreature_FlashCannon(cid, target)
    doSkillDamage(cid, target, SKILL_NAME)
    if (not isCreature(target)) then return end -- Defeated
    if (not doPokemonSpecialAbilityCheck(target, POKEMON_SPECIAL_ABILITY_IDS.SHIELD_DUST, nil) and getRandom(0, 100) <=
            (doPokemonSpecialAbilityCheck(cid, POKEMON_SPECIAL_ABILITY_IDS.SERENA_GRACE, nil) and 20 or 10)) then
        doCreatureAddStatus(target, CREATURE_STATUS_EXTRASPDEF, CREATURE_STATUS_VAR_BAD, cid)
    end
end
local combat = createCombatObject()
setCombatCallback(combat, CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature_FlashCannon")
setCombatArea(combat, createCombatArea({{1}}))

function onTargetCreature_FlashCannonHalf(cid, target)
    doSkillDamage(cid, target, SKILL_NAME, HALF_POWER)
end

local combatEffect = createCombatObject()
setCombatArea(combatEffect, createCombatArea({{1, 2, 1}}))
setCombatParam(combatEffect, COMBAT_PARAM_EFFECT, EFFECT_GRAY_ENERGIZE)
setCombatCallback(combatEffect, CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature_FlashCannonHalf")

local function doSpell(cid, toDirection, lastPosition, ticks)
	if (isCreature(cid)) then
		lastPosition.x = lastPosition.x + LOOK_DIRS[toDirection].x
		lastPosition.y = lastPosition.y + LOOK_DIRS[toDirection].y
		if (ticks == 7) then
			doSendMagicEffect(lastPosition, LOOK_DIRS[toDirection].effectS)
		elseif (ticks == 0) then
			doSendMagicEffect(lastPosition, LOOK_DIRS[toDirection].effectE)
		else
			doSendMagicEffect(lastPosition, LOOK_DIRS[toDirection].effectM)
		end
		doCombat(cid, combat, positionToVariant(lastPosition))
        doCombat(cid, combatEffect, positionToVariant(lastPosition))
		if (ticks > 0) then
			doSpell(cid, toDirection, lastPosition, ticks - 1)
		end
	end
end

function onCastSpell(cid, var)
	doSpell(cid, getCreatureLookDirection(cid), getCreaturePosition(cid), 7)
	return true
end
