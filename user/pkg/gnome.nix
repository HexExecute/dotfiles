{ pkgs, ... }: {
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
    eyedropper
  ];
}
