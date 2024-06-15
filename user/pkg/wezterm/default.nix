{ inputs, ...}:
let
  self = inputs.self;
in {
  programs.wezterm = {
    enable = true;
    extraConfig = builtins.readFile "${self}/user/pkg/wezterm/config/default.lua";
  };
}
