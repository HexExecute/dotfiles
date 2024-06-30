{ self, config, lib, pkgs, modulesPath, ... }: {
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
    "${self}/sys/boot/default.nix"
  ];

  fileSystems."/" = {
    device = "/dev/disk/by-uuid/ebba5dd8-7183-4456-9d9a-77f5b85371de";
    fsType = "ext4";
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/50E0-9B98";
    fsType = "vfat";
    options = [ "fmask=0022" "dmask=0022" ];
  };

  swapDevices = [ ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.wlp1s0.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.amd.updateMicrocode =
    lib.mkDefault config.hardware.enableRedistributableFirmware;

  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };
}
