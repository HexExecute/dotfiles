{ inputs, ... }: 
let
  self = inputs.self;
in {
  imports = [
    "${self}/sys/pkg/gnome.nix"
    "${self}/sys/pkg/rustup.nix"
  ];
}
