{ self }: {
  imports = [ "${self}/sys/boot/grub.nix" "${self}/sys/boot/dm/gdm.nix" ];

  boot = {
    plymouth.enable = true;

    kernelParams = [ "logo.nologo" "splash" "boot.shell_on_fail" ];

    initrd = {
      availableKernelModules =
        [ "nvme" "xhci_pci" "thunderbolt" "usb_storage" "sd_mod" ];
      kernelModules = [ ];
    };
    kernelModules = [ "kvm-amd" ];
    extraModulePackages = [ ];
  };
}
