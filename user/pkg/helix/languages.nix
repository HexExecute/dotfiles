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

    #config = { texlab = { build = { onSave = true, forwardSearchAfter = true }, forwardSearch = { executable = "zathura", args = [ "--synctex-forward", "%l:1:%f", "%p" ] }, chktex = { onEdit = true } } }   
    language-server.texlab.config = {
      build = {
        on-save = true;
        forward-search-after = true;
      };
      forward-search = {
        executable = "zathura";
        args = [ "--syntex-forward" "%l:1:%f" "%p" ];
        on-save = true;
      };
      chktex.on-edit = true;
    };

    language-server.rust-analyzer.config.check.command = "clippy";

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
        formatter = {
          command = "dprint";
          args = [ "fmt" "--stdin" "typescript" ];
        };
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
        language-servers = [ "texlab" ];
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
