{ inputs, pkgs, ... }: {
	programs.vim = {
		enable = true;
		extraConfig = ''
			set tabstop=4
			set shiftwidth=4
			set number relativenumber

			set termguicolors
            colorscheme catppuccin_mocha
		'';
        plugins = with pkgs.vimPlugins; [
			nerdtree
			catppuccin-vim
            rainbow_parentheses
            auto-pairs
        ];
	};
}
