{ pkgs, ... }: {
  home.packages = with pkgs; [ steam adwsteamgtk cartridges ];

  # roblox via sober
  services.flatpak.packages = [{ appId = ""; }];
}
