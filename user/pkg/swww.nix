{ pkgs, ... }: {
  home.packages = with pkgs; [ swww ];
  systemd.user.services.swww.wantedBy = [ "default.target" ];
}
