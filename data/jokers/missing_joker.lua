SMODS.Atlas{
	key = 'missingjoker_atlas',
	path = 'missingjoker.png',
	px = 71, py = 95
}

SMODS.Joker {
	key = 'missingjoker',
	atlas = 'missingjoker_atlas', pos = {x = 0, y = 0}, -- Assign atlas and position
	config = {extra = {mult = 0, mult_mod = 5, discards = 10, missingtex_discards = 10}}, -- Set up config varibles for the Joker, easy set up to help balance the card later
	rarity=2, -- Card rarity
	cost = 6, -- Card cost
	unlocked = true,
    discovered = false, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,	
	
	loc_vars = function(self, info_queue, center)
		return {vars = {center.ability.extra.mult_mod, center.ability.extra.discards, center.ability.extra.missingtex_discards, center.ability.extra.mult}} --Assign variables to card + text based on #1, #2,,,  in text
	end,
	
	calculate = function (self, card, context) -- calculate joker
		if context.joker_main then -- when jokers are played
			return {
				mult_mod = card.ability.extra.mult, -- add mult from card to mult mod
				message = '+' .. card.ability.extra.mult, -- popup message of '+'
				colour = G.C.MULT -- Change the colour of the popup message to the Mult Col
			}
		end
		
		if context.discard then -- when card is discards then continue 
			card.ability.extra.missingtex_discards = card.ability.extra.missingtex_discards - 1 -- Lower joker's discard counter by amount of discards
			if card.ability.extra.missingtex_discards <= 0 then -- if Joker's discard counter is equal to or lower than 0 then continue
				card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod -- set joker's mult variable to itself + mult mod 
				card.ability.extra.missingtex_discards = card.ability.extra.discards -- reset joker's discard counter to its base value 
					return {
                        delay = 0.5,
                        message = localize{type='variable',key='a_mult',vars={card.ability.extra.mult_mod}}, -- Pop up showing Mult added
                        colour = G.C.RED
                    }
			end	
		end
	end
}