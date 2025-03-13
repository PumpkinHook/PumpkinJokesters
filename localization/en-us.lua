return {
	descriptions = {
		Joker = {
			j_jokester_missingjoker = {
				name = "Missing Texture",
				text = {
					"This Joker gains",
					"{C:mult}+#1#{} Mult every {C:attention}#2#{C:inactive} [#3#]{}",
					"cards discarded",
					"{C:inactive}(Currently {{C:mult}+#4#{}{C:inactive} Mult)"
				},
			},
			j_jokester_scrooge = {
				name = "Scrooge",
				text = {
					'Retrigger {C:attention,E:1}all{} cards',
					'used in scoring for',
					'each {C:money}$#1#{} you have',
					--'{C:inactive,s:0.8}(Currently #2# retiggers)'  --Fix Later Maybe
				},	
			},
			j_jokester_pumpkin_legendary = {
				name = "Pumpkin",
				text = {
				'Each played hand being {C:attention,E:1}2 Queens{}',
				'will add a premanant copy',
				'of first played queen to deck',
				' and draw it to hand ',
				},	
			},
			j_jokester_wild_legendary = {
				name = "Wild",
				text = {
                    "Played {C:attention}Queens{} each give",
                    "{X:mult,C:white} X#1# {} Mult when scored",
				},	
			},
			j_jokester_furry = {
				name = "Tabaxi",
				text = {
					"Brings a random {C:attention}consumable{}",
					"when {C:attention}Blind{} is selected",
					'{C:inactive}(Must have room){}',
				
				},		
			},
			j_jokester_faceless = {
				name = "Hole Joker",
				text = {
					"Played {C:attention,E:1}Face cards{} are destoryed.",
					"destoryed face cards give {X:mult,C:white} X#1# {} Mult",
					"and {C:attention}$#2#{}",
				},	
			},
			j_jokester_quimbo = {
				name = "Quimbo",
				text = {
				'{C:green}#1# in #2#{} chance',
				'to give {C:attention}$#3#{}',
				},
			},
			j_jokester_imposter = {
				name = "The Imposter",
				text = {
				'{X:mult,C:white}X#1#{} Mult',
				'{C:green}#2# in #3#{} chance this card',
				'is destoryed at end of round',
				'{C:inactive,S:0.8}probability lowers each round.{}'
				},
			},
			j_jokester_board = {
				name = "{C:dark_edition}The Board{}",
				text = {
				'< every/all {C:dark_edition}negative{} card/edition >',
				'< will give {X:mult,C:white}X#1#{} >'
				},
			},
			j_jokester_sans = {
				name = "sans",
				text = {
				'want to hear a joke?'
				},
			},
			j_jokester_sans2 = {
				name = "sans",
				text = {
				'want to hear a joke again?'
				},
			},
			j_jokester_sans3 = {
				name = "Sans",
				text = {
				'Judgement.',
				'{X:mult,C:white}X#1#{} Mult',
				},
			},
			j_jokester_battery = {
				name = "Battery",
				text = {
				'{C:chips}+#1#{} Hands, {C:red}+#2#{} Discards',
				'each round',
				},
			},
			j_jokester_katamari = {
				name = "Katamari",
				text = {
				'Gains {C:chips}+#1#{} chips', 
				'and {C:red}+#2#{} mult',
				'each hand played',
				'{C:inactive,s:0.8}currently +#3# chips and +#4# mult{}'
				},
			},
			j_jokester_ultra_eye = {
				name = "Single Sight",
				text = {
				'if played hand is {C:attention,E:1}#3#{}', 
				'Retrigger {C:attention}#1#{} times and give {X:mult,C:white}X#2#{}',
				'',
				},
			},
		}
	},
		
		misc = {
			dictionary = {
				jokester_ui_requires_restart = "MENU WIP",
				jokester_ui_artists = "Artists",
				jokester_ui_devs = "Developers",
				
				jokester_faceless_ability = "Destroyed.",
				jokester_imposter_ability1 = "Murdered!",
				jokester_imposter_ability2 = "Survived!",
		},
	}
}