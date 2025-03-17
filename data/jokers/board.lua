SMODS.Joker {
	key = 'board',
	atlas = 'Jokerster_legendary', pos = {x = 2, y = 0}, soul_pos = {x = 2, y = 1},
	config = {extra = {boardmult = 3}}, 
	rarity = 3,
	cost = 5,
	unlocked = true,
	discovered = false,
	blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
	
	loc_vars = function(self, info_queue, card)
		return {vars = {card.ability.extra.boardmult}}
	end,
	
	calculate = function(self, card, context)
		if context.other_joker and context.other_joker.edition and context.other_joker.edition.negative == true then
			return {
			xmult = card.ability.extra.boardmult
			}
		end
		if context.other_consumeable and context.other_consumeable.edition and context.other_consumeable.edition.negative == true then
			return {
			xmult = card.ability.extra.boardmult
			}
		end
	end
	
}

--you could make it so that it goes through each card area 
--(G.consumeables, G.hand.cards, context.full_hand/G.play.cards, and G.jokers.cards) 
--and check if those cards have edition.negative