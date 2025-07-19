{pkgs, ...}: {
  imports = [
    ./hardware-configuration.nix
    ../config/window-managers/hyprland
    ../config/hardware/bluetooth
    ./services/tlp.nix
    ./services/gnome-keyring.nix
    ./services/greetd.nix
    ./services/pipewire.nix
    ./services/bluetooth.nix
    ./services/mpd.nix
  ];

  boot.kernelPackages = pkgs.linuxPackages_xanmod_latest;
}
