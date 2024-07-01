{ pkgs, ... }: {
  programs.helix.languages.language = [
    {
      name = "nix";
      auto-format = true;
      formatter.command = "${pkgs.nixfmt}/bin/nixfmt";
    }
    {
      name = "javascript";
      auto-format = true;
    }
    {
      name = "typescript";
      auto-format = true;
    }
    {
      name = "hex";
      auto-format = true;
    }
  ];
}
