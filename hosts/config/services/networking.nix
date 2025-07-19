{
  networking = {
    networkmanager = {
      enable = true;
      wifi = {
        backend = "iwd";
        powersave = true;
      };
    };

    firewall = {
      enable = true;
      allowedTCPPorts = [
        8081
        6969
      ];
      checkReversePath = "loose";
    };
  };
}
