{        
  pkgs,
  inputs,
  ...
}: let
  devkitA64 = inputs.devkitnix.packages.x86_64-linux.devkitA64;
in {
  home.packages = [
    devkitA64
  ];

  home.sessionVariables = {
    DEVKITPRO = devkitA64;  
  };

}
