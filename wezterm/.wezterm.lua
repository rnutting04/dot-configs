-- Pull in the wezterm API
local wezterm = require 'wezterm' -- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28
config.window_background_opacity = 0.95
config.default_prog = {"powershell.exe", "-NoLogo"}
-- or, changing the font size and color scheme.
config.font_size = 10
config.color_scheme = 'Catppuccin Mocha'
config.font = wezterm.font 'Fira Code'
-- You can specify some parameters to influence the font selection;
-- for example, this selects a Bold, Italic font variant.
config.font =
  wezterm.font('JetBrains Mono', { weight = 'Bold', italic = false })
-- Finally, return the configuration to wezterm:
return config
