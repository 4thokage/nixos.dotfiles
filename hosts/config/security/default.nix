{
  security = {
    # Allow hyprlock to unlock the screen
    pam.services.hyprlock = {};

    polkit.enable = true;
    rtkit.enable = true;
    sudo.wheelNeedsPassword = false;

    # Enable Trusted Platform Module 2 support
    tpm2.enable = true;
  };
}
