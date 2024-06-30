{ self, ... }: {
  imports = [ "${self}/user/style/gtk.nix" "${self}/user/style/theme.nix" ];
}
