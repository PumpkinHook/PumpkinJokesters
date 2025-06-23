SMODS.Joker {
	key = 'sans2',
	atlas = 'sans_atlas', pos = {x = 0, y = 1},
	yes_pool_flag = 'sans1',
	no_pool_flag = 'sans2',	
	rarity = 1,
	cost = 3,
	unlocked = true,
	discovered = false,
	blueprint_compat = true,
    eternal_compat = false,
    perishable_compat = true,
	
	calculate = function (self,card,context)
	
		if context.joker_main and not context.blueprint then
			return {
				--play_sound("snd_txtsans", 1, 1),
				mult = 1
			}
		end
		
		if context.end_of_round and context.game_over == false and not context.repetition and not context.blueprint then
		
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
			G.GAME.pool_flags.sans2 = true
		end
	end
	
}