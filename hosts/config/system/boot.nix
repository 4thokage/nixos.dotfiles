{
  boot = {
    consoleLogLevel = 3;

    initrd = {
      verbose = false;
      systemd.enable = true;
    };

    kernelParams = [
      "quiet"
      "splash"
      "loglevel=3"
      "udev.log_level=3"
      "rd.udev.log_level=3"
      "systemd.show_status=auto"
      "rd.systemd.show_status=auto"
    ];

    loader = {
      grub = {
        enable = true;
        useOSProber = true;
        device = "/dev/sda";
      };

      timeout = 2; # Spam space to enter the boot menu
    };

    plymouth = {
      enable = true;
    };

    tmp.cleanOnBoot = true;
  };
}
