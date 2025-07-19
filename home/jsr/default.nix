{...}: {
  imports = [
    ./config
    ./packages
    ./programs
    ./shell
    ./window-managers/hyprland

    ./home.nix
  ];

  wayland.windowManager.hyprland.settings = {
    monitor = [
      # name, resolution, position, scale
      "LVDS-1, preferred, auto, 1"
    ];
  };
}
