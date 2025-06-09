SMODS.Joker {
	key = 'testprint', --Keep same as File Name
	atlas = 'JokerPH_atlas', pos = {x = 0, y = 0}, --soul_pos = {x = 0, y = 0}, 
	config = { extra = { active = "Inactive" , bptarget = 0 } },
	rarity = 2, -- 1 = common, 2 = Uncommon, 3 = rare, 4 = Legendary 
	cost = 5, 
	unlocked = true, -- Keep it like this for most of them
	discovered = true,
	blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
	
    calculate = function(self, card, context)
        local other_joker = nil
        for i = 1, #G.jokers.cards do
            if G.jokers.cards[i] == card then other_joker = G.jokers.cards[i - 1] end
        end
        return SMODS.blueprint_effect(card, other_joker, context)
    end,

}