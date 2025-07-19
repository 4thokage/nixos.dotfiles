{pkgs, ...}: {
  stylix = {
    enable = true;
    polarity = "dark";
    image = ./wallpaper.png;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";

    cursor.package = pkgs.bibata-cursors;
    cursor.name = "Bibata-Modern-Ice";

    fonts = {
      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };
    };

    opacity.terminal = 0.85;
  };
}
