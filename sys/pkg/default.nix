{ self, ... }: {
  imports = [
    "${self}/sys/pkg/cli.nix"
    "${self}/sys/pkg/ftdi.nix"
    "${self}/sys/pkg/gnome.nix"
    "${self}/sys/pkg/kdeconnect.nix"
  ];
}
