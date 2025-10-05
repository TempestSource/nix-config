{ inputs, pkgs, ... }: {
  programs.vim = {
    enable = true;
    extraConfig = ''
            set tabstop=4
            set shiftwidth=4
            set number relativenumber

            set termguicolors
            colorscheme catppuccin_mocha

            let mapleader = " "
            nnoremap <leader>f :Files
            nnoremap <leader>t :NERDTree
            nnoremap <leader>l :Lines

            iabbr sout System.out.println("");<Esc>hhha
    '';
    plugins = with pkgs.vimPlugins; [
      nerdtree
      catppuccin-vim
      rainbow_parentheses
      auto-pairs
      vim-closetag
      fzf-vim
    ];
  };
}
