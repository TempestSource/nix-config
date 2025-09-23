{ ... }: {
	imports = [
		./pipewire.nix
		./x.nix
	];

	services.printing.enable = true;
}
