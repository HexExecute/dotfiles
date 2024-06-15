{ self, ... }: {
  imports = [
    "${self}/sys/pkg/gnome.nix"
    # "${self}/sys/pkg/rustup.nix"
  ];
}
