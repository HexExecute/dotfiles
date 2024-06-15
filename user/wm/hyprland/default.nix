{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    xwayland.enable = true;
    settings = {
      "$mod" = "SUPER";
      "$terminal" = "[float;tile] wezterm start --always-new-process";
      "$files" = "nautilus";
      "$menu" = "wofi --show drun";

      monitor = [ ", preferred, 1920x1200, 1.2" ];

      # exec-once = [ "hyprpaper" ];

      general = {
        gaps_in = 5;
        gaps_out = 20;

        border_size = 0;
        resize_on_border = true;

        allow_tearing = false;

        layout = "dwindle";
      };

      decoration = {
        rounding = 10;

        active_opacity = 1.0;
        inactive_opacity = 1.0;

        drop_shadow = true;
        shadow_range = 4;
        shadow_render_power = 3;
        "col.shadow" = "rgba(1a1a1aee)";

        blur = {
          enabled = true;
          size = 3;
          passes = 1;

          vibrancy = 0.1696;
        };
      };

      animations = {
        enabled = true;

        bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";

        animation = [
          "windows, 1, 7, myBezier"
          "windowsOut, 1, 7, default, popin 80%"
          "border, 1, 10, default"
          "borderangle, 1, 8, default"
          "fade, 1, 7, default"
          "workspaces, 1, 6, default"
        ];
      };

      dwindle = {
        psuedotile = true;
        preserve_split = true;
      };

      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
        disable_splash_rendering = true;
      };

      input = {
        kb_layout = "us";

        follow_mouse = 1;
        sensitivity = 0;

        touchpad.natural_scroll = true;
      };

      gestures.workspace_swipe = true;

      bind = [
        "$mod, T, exec, $terminal"
        "$mod, M, exit"
        "$mod, E, $files"
        "$mod, R, exec, $menu"
        "$mod, P, pseudo"

        "$mod, H, movefocus, l"
        "$mod, J, movefocus, d"
        "$mod, K, movefocus, u"
        "$mod, L, movefocus, r"

        "$mod, C, killactive"
        "$mod, V, togglefloating"
        "$mod, F, maximize"
      ];
      # TODO: posy cursor

      windowrule = [ "opacity 0.999 override, ^(firefox)$" ];

      windowrulev2 = [ "supressevent maximize, class:.*" ];
    };
  };
}
