---@class config
---@field palette table
---@field bold boolean
---@field italic boolean
---@field transparent boolean
---@field transparent_float boolean
---@field dim_nc_background boolean
---@field line "underline"|"undercurl"|"underdouble"|"underdotted"|"underdashed"

local defaults = {
  palette = nil, -- 16 color palette to use
  bold = true, -- whether to bold certain highlights
  italic = true, -- whether to italicize certain highlights
  transparent = false, -- whether normal windows should have a transparent background
  transparent_float = false, -- whether floating windows should have a transparent background
  dim_nc_background = false, -- whether to dim the background of non-current windows
  line = "underline", -- line style for warnings/errors
}

return defaults
