{ pkgs, ... }: {
	imports = [
		./git.nix
		./nvim.nix
	];

	home.packages = with pkgs; [
		ranger
		tree
		htop
		neofetch
	];
}
