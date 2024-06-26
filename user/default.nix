{ self, ... }: {
  imports =
    [ "${self}/user/shell.nix" "${self}/user/pkg" "${self}/user/wm/hyprland" ];

  home.username = "hex";
  home.homeDirectory = "/home/hex";
  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
