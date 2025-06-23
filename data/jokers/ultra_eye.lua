SMODS.Atlas{
	key = 'ultraeye_atlas',
	path = 'ultraeye.png',
	px = 71, py = 95
}

SMODS.Joker {
	key = 'ultra_eye',
	atlas = 'ultraeye_atlas', pos = {x = 0, y = 0}, -- Assign atlas and position
	config = {extra = {poker_hand = 'High Card', retrigger = 2, xmult = 2}}, 
	rarity = 2, -- Card rarity
	cost = 5, -- Card cost
	unlocked = true,
    discovered = false, 
    blueprint_compat = true, -- LOL???
    eternal_compat = true,
    perishable_compat = false,	
	
	loc_vars = function(self, info_queue, card)
		return {vars = {card.ability.extra.retrigger, card.ability.extra.xmult, card.ability.extra.poker_hand}}
	end,

	calculate = function(self, card, context)
		if context.cardarea == G.play and context.scoring_name == card.ability.extra.poker_hand and context.repetition and not context.repetition_only then
				return {
					message = 'Again!',
					repetitions = card.ability.extra.retrigger,
					xmult = card.ability.extra.xmult,
					card = context.other_card
				}
		end	
	end
}