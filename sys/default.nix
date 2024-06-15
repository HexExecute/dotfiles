{ inputs, ... }: 
let
  self = inputs.self;
in {
  imports = [
    "${self}/sys/hardware.nix"
    "${self}/sys/boot/grub.nix"

    "${self}/sys/shell.nix"
    "${self}/sys/dm/gdm.nix"

    "${self}/sys/pkg"
    "${self}/sys/service"

    "${self}/sys/users/hex.nix"
  ];

  # nix
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nix.gc.automatic = true; # garbage collector
  system.stateVersion = "24.05";

  # networking
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  # internationalisation
  time.timeZone = "America/New_York";

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # x11 keymap
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };
}
