{ pkgs, ... }: {
  programs.dconf.enable = true;

  # gnome app patches
  nixpkgs.overlays = [
    # gnome 46: triple-buffering-v4-46
    (final: prev: {
      gnome = prev.gnome.overrideScope (gnomeFinal: gnomePrev: {
        mutter = gnomePrev.mutter.overrideAttrs (old: {
          src = pkgs.fetchFromGitLab {
            domain = "gitlab.gnome.org";
            owner = "vanvugt";
            repo = "mutter";
            rev = "triple-buffering-v4-46";
            hash = "sha256-C2VfW3ThPEZ37YkX7ejlyumLnWa9oij333d5c4yfZxc=";
          };
        });
      });
    })
  ];
  nixpkgs.config.allowAliases = false;
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    adwaita-icon-theme
    gnomeExtensions.appindicator
  ];

  services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];
  services.gvfs.enable = true; # trash for nautilus
}
