{ pkgs, ... }: {
  users.users.hex = {
    isNormalUser = true;
    description = "hex";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      # programming
      helix
      rustup

      # terminal
      wezterm
      nushell
      fastfetch
      btop
      git
      wget
      tree
      sass

      # general
      firefox

      # system
      gnome.nautilus
      gnome.gnome-control-center
      # gnome.app-switcher
      wofi
    ];
    shell = pkgs.nushell;
  };
}
