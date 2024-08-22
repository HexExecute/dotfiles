{ pkgs, ... }:
let unstable = import <nixos-unstable> { };
in {
  home.packages = with pkgs; [ prismlauncher unstable.modrinth-app ferium ];
}
