{
  description = "4thokage NixOS Flake";

  outputs = inputs:
    inputs.flake-parts.lib.mkFlake {inherit inputs;} {
      systems = import inputs.systems;

      imports = [
        ./shared #TODO: think of removing this
        ./hosts
      ];
    };

  inputs = {
    systems.url = "github:nix-systems/default-linux";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    stylix.url = "github:danth/stylix";
    nvf.url = "github:notashelf/nvf";

    hyprland-qtutils = {
      url = "github:hyprwm/hyprland-qtutils";
    };

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    anyrun = {
      url = "github:anyrun-org/anyrun";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    devkitnix = {
      url = "github:knarkzel/devkitnix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
}
