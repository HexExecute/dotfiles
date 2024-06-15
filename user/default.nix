{ userSettings, self, ... }: {
  imports = [
    "${self}/user/pkg"
    "${self}/user/wm/hyprland"
  ];

  home.username = userSettings.username;
  home.homeDirectory = "/home/${userSettings.username}";
  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
