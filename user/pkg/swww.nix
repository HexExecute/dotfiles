{ pkgs, ... }: {
  systemd.packages = with pkgs; [ swww ];
  systemd.user.services.swww.wantedBy = [ "default.target" ];
}
