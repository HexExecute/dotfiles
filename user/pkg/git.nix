{ pkgs, ... }: {
  programs.git.enable = true;
  home.packages = with pkgs; [
    gitui
    turtle
    nautilus-python
    python313Packages.pygit2
    python313Packages.pydbus
    python313Packages.secretstorage
  ];
}
