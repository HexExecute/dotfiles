{ pkgs, ... }: {
  users.users.hex.packages = with pkgs; [ krita ];
}
