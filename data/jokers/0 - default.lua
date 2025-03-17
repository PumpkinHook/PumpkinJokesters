SMODS.Joker {
	key = 'default', --Keep same as File Name
	atlas = 'Jokerster_atlas', pos = {x = 0, y = 0}, --soul_pos = {x = 0, y = 0}, 
	--config = {extra = {discard_size = 1, hands_size = 1,}},  --Config Example
	rarity = 2, -- 1 = common, 2 = Uncommon, 3 = rare, 4 = Legendary 
	cost = 5, 
	unlocked = true, -- Keep it like this for most of them
	discovered = false,
	blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
	
	loc_vars = function(self, info_queue, card)
		--return {vars = {card.ability.extra.}}
	end,

}