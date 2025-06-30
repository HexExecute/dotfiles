{ pkgs, ... }: {
  home.packages = with pkgs; [ steam adwsteamgtk cartridges rojo ];

  # roblox via sober
  # services.flatpak.packages = [{ appId = ""; }];
}
