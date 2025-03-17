{ pkgs, inputs, ... }: {
  # programs.firefox = {
  #   enable = true;
  #   package = pkgs.firefox;
  # };
  home.packages =
    [ inputs.zen-browser.packages.x86_64-linux.beta pkgs.tor-browser ];
}
