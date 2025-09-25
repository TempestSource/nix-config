{ inputs, pkgs, ... }: {
	programs.neovim = {
		enable = true;
		vimAlias = true;
		viAlias = true;
		defaultEditor = true;
		extraConfig = ''
			set tabstop=4
			set shiftwidth=4
			set number relativenumber
		'';
	};
}
