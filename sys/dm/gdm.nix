{
  services.dbus.enable = true;
  services.udev.enable = true;
  services.xserver.displayManager.gdm = {
    enable = true;
    # wayland = true;
  };
}
