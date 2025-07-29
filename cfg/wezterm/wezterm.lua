local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.font = wezterm.font("MesloLGS Nerd Font")
config.font_size = 14

config.color_scheme = 'Catppuccin Mocha'


config.enable_tab_bar = false
config.window_decorations = "RESIZE"

config.window_background_opacity = 0.95
config.macos_window_background_blur = 10

config.hide_tab_bar_if_only_one_tab = true
return config