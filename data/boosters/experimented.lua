SMODS.Booster{
    key = 'experimented_booster',
    group_key = "k_experimented_booster_group",
    atlas = 'Jokester_pack', 
    pos = { x = 0, y = 0 },
    discovered = true,
    loc_txt= {
        name = 'EXPERIMENTED BOOSTER PACK',
        text = { "Pick {C:attention}#1#{} card out",
                "{C:attention}#2#{} EXPERIMENTED jokers!", },
        group_name = {"Experimented Pack"},
    },
    
    draw_hand = false,
    config = {extra = 3, choose = 1,},

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.choose, card.ability.extra } }
    end,

    weight = 1,
    cost = 5,
    kind = "ExperimentedPack",
    
    create_card = function (self, card, i) 
        return create_card('PumpkinAddition', G.pack_cards, nil, nil, true, true, nil, pseudoseed('pbst')) 
		-- Set, Area, Legendary, Rarity, Skip_materialize, soulable, key, key_append, no_edition edition, stickers
    end,
    select_card = 'jokers',

    in_pool = function() return true 
end
}