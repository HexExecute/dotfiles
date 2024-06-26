{ config, ... }: {
  programs.wezterm = {
    enable = true;
    extraConfig = ''
      local wezterm = require 'wezterm'

      local config = wezterm.config_builder()

      config.color_scheme = 'Catppuccin Mocha'
      config.enable_tab_bar = false
      config.window_background_opacity = 0.8

      config.colors = {
        background = '${config.theme.colors.schemes.dark.surface}'
      }

      return config
    '';

    # builtins.readFile "${self}/user/pkg/wezterm/config/default.lua";
  };
}
