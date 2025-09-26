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
			hostType = "dev";
		in {
			nixosConfigurations = {
				oblivion = nixpkgs.lib.nixosSystem {
					modules = [
						./hosts/oblivion
					];
					specialArgs = { inherit self inputs userName hostType ; };
				};
				nixtest = nixpkgs.lib.nixosSystem {
					modules = [
						./hosts/nixtest
					];
					specialArgs = { inherit self inputs userName hostType ; };
				};
			};	
	};
}
