---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "tokyonight",
  theme_toggle = { "ayu_light", "tokyonight" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  transparency = true,
  statusline = {
    theme = "default",
    separator_style = "arrow",
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
