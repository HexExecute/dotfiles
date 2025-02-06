{ pkgs, unstable, ... }: {
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
    unstable.showtime
    unstable.decibels
    denaro
    parabolic
    unstable.rnote
    snapshot
    gnome.gnome-clocks
    pika-backup
    # unstable.gnome-weather
    mousam
    foliate
    apostrophe
    unstable.alpaca
    easyeffects
    resources
    unstable.memorado
    impression
    hieroglyphic
    gnome.gnome-calendar
    gnome-maps
    loupe
    hyprnome
    exhibit
  ];
}
