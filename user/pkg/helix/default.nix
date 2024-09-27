{ self, config, pkgs, ... }: {
  # home.sessionVariables.EDITOR = "hx";

  imports = [ "${self}/user/pkg/helix/languages.nix" ];

  home.packages = with pkgs; [ texlab tectonic ];

  programs = {
    zathura = {
      enable = true;
      options = {
        default_bg = config.theme.colors.surface;
        default_fg = config.theme.colors.onSurface;
      };
    };

    helix = {
      enable = true;
      settings = {
        theme = "catppuccin_mocha_transparent";
        editor.cursor-shape = {
          normal = "block";
          insert = "bar";
          select = "underline";
        };
      };
      themes = {
        catppuccin_mocha_transparent = {
          "inherits" = "catppuccin_mocha";
          "ui.background" = { };
        };
      };
    };
  };
}
