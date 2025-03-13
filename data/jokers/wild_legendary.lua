SMODS.Joker {
	key = 'wild_legendary',
	atlas = 'Jokerster_legendary', pos = {x = 1, y = 0}, soul_pos = {x = 1, y = 1},
	config = {extra = {xmult_mod = 4,}},
	rarity = 4,
	cost = 20,
	unlocked = false,
	unlock_condition = {hidden = true},
	discovered = false,
	blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
	
	loc_vars = function(self, info_queue, center)
		return {vars = {center.ability.extra.xmult_mod}}
	end,
	
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			-- :get_id tests for the rank of the card. Other than 2-10, Jack is 11, Queen is 12, King is 13, and Ace is 14.
			if context.other_card:get_id() == 12 then
				
				return {
					delay = 0.5,
					message = localize { type = 'variable', key = 'a_xmult', vars = {card.ability.extra.xmult_mod}},
					Xmult_mod = card.ability.extra.xmult_mod,
					card = context.other_card
				}
				
			end
		end
	end
	
}