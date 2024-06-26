{
  description = "hex.execute's nixos configuration";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.05";
    flake-utils.url = "github:numtide/flake-utils";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: 
  let lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs self; };
        # inherit inputs;
        modules = [
          ./sys/default.nix
          # { _module.args = { inherit inputs; }; }
         ];
      };
    };
    homeConfigurations = {
      hex = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = { inherit inputs self; };

        # inherit inputs;
        modules = [ 
          ./user/default.nix
          # { _module.args = { inherit inputs; }; }
        ];
      };
    };
  };
}
