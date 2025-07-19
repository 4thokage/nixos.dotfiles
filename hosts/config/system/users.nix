{
  users.users.jsr = {
    isNormalUser = true;
    uid = 1000;
    extraGroups = [
      "wheel"
      "audio"
      "video"
      "input"
      "network"
      "networkmanager"
      "libvirtd"
      "docker"
      "git"
    ];
  };
}
