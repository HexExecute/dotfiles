{ pkgs, ... }: {
  users.users.hex.packages = with pkgs; [ kicad ];
}
