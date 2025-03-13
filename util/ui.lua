-- Create Config tab
SMODS.current_mod.config_tab = function()
	return {
	n = G.UIT.ROOT, 
	config = { align = 'cm', padding = 0.05, emboss = 0.05, r = 0.1, colour = G.C.BLACK }, 
	nodes = {
		{
				n = G.UIT.R,
				config = { align = 'cm', minh = 1 },
				nodes = {
				{ n = G.UIT.T, config = { text = localize('jokester_ui_requires_restart'), colour = G.C.RED, scale = 0.5 } }
				}
			},
		}
	}
end

SMODS.current_mod.extra_tabs = function()
	local credits_tab = {
	n = G.UIT.ROOT, 
	config = { align = 'tl', padding = 0.05, emboss = 0.05, r = 0.1, colour = G.C.BLACK }, 
	nodes = {
		{ -- First Box (Artists)
          n = G.UIT.C,
          config = { padding = 0.5 },
          nodes = { 
			{
				n = G.UIT.R,
				nodes = {
				{ n = G.UIT.T, config = { text = localize('jokester_ui_artists'), colour = G.C.CHIPS, scale = 0.75 } }
				}
			},
			{
              n = G.UIT.R,
              config = { align = 'cm', minh = 0.2 },
              nodes = {
                { n = G.UIT.T, config = { text = 'Wild', colour = G.C.MULT, scale = 0.6 } }
              }
            },
			{
              n = G.UIT.R,
              config = { align = 'cm', minh = 0.2 },
              nodes = {
                { n = G.UIT.T, config = { text = 'PumpkinHook', colour = G.C.MULT, scale = 0.4 } }
              }
            }
			}
		}, -- end of first box
		
		{ -- Second Box (Devs)
          n = G.UIT.C,
          config = { padding = 0.5 },
          nodes = { 
			{
				n = G.UIT.R,
				nodes = {
				{ n = G.UIT.T, config = { text = localize('jokester_ui_devs'), colour = G.C.CHIPS, scale = 0.75 } }
				}
			},
			{
              n = G.UIT.R,
              config = { align = 'cm', minh = 0.2 },
              nodes = {
                { n = G.UIT.T, config = { text = 'PumpkinHook', colour = G.C.GREEN, scale = 0.6 } }
              }
            }
			}
		}, -- end of Second box		
	} -- end of line 22
	}

  return {
    {
      label = localize('b_credits'),
      tab_definition_function = function()
        return credits_tab
      end
    }
  }

end