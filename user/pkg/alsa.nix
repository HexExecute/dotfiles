{ pkgs, ... }: {
  users.users.hex.packages = with pkgs; [ alsa-utils ];
}
