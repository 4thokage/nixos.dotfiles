{
  programs.nh = {
    enable = true;
    flake = "/home/jsr/.styx";
    clean = {
      enable = true;
      extraArgs = "--keep-since 1w";
    };
  };
}
