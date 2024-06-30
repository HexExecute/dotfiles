{
  services = {
    dbus.enable = true;
    udev.enable = true;
    displayManager.enable = true;
    xserver.displayManager.gdm = {
      enable = true;
      wayland = true;
    };
  };
}
