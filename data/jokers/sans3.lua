SMODS.Joker {
	key = 'sans3',
	atlas = 'Jokerster_atlas', pos = {x = 2, y = 2},
	config = {extra = {sans3mult = 5}},
	yes_pool_flag = 'sans2',
	rarity = 1,
	cost = 5,
	unlocked = false,
	discovered = false,
	blueprint_compat = true,
    eternal_compat = false,
    perishable_compat = true,
	
	loc_vars = function(self, info_queue, card)
		return {vars = {card.ability.extra.sans3mult}}
	end,
	
	calculate = function (self,card,context)
	
		if context.joker_main then
			return {
				--play_sound("snd_txtsans", 1, 1),
				xmult = card.ability.extra.sans3mult
			}
		end
	end
	
	--Like how Sans' does damage over time at 1hp per tick
	--What if instead of a static mult it was a more powerful Constellation
	--it gains 0.1 xmult per card played
	--or 0.01 if 0.1 is too broken
}