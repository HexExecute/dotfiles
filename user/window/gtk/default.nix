{ config, ... }: {
  qt = {
    enable = true;
    platformTheme.name = "gtk2";
    style.name = "gtk2";
  };

  gtk = { enable = true; };

  home.pointerCursor.gtk.enable = true;
}
