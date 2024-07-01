{ pkgs, ... }: {
  home.packages = with pkgs; [ brave ];
  xdg.desktopEntries.brave-browser = {
    exec = "brave --ozone-platform=wayland %U";
  };
}
