{ self, ... }: {
  # home.sessionVariables.EDITOR = "hx";

  imports = [
    "${self}/user/pkg/helix/languages.nix"
  ];

  programs.helix = {
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
}
