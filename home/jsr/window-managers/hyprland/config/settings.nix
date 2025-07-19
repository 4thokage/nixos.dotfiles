{config, ...}: {
  wayland.windowManager.hyprland.settings = let
    pointer = config.home.pointerCursor;
  in {
    env = [
      "CLUTTER_BACKEND,wayland"
      "GDK_BACKEND,wayland,x11,*"
      "SDL_VIDEODRIVER,wayland"
      "XDG_CURRENT_DESKTOP,Hyprland"
      "XDG_SESSION_DESKTOP,Hyprland"
      "XDG_SESSION_TYPE,wayland"
      "QT_AUTO_SCREEN_SCALE_FACTOR,1"
      "QT_QPA_PLATFORM,wayland;xcb"
      "QT_QPA_PLATFORMTHEME,qt5ct"
      "QT_STYLE_OVERRIDE,kvantum"
      "QT_WAYLAND_DISABLE_WINDOWDECORATION,1"
      "LIBVA_DRIVER_NAME,nvidia"
      "GLX_VENDOR_LIBRARY_NAME,nvidia"
      "GL_VRR_ALLOWED,1"
      "WLR_DRM_NO_ATOMIC,1"
    ];

    exec-once = [
      # "hyprctl setcursor ${pointer.name} ${toString pointer.size}"
    ];

    general = {
      gaps_in = 5;
      gaps_out = 10;

      border_size = 2;
      #"col.active_border" = "rgb(${colors.blue})";
      #"col.inactive_border" = "rgb(${colors.gray0})";

      resize_on_border = true;

      # Please see https://wiki.hyprland.org/Configuring/Tearing/ before you turn this on
      allow_tearing = false;

      layout = "dwindle";
    };

    dwindle = {
      pseudotile = true;
      preserve_split = true;
    };

    master = {
      new_status = "master";
    };

    decoration = {
      rounding = 0;

      active_opacity = 1.0;
      inactive_opacity = 1.0;
      fullscreen_opacity = 1.0;

      dim_inactive = false;

      blur.enabled = false;
      shadow.enabled = false;
    };

    animations = {
      enabled = true;
      first_launch_animation = true;

      bezier = [
        "wind, 0.05, 0.9, 0.1, 1.05"
        "winIn, 0.1, 1.1, 0.1, 1.1"
        "winOut, 0.3, -0.3, 0, 1"
        "liner, 1, 1, 1, 1"
      ];

      animation = [
        "windows, 1, 6, wind, slide"
        "windowsIn, 1, 6, winIn, slide"
        "fade, 1, 10, default"
        "border, 1, 1, liner"
        "workspaces, 1, 5, wind"
      ];
    };

    input = {
      kb_layout = "us";
      follow_mouse = 1;
      force_no_accel = true;
      sensitivity = 1.0;

      touchpad = {
        disable_while_typing = true;
        natural_scroll = false;
        tap-to-click = true;
        tap-and-drag = true;
        scroll_factor = 0.5;
      };
    };

    gestures = {
      workspace_swipe = true;
      workspace_swipe_forever = true;
    };

    misc = {
      animate_manual_resizes = true;
      animate_mouse_windowdragging = true;
      disable_autoreload = true;
      disable_hyprland_logo = true;
      disable_splash_rendering = true;
      force_default_wallpaper = 0;
      vfr = true;
      vrr = 1;
    };

    binds = {
      allow_workspace_cycles = true;
    };

    xwayland = {
      enabled = true;
      force_zero_scaling = true;
    };

    plugin = {
      hyprexpo = {
        columns = 3;
        gap_size = 4;
        #bg_col = "rgb(${colors.black0})";
        enable_gesture = true;
        gesture_fingers = 3;
        gesture_distance = 300;
        gesture_positive = false;
      };
    };
  };
}
