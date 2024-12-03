{ pkgs, ... }: { environment.systemPackages = with pkgs; [ libftdi ]; }
