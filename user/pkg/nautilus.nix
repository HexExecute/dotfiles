{ pkgs, ... }: {
  users.users.hex.packages = with pkgs; [ gnome.nautilus ];
}
