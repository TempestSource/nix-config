{ pkgs, ... }: {
	imports = [
		./langs.nix
		./editor.nix
        ./nettools.nix
	];
}
