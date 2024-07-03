{ pkgs, ... }: {
  home.packages = with pkgs; [ brave ];
  programs.chromium.commandLineArgs = [ "--ozone-platform=wayland" ];
}
