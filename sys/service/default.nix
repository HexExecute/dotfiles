{ self, ... }: {
  imports = [
    "${self}/sys/service/bluetooth.nix"
    "${self}/sys/service/pipewire.nix"
  ];
}
