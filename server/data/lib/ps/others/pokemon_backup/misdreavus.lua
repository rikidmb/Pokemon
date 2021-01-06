POKEMON["Misdreavus"] = {
    pTypes = {ELEMENT_GHOST}, dexStorage = 10200, atk = 60, def = 60, spAtk = 85, spDef = 85, energy = 100, chance = 500, portrait = 17489, dexPortrait = 15847, fastcallPortrait = 16047, catchStorage = 16200,
    evolutions = {},
    description = "It loves to bite and yank people's hair from behind without warning, just to see their shocked reactions.",
    skills = {"Tackle", 1, "Psywave", 5, "Spite", 10, "Confuse Ray", 15, "Hex", 20, "Psybeam", 25, "Payback", 30, "Shadow Ball", 35, "Curse", 40, "Hyper Voice", 45, "Dark Pulse", 50},
    abilities = {"Flash", "Headbutt"}, eggGroup = {POKEMON_EGG_GROUP_AMORPHOUS}, eggId = 17760, eggChance = 20,
    specialAbilities = {POKEMON_SPECIAL_ABILITY_IDS.LEVITATE},
    learnableTms = {TM_IDS.AERIAL_ACE, TM_IDS.NIGHTMARE, TM_IDS.DEFENSE_CURL, TM_IDS.SHADOW_BALL, TM_IDS.RAIN_DANCE, TM_IDS.ZAP_CANNON, TM_IDS.HEADBUTT, TM_IDS.THUNDER_WAVE, TM_IDS.DREAM_EATER, TM_IDS.SWIFT, TM_IDS.EGG_BOMB, TM_IDS.TOXIC, TM_IDS.DOUBLE_EDGE, TM_IDS.RAGE, TM_IDS.THUNDERBOLT, TM_IDS.THUNDER, TM_IDS.PSYCHIC, TM_IDS.MIMIC, TM_IDS.DOUBLE_TEAM, TM_IDS.REST, TM_IDS.BIDE, TM_IDS.SUBSTITUTE, },
    eggMoves = {"Curse", "Destiny Bond", "Imprison", "Me First", "Memento", "Nasty Plot", "Ominous Wind", "Screeh", "Shadow Sneak", "Skill Swap", "Spite", "Sucker Punch", "Wonder Room"}
}

POKEMON["Cloned Misdreavus"] = table.deepcopy(POKEMON["Misdreavus"])
POKEMON["Cloned Misdreavus"].blockTransform = true