{ pkgs, ... }:
let unstable = import <nixpkgs-unstable> { config = { allowUnfree = true; }; };
in {
  home.packages = with pkgs; [
    gnome.gnome-calculator
    errands
    fragments
    gnome.nautilus
    emblem
    dialect
    impression
    amberol
    authenticator
    video-trimmer
    wike
    clapper
    denaro
    parabolic
    unstable.rnote
    snapshot
    gnome.gnome-clocks
    pika-backup
    gnome.gnome-weather
    papers
    apostrophe
  ];
}
