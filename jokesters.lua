--- STEAMODDED HEADER
--- MOD_NAME: Pumpkin's Jokesters
--- MOD_ID: jokester
--- PREFIX: jokester
--- MOD_AUTHOR: [PumpkinHook, Wild]
--- MOD_DESCRIPTION: Glamour on the streets, Jimbo in the sheets.
--- VERSION: 0.1.7
--- CONFLICTS: [Talisman (<<2.1.0~dev)]

----------------------------------------------
------------MOD CODE -------------------------

JOKE_UTIL = {}

-- Load utility functions into JOKE_UTIL
SMODS.load_file("util/definitions.lua")()
SMODS.load_file("util/misc_functions.lua")()
SMODS.load_file("util/ui.lua")()

-- Load the atlases, sounds
SMODS.load_file("data/atlas.lua")()
SMODS.load_file("data/sounds.lua")()

-- Load Jokers if they are enabled
if JOKE_UTIL.config.jokers_enabled then
  JOKE_UTIL.register_items(JOKE_UTIL.ENABLED_JOKERS, "data/jokers")
end

-- Load Booster Packs if they are enabled
if JOKE_UTIL.config.jokers_enabled then
  JOKE_UTIL.register_items(JOKE_UTIL.ENABLED_PACKS, "data/boosters")
end

----------------------------------------------
------------MOD CODE END----------------------
    