SMODS.Joker {
	key = 'katamari',
	atlas = 'Jokerster_atlas', pos = {x = 4, y = 1}, -- Assign atlas and position
	config = {extra = {chipsbase = 20, multbase = 4, chipstack = 0, multstack = 0}}, 
	rarity=2, -- Card rarity
	cost = 10, -- Card cost
	unlocked = true,
    discovered = false, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,	
	
	loc_vars = function(self, info_queue, card)
		return {vars = {card.ability.extra.chipsbase, card.ability.extra.multbase, card.ability.extra.chipstack, card.ability.extra.multstack}}
	end,
	
	calculate = function(self, card, context)
		if context.joker_main then
			card.ability.extra.chipstack = card.ability.extra.chipstack + card.ability.extra.chipsbase
			card.ability.extra.multstack = card.ability.extra.multstack + card.ability.extra.multbase
			return {
				chips = card.ability.extra.chipstack,
				mult = card.ability.extra.multstack
			}
		end
	end

}