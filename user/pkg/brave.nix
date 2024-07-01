{ pkgs, lib, ... }:
let
  wrappedBrave = pkgs.buildEnv {
    name = "wrappedBrave-${pkgs.brave.version}";
    paths = [
      pkgs.brave
      (lib.hiPrio (pkgs.stdenv.mkDerivation {
        name = "brave-wrap-brave";
        nativeBuildInputs = [ pkgs.makeWrapper ];
        phases = [ "installPhase" ];
        installPhase = ''
          mkdir -p $out/bin
          makeWrapper ${
            lib.getExe pkgs.brave
          } $out/bin/brave --add-flags --ozone-platform=wayland
        '';
      }))
    ];
  };
in { home.packages = [ wrappedBrave ]; }
