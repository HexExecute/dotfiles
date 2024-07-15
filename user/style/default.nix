{ self, ... }: {
  imports = [
    "${self}/user/style/gtk.nix"
    "${self}/user/style/obsidian.nix"
    "${self}/user/style/theme.nix"
  ];
}
