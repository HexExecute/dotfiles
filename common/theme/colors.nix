{ self, pkgs, ... }:
let
  colorsJSON = builtins.readFile "${self}/assets/material3/radio.json";
  colors = builtins.fromJSON colorsJSON;
in {
  options.theme.colors = pkgs.lib.mkOption {
    default = colors;
    description = "The color theme used by the system (material3).";
  };
}
