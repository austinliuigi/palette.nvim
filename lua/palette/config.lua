---@class config
---@field palette string|table
---@field bolds string|table
---@field italics string|table
---@field line "underline"|"undercurl"|"underdouble"|"underdotted"|"underdashed"

local defaults = {
  transparent = false,
  transparent_float = false,
  dim_nc_backgroud = false,
  bold = true,
  italic = true,
  line = "underline",
}

return defaults
