POKEMON["Clamperl"] = {
    pTypes = { ELEMENT_WATER },
    dexStorage = 10366,
    atk = 64,
    def = 85,
    spAtk = 74,
    spDef = 55,
    energy = 100,
    chance = 150,
    portrait = 28515,
    dexPortrait = -1,
    fastcallPortrait = 27359,
    catchStorage = -1,
    evolutions = {
        { name = "Huntail", requiredLevel = 30, requiredItems = { ITEMS.DEEPSEATOOTH }  },
        { name = "Gorebyss", requiredLevel = 30, requiredItems = { ITEMS.DEEPSEASCALE }  },
    },
    description = "When it evolves, it makes a mysterious pearl that amplifies psychic powers when it's held.",
    skills = { "Tackle", 1, "Clamp", 5, "Water Gun", 10, "Whirlpool", 15, "Rock Tomb", 20, "Iron Defense", 25 },
    abilities = { "Surf", "Dive", "Waterfall" },
    eggGroup = { POKEMON_EGG_GROUP_WATER_1 },
    eggId = 28547,
    eggChance = 20,
    specialAbilities = { POKEMON_SPECIAL_ABILITY_IDS.SHELL_ARMOR },
    learnableTms = { TM_IDS.TOXIC, TM_IDS.ICE_BEAM, TM_IDS.BLIZZARD, TM_IDS.PROTECT, TM_IDS.RAIN_DANCE, TM_IDS.DOUBLE_TEAM, TM_IDS.REST, TM_IDS.SUBSTITUTE, TM_IDS.HAIL },
    eggMoves = { "Barrier", "Body Slam", "Confuse Ray", "Endure", "Mud Sport", "Muddy Water", "Refresh", "Supersonic" }
}