{ self, config, pkgs, ... }: {
  # home.sessionVariables.EDITOR = "hx";

  imports = [ "${self}/user/pkg/helix/languages.nix" ];

  home.packages = with pkgs; [ texlab tectonic texliveFull ];

  programs = {
    zathura = {
      enable = true;
      options = {
        default_bg = config.theme.colors.surface;
        default_fg = config.theme.colors.onSurface;
        recolor = true;
        recolor_lightcolor = config.theme.colors.surface;
        recolor_keephue = true;
      };
    };

    helix = {
      enable = true;
      settings = {
        theme = "catppuccin_mocha_transparent";
        editor.cursor_shape = {
          normal = "block";
          insert = "bar";
          select = "underline";
        };
      };
      themes = {
        catppuccin_mocha_transparent = {
          inherits = "catppuccin_mocha";
          ui.background = { };
        };
      };
    };
  };
}
