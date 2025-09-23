{
	description = "NixOS Config";

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

		home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
	};

	outputs = { self, nixpkgs, ... }@inputs: let
			userName = "lain";
			hostType = "desktop";
		in {
			nixosConfigurations = {
				oblivion = nixpkgs.lib.nixosSystem {
					modules = [
						./hosts/oblivion
					];
					specialArgs = { inherit self inputs userName hostType ; };
				};
			};	
	};
}
