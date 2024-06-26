{ self, ... }: {
  imports = [ "${self}/common/theme" ];

  "${self}/assets/theme.scss".text = ''
    $primary: #CFBDFE;
    $on_primary: #35275D;
  '';
}
