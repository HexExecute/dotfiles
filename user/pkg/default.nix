{ self, ... }: {
  imports = [
    "${self}/user/pkg/alsa.nix"
    "${self}/user/pkg/btop.nix"
    "${self}/user/pkg/fastfetch.nix"
    "${self}/user/pkg/findex.nix"
    "${self}/user/pkg/firefox"
    "${self}/user/pkg/git.nix"
    "${self}/user/pkg/helix"
    "${self}/user/pkg/javascript.nix"
    "${self}/user/pkg/kicad.nix"
    "${self}/user/pkg/krita.nix"
    "${self}/user/pkg/nautilus.nix"
    "${self}/user/pkg/sass.nix"
    "${self}/user/pkg/swww.nix"
    "${self}/user/pkg/thunderbird.nix"
    "${self}/user/pkg/tree.nix"
    "${self}/user/pkg/typescript.nix"
    "${self}/user/pkg/wezterm"
  ];
}
