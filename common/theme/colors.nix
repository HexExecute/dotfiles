{ self, config, ... }:
let
  colorsJSON = builtins.readFile "${self}/assets/material3/radio.json";
  colors = builtins.fromJSON colorsJSON;
in { config.theme.colors = colors; }
