{ pkgs, ... }: {
	imports = [
		./git.nix
	];

	home.packages = with pkgs; [
		ranger
		tree
		htop
		neofetch
        bat
	];
}
