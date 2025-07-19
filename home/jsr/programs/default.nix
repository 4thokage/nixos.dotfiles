{
  imports = [
    ./fastfetch.nix
    #./gh.nix
    #./git.nix
    #./gpg.nix
    #./lazygit.nix
    ./mpv.nix
  ];

  programs = {
    foot = {
      enable = true;
      settings = {
        mouse = {
          hide-when-typing = "yes";
        };
      };
    };
    zathura.enable = true;
    yazi.enable = true;
  };
}
