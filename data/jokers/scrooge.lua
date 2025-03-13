SMODS.Joker {
	key = 'scrooge',
	atlas = 'Jokerster_atlas', pos = {x = 1, y = 0}, -- Assign atlas and position
	config = {extra = {cash = 15, retiggercount = 1}}, 
	rarity=3, -- Card rarity
	cost = 10, -- Card cost
	unlocked = true,
    discovered = false, 
    blueprint_compat = true, -- LOL???
    eternal_compat = true,
    perishable_compat = false,	
	
	loc_vars = function(self, info_queue, card)
		return {vars = {card.ability.extra.cash, card.ability.extra.retiggercount}}
	end,
		
		
	calculate = function (self, card, context)
		if context.cardarea == G.play and context.repetition and not context.repetition_only then
			local dollars = G.GAME.dollars + (G.GAME.dollar_buffer or 0)
			card.ability.extra.retiggercount = dollars / card.ability.extra.cash
			if dollars > 0 then 
					return {
					message = 'Again!',
					repetitions = card.ability.extra.retiggercount,
					-- The card the repetitions are applying to is context.other_card
					card = context.other_card
				}
			end
		end
	end,
}