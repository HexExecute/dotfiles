{ pkgs, ... }: { environment.shells = with pkgs; [ nushell bash ]; }
