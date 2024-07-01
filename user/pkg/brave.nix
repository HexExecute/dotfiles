{ pkgs, ... }: {
  home.packages = with pkgs; [ brave ];
  xdg.desktopEntries.brave.exec = "brave --ozone-platform=wayland %U";
}
