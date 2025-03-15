{ pkgs, ... }: {
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [ noto-fonts iosevka google-fonts ];
}
