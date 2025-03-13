
---Registers a list of items in a custom order
---@param items table
---@param path string
function JOKE_UTIL.register_items(items, path)
  for i = 1, #items do
    SMODS.load_file(path .. "/" .. items[i] .. ".lua")()
  end
end

---Gets a pseudorandom consumable from the Consumables pool (Soul and Black Hole included)
---@param seed string
---@param soulable boolean
---@return table
function JOKE_UTIL.poll_consumable(seed, soulable)
  local types = {}

  for k, v in pairs(SMODS.ConsumableTypes) do
    types[#types + 1] = k
  end

  return SMODS.create_card {
    set = pseudorandom_element(types, pseudoseed(seed)),
    area = G.consumables,
    soulable = soulable,
    key_append = seed,
  }
end
