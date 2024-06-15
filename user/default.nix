{ userSettings, inputs, ... }:
let
  self = inputs.self;
in {
  imports = [
    "${self}/user/pkg"
    "${self}/user/wm/hyprland"
  ];

  home.username = userSettings.username;
  home.homeDirectory = "/home/${userSettings.username}";

  programs.home-manager.enable = true;
}
