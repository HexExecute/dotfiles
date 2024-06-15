{ userSettings, pkgs, ... }: {
  users.users."${userSettings.username}".packages = with pkgs; [ alsa-utils ];
}
