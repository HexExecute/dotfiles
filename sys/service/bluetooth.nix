{
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;

  services.blueman.enable = true; # bluetooth
  services.rtkit.enable = true; # security
  services.pipewire.wireplumber.extraConfig = {
    "monitor.bluez.properties" = {
      "bluez5.enable-sbc-xq" = true;
      "bluez5.enable-msbc" = true;
      "bluez5.enable-hw-volume" = true;
      "bluez5.-roles" = [ "hsp_hs" "hsp_ag" "hsp_hf" "hfg_ag" ];
    };
  };
}
