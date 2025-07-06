SMODS.Joker {
	key = 'rushed', --Keep same as File Name
	atlas = 'JokerPH_atlas', pos = {x = 0, y = 0}, --soul_pos = {x = 0, y = 0}, 
	config = {extra = {odds1 = 5, mult = 1,}},  --Config Example
	rarity = 2, -- 1 = common, 2 = Uncommon, 3 = rare, 4 = Legendary 
	cost = 5, 
	unlocked = true, -- Keep it like this for most of them
	discovered = false,
	blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
	
	loc_vars = function(self, info_queue, card)
		return {vars = {(G.GAME.probabilities.normal or 1), card.ability.extra.odds1, card.ability.extra.mult}}
	end,

	
}