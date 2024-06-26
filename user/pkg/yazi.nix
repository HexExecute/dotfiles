{
  programs.yazi = {
    enable = true;
    enableNushellIntegration = true;
    settings = {
      opener = {
        edit = [{
          run = ''hx "$@"'';
          block = true;
        }];
      };
      manager = { show_hidden = false; };
    };
    # theme = {};
  };
}
