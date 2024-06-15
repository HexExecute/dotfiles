{ self, ... }: {
  imports = [
    "${self}/sys/service/gnome.nix"
    "${self}/sys/service/polkit.nix"
    "${self}/sys/service/upower.nix"
    "${self}/sys/service/bluetooth.nix"
    "${self}/sys/service/pipewire.nix"
  ];
}
