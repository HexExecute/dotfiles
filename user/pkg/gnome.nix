{ pkgs, unstable, ... }: {
  home.packages = with pkgs; [
    gnome.gnome-calculator
    errands
    fragments
    gnome.nautilus
    emblem
    dialect
    impression
    unstable.gapless
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
    unstable.alpaca
  ];
}
