SMODS.Joker {
	key = 'furry',
	atlas = 'Jokerster_atlas', pos = {x = 2, y = 0},
	rarity = 2,
	cost = 5,
	unlocked = true,
	discovered = false,
	blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
	
	loc_vars = function(self, info_queue, card)
		return { vars = {} }
	end,	
	
	calculate = function(self, card, context)
		if context.setting_blind then
			G.E_MANAGER:add_event(Event({
              func = function()
                -- Give the negative consumable
                local _card = JOKE_UTIL.poll_consumable('furry', true)
                --_card:set_edition({ negative = true })
                _card:add_to_deck()
                G.consumeables:emplace(_card)
				return true
			end
			}))
		end
	end
	
}