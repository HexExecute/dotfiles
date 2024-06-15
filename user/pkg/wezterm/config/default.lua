local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'CatppuccinMocha'
config.enable_tab_bar = false

return config
