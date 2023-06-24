{
  description = "Jj1910's NixOS Flake";

  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs;

    home-manager = {
      url = github:nix-community/home-manager;
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {self, nixpkgs, home-manager,...}@inputs: {
    nixosConfigurations = {
      "nixos" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        modules = [
          ./modules/system.nix
          ./display
          ./services
          ./security

          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.justin = import ./home;
          }
        ];
      };
    };
  
  };

}
