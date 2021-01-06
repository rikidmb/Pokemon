MOVES["Curse"] = {
    description = "Curse is a unique move that works differently for Ghost-type Pokemon than other Pokemon. Ghost-type Pokemon use 50% of their current HP to place a curse on the target. The cursed Pokemon loses hp during 5 turns. For all other Pokemon, Curse raises the user's Attack and Defense by one stage each and lowers Speed by one stage.",
    wildBlock = true,
    makeIndirectDamage = true,
    category = MOVE_CATEGORY.STATUS,
    clientIconId = 12111,
    iconId = 0,
    dType = DAMAGE_TYPE_GHOST,
    functionName = "Curse",
    type = SKILLS_TYPES.TARGET,
    requiredEnergy = 100,
    requiredLevel = 40,
    damage = 50,
    damageType = ELEMENT_GHOST,
    effect = EFFECT_SCARY_FACE,
    projectile = nil,
    maxDistance = 1,
    cooldownTime = 60,
    cooldownStorage = 15207
}