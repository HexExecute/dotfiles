{ self, ... }:
let
  colorsJSON = builtins.readFile "${self}/assets/material3/radio.json";
  colors = builtins.fromJSON colorsJSON;
in { options.theme.colors = colors; }
