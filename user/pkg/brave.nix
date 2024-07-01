{ pkgs, ... }: {
  home.packages = with pkgs; [ brave ];
  xdg.desktopEntries.brave = {
    name = "brave";
    exec = "brave --ozone-platform=wayland %U";
  };
}
