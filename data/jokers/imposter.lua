SMODS.Atlas{
	key = 'Imposter_atlas',
	path = 'Imposter.png',
	px = 71, py = 95
}

SMODS.Joker {
	key = 'imposter',
	atlas = 'Imposter_atlas', pos = {x = 0, y = 0},
	no_pool_flag = 'imposter_dead',
	config = {extra ={xmult = 2, odds = 10}},
	rarity = 2,
	cost = 5,
	unlocked = true,
	discovered = false,
	blueprint_compat = true,
    eternal_compat = false,
    perishable_compat = true,
	
	loc_vars = function(self, info_queue, card)
		return {vars = {card.ability.extra.xmult, (G.GAME.probabilities.normal or 1), card.ability.extra.odds}}
	end,
	
	calculate = function(self, card, context)
		if context.joker_main then
			return {
				xmult = card.ability.extra.xmult,
			}
		end
		if context.end_of_round and context.game_over == false and not context.repetition and not context.blueprint then
			if pseudorandom('imposter') < G.GAME.probabilities.normal / card.ability.extra.odds then
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('tarot1')
						card.T.r = -0.2
						card:juice_up(0.3, 0.4)
						card.states.drag.is = true
						card.children.center.pinch.x = true
						-- This part destroys the card.
						G.E_MANAGER:add_event(Event({
							trigger = 'after',
							delay = 0.3,
							blockable = false,
							func = function()
								G.jokers:remove_card(card)
								card:remove()
								card = nil
								return true;
							end
						}))
						return true
					end
				}))
			
				G.GAME.pool_flags.imposter_dead = true
				return {
					message = localize('jokester_imposter_ability1'),
				}
			else
				card.ability.extra.odds = card.ability.extra.odds - 1
				return {
					message = localize('jokester_imposter_ability2'),
				}
			end
		end	
	end
	
}