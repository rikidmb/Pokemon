local SKILL_NAME = "Rocket Missile"

function onTargetCreature_RocketMissile(cid, target)
	doSkillDamage(cid, target, SKILL_NAME)
end

local combat = createCombatObject() setCombatCallback(combat, CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature_RocketMissile")
function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
