{ unstable, ... }: {
  programs.firefox = {
    enable = true;
    package = unstable.firefox;
    # TODO: add wavefox theming
  };

}
