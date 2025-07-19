{
  pkgs,
  self,
  inputs,
  ...
}: {
  imports = [
    ./dev/default.nix
  ];
  home.packages = with pkgs; [
    self.packages.${pkgs.system}.lightctl
    self.packages.${pkgs.system}.networkctl
    self.packages.${pkgs.system}.volumectl
    inputs.hyprland-qtutils.packages."${pkgs.system}".default

    dissent
    foot
    ncmpcpp
    feh
    imagemagick
    brave
    ffmpeg-full
    grim
    grimblast
    libnotify
    openssl
    pwvucontrol
    wl-clipboard
    yt-dlp
    cava
  ];
}
