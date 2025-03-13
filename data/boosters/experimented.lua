SMODS.Booster{
    key = "experimented_booster",
    loc_txt = {
        name = "Experimented Pack",
        group_name = "Experimented Pack",
        text ={ 
            "Choose {C:attention}#1#{} of up to",
            "{C:attention}#2#{} {C:dark_edition}Experimented joker cards{}",
        }
    },
    atlas = "Jokester_pack",
    pos = {x = 0, y = 0},
    config = { extra = 3, choose = 1},
    loc_vars = function(self, info_queue, pack)
        return { vars= {self.config.choose, self.config.extra} }
    end,
    weight = 3,
    cost = 5,
    kind = "Joker"
}