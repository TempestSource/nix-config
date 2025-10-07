{ pkgs, ... }: {
  imports = [
    ./git.nix
    ./shell.nix
  ];

  home.packages = with pkgs; [
    ranger
    tree
    htop
    neofetch
    bat
    bc
    eza
    fzf
    tmux
    file
  ];
}
