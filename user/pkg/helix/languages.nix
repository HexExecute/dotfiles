{ pkgs, ... }: {
  programs.helix.languages = {
    language_server.texlab.config.texlab = {
      chktex = {
        on_open_and_save = true;
        on_edit = true;
      };
      forward_search = {
        executable = "zathura";
        args = [ "--synctex-forward" "%l:%c:%f" "%p" ];
      };
      build = {
        aux_directory = "build";
        log_directory = "build";
        pdf_directory = "build";

        forward_search_after = true;
        on_save = true;

        executable = "tectonic";

        args = [
          "-X"
          "compile"
          "--synctex"
          "--keep-logs"
          "--keep-intermediates"
          "--outdir=build"
          "%f"
        ];
      };
    };

    language = [
      {
        name = "nix";
        auto_format = true;
        formatter.command = "${pkgs.nixfmt}/bin/nixfmt";
      }
      {
        name = "javascript";
        auto_format = true;
      }
      {
        name = "typescript";
        auto_format = true;
      }
      {
        name = "rust";
        auto_format = true;
      }
      {
        name = "java";
        auto_format = true;
      }
    ];
  };
}
