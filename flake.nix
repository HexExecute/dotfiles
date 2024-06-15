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

  outputs = { self, nixpkgs, home-manager, ... }: 
  let lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        inherit system;
        modules = [ ./sys/default.nix ];
      };
    };
    homeConfigurations = {
      hex = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [ ./user/default.nix ];
      };
    };
  };
}
