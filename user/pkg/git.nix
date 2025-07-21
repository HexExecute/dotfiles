{ pkgs, ... }: {
  programs.git.enable = true;
  home.packages = with pkgs; [
    gitui
    turtle
    nautilus-python
    python313Packages.pygit2
    python313Packages.dbus-python
    python313Packages.secretstorage
    python313Packages.pygobject3
    meld
  ];
}
