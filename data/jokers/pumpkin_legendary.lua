SMODS.Atlas{
	key = 'PumpkinLegendary_atlas',
	path = 'Pumpkin_Legendary.png',
	px = 71, py = 95
}

SMODS.Joker {
	key = 'pumpkin_legendary',
	atlas = 'PumpkinLegendary_atlas', pos = {x = 0, y = 0}, soul_pos = {x = 0, y = 1},
	rarity = 4,
	cost = 20,
	unlocked = false,
	unlock_condition = {hidden = true},
	discovered = false,
	blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
	
	calculate = function(self, card, context)
	
		if context.joker_main then
			local queens = 0
			if  #context.full_hand == 2 then
				for i = 1, #context.scoring_hand do
					if context.scoring_hand[i]:get_id() == 12 then queens = queens + 1 end
				end
			end
			if queens == 2 then
				local _card = copy_card(context.full_hand[1], nil, nil, G.playing_card)
				_card:add_to_deck()
				G.deck.config.card_limit = G.deck.config.card_limit + 1
				table.insert(G.playing_cards, _card)
				G.hand:emplace(_card)
				return {
					delay = 0.5,
					message = 'yuri!' -- Fix message to put it before the copy
				}

			end
		end
	end
}