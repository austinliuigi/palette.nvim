---------- Type Definitions ----------

---@alias hl_group string Name of a highlight group
---@alias hl_attrs table Table of highlight attributes as used in nvim_set_hl()
---@alias color string|integer "#RRGGBB" or color value accepted in nvim_set_hl()

---@alias base16_theme string Name of a base16 theme
---@alias base16_table { [string]: color }

---@alias overrides_t table<hl_group, hl_attrs>

---@class config
---@field theme (base16_theme|base16_table) Theme name or custom theme table
---@field overrides overrides_t Specific highlight group overrides

---------- Implementation ----------

local config = require("palette.config")
local palette = {}

function palette.setup(cfg)
  cfg = cfg or {}
  config = vim.tbl_deep_extend("force", config, cfg)
end

function palette.load()
  if config.palette == nil then
    vim.notify("palette: color palette is not configured, aborting colorscheme change", vim.log.levels.ERROR)
    return
  end

  if
    not config.palette.base00
    or not config.palette.base01
    or not config.palette.base02
    or not config.palette.base03
    or not config.palette.base04
    or not config.palette.base05
    or not config.palette.base06
    or not config.palette.base07
    or not config.palette.base08
    or not config.palette.base09
    or not config.palette.base0A
    or not config.palette.base0B
    or not config.palette.base0C
    or not config.palette.base0D
    or not config.palette.base0E
    or not config.palette.base0F
  then
    vim.notify("palette: palette is missing color(s), aborting colorscheme change", vim.log.levels.ERROR)
    return
  end

  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "palette"

  require("palette.theme").load(config)
end

return palette
