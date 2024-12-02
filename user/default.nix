{ self, ... }: {
  imports = [
    "${self}/user/shell.nix"
    "${self}/user/pkg"
    "${self}/user/wm/hyprland"
    "${self}/user/style"
  ];

  home.username = "hex";
  home.homeDirectory = "/home/hex";
  home.stateVersion = "24.11";

  nixpkgs.config.allowUnfree = true;

  programs.home-manager.enable = true;
}
