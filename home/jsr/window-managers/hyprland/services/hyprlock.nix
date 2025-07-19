{...}: {
  programs.hyprlock = {
    enable = true;
    settings = let
      config = 1;
    in {
      general = {
        disable_loading_bar = true;
        hide_cursor = true;
      };

    };
  };
}
