SMODS.Joker {
	key = 'faceless',
	atlas = 'Jokerster_atlas', pos = {x = 3, y = 0},
	config = {extra = {faceMult = 4, faceCash = 10}}, 
	rarity = 3,
	cost = 8,
	unlocked = true,
	discovered = false,
	blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
	
	loc_vars = function(self, info_queue, card)
		return {vars = {card.ability.extra.faceMult, card.ability.extra.faceCash}}
	end,
	
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then	
			if context.other_card:is_face() then
				return {
					colour = G.C.RED,
					card = context.other_card,

					xmult = card.ability.extra.faceMult, 
					-- add ability to destroy the joker
				}
			end
		end
		
		if context.cardarea == G.play and context.destroying_card then
			if context.destroy_card:is_face() then
				return {
				remove = true,
				dollars = card.ability.extra.faceCash,
				message = localize('jokester_faceless_ability'),
				delay = 1
				}
			end
		end

	end
	
}



--G.E_MANAGER:add_event(Event({
	--func = function()
		--play_sound('tarot1')
		--card.T.r = -0.2
		--card:juice_up(0.3, 0.4)
	--return true
--end