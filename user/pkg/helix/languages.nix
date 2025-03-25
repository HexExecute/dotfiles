{ pkgs, ... }: {
  programs.helix.languages = {
    # language-server.texlab.config.texlab = {
    #   chktex = {
    #     on-open-and-save = true;
    #     on-edit = true;
    #   };
    #   forward_search = {
    #     executable = "zathura";
    #     args = [ "--synctex-forward" "%l:%c:%f" "%p" ];
    #   };
    #   build = {
    #     aux-directory = "build";
    #     log-directory = "build";
    #     pdf-directory = "build";

    #     forward-search-after = true;
    #     on-save = true;

    #     executable = "tectonic";

    #     args = [
    #       "-X"
    #       "compile"
    #       "--synctex"
    #       "--keep-logs"
    #       "--keep-intermediates"
    #       "--outdir=build"
    #       "%f"
    #     ];
    #   };
    # };

    language-server.texlab.config.forward_search = {
      executable = "zathura";
      args = ["--syntex-forward" "%l:1:%f" "%p"];
      on_save = true;
    };

    language = [
      {
        name = "nix";
        auto-format = true;
        formatter.command = "${pkgs.nixfmt}/bin/nixfmt";
      }
      {
        name = "javascript";
        auto-format = true;
      }
      {
        name = "typescript";
        auto-format = true;
      }
      {
        name = "rust";
        auto-format = true;
      }
      {
        name = "java";
        auto-format = true;
      }
      {
        name = "latex";
        scope = "source.tex";
        injection-regex = "tex";
        file-types = [ "tex" ];
        roots = [ ];
        comment-token = "%";
        language-server = "texlab";
        # config.texlab.build.onSave = true;
        indent = {
          tab-width = 2;
          unit = "	";
        };
        auto-format = true;
      }
    ];
  };
}
