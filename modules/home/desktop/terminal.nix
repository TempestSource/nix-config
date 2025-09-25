{ pkgs, ... }: {
	home.packages = with pkgs; [
		nerd-fonts.jetbrains-mono
	];

	programs.kitty = {
		enable = true;
		font.size = 20;
		font.name = "JetBrains Mono";
		extraConfig = ''
			dynamic_background_opacity yes
			background_opacity 0.65
		'';
	};
}
