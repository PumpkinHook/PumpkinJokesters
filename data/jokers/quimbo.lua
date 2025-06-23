SMODS.Atlas{
	key = 'quimbo_atlas',
	path = 'Quimbo.png',
	px = 71, py = 95
}


SMODS.Joker {
	key = 'quimbo',
	atlas = 'quimbo_atlas', pos = {x = 0, y = 0},
	config = {extra = {moneyquimbo = 5, odds = 5}},
	rarity = 2,
	cost = 5,
	unlocked = true,
	discovered = false,
	blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
	
	loc_vars = function(self, info_queue, card)
		return {vars = {(G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.moneyquimbo}}
	end,
	
	calculate = function(self, card, context)
		if context.joker_main then
			if pseudorandom('quimbo') < G.GAME.probabilities.normal / card.ability.extra.odds then
				-- This part plays the animation.
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('tarot1')
						card.T.r = -0.2
						card:juice_up(0.3, 0.4)
					return true
				end
			}))
			return {
				dollars = card.ability.extra.moneyquimbo
			}
		else
			return {
				message = localize('k_nope_ex'),
			}
			end
		end
	end
	
	
	--1 in 5 chance to destory a random joker
	--1 in 4 chance to retrigger a random joker

}