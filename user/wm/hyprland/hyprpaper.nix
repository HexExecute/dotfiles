{ userSettings, pkgs, ... }: {
  # users.users."${userSettings.username}".packages = with pkgs; [ hyprpaper ];
  # TODO: no need, will have a custom wallpaper with ags
}
