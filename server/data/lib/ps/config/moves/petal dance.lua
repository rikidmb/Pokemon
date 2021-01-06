MOVES["Petal Dance"] = {
    description = "The user attacks for 2-3 turns and then becomes confused.",
    makeContact = true,
    category = MOVE_CATEGORY.SPECIAL,
    clientIconId = 12045,
    iconId = 0,
    dType = DAMAGE_TYPE_GRASS,
    functionName = "PetalDance",
    type = SKILLS_TYPES.TARGET,
    requiredEnergy = 120,
    requiredLevel = 65,
    damage = 120,
    damageType = ELEMENT_GRASS,
    effect = EFFECT_ROOTS_THREE,
    areaEffect = PROJECTILE_LEAF,
    maxDistance = 6,
    areaName = "bigArea",
    area = bigArea,
    cooldownTime = 20,
    cooldownStorage = 15141
}