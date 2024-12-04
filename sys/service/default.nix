{ self, ... }: {
  imports = [
    "${self}/sys/service/flatpak.nix"
    "${self}/sys/service/fprintd.nix"
    "${self}/sys/service/gnome.nix"
    "${self}/sys/service/polkit.nix"
    "${self}/sys/service/upower.nix"
    "${self}/sys/service/udev.nix"
    "${self}/sys/service/bluetooth.nix"
    "${self}/sys/service/pipewire.nix"
    "${self}/sys/service/tablet.nix"
    "${self}/sys/service/printing.nix"
    "${self}/sys/service/tlp.nix"
    "${self}/sys/service/usbmuxd.nix"
  ];
}
