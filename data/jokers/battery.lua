SMODS.Atlas{
	key = 'battery_atlas',
	path = 'Battery.png',
	px = 71, py = 95
}

SMODS.Joker {
	key = 'battery',
	atlas = 'battery_atlas', pos = {x = 0, y = 0},
	config = {extra = {discard_size = 1, hands_size = 1,}},
	rarity = 2,
	cost = 5,
	unlocked = true,
	discovered = false,
	blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,

	loc_vars = function(self, info_queue, card)
		return {vars = {card.ability.extra.discard_size, card.ability.extra.hands_size}}
	end,
	
	add_to_deck = function(self, card, from_debuff)
		G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.discard_size
		G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands_size		
	end,
	
	remove_from_deck = function(self, card, from_debuff)
		G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.discard_size
		G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands_size			
	end,
	
}