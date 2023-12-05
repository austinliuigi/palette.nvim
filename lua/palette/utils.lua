local util = {}

local function byte(value, offset)
  return bit.band(bit.rshift(value, offset), 0xFF)
end

local function rgb(color)
  color = vim.api.nvim_get_color_by_name(color)

  if color == -1 then
    color = vim.opt.background:get() == "dark" and 000 or 255255255
  end

  return { byte(color, 16), byte(color, 8), byte(color, 0) }
end

---@param fg string foreground color
---@param bg string background color
---@param alpha number number between 0 (background) and 1 (foreground)
util.blend = function(fg, bg, alpha)
  local fg_rgb = rgb(fg)
  local bg_rgb = rgb(bg)

  local function blend_channel(i)
    local ret = (alpha * fg_rgb[i] + ((1 - alpha) * bg_rgb[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format("#%02X%02X%02X", blend_channel(1), blend_channel(2), blend_channel(3))
end

return util
