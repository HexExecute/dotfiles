{
  description = "hex.execute's nixos configuration";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.05";
    unstablepkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-flatpak.url = "github:gmodena/nix-flatpak";
  };

  outputs =
    { self, nixpkgs, unstablepkgs, home-manager, nix-flatpak, ... }@inputs:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
      unstable = import unstablepkgs { inherit system; };
    in {
      nixosConfigurations.nixos = lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs self; };
        modules = [ ./sys/default.nix ];
      };
      homeConfigurations = {
        hex = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          inherit unstable;
          extraSpecialArgs = { inherit inputs self; };

          modules = [ ./user/default.nix ];
        };
      };
    };
}
