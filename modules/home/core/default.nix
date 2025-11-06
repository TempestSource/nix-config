{ pkgs, ... }:
{
  imports = [
    ./git.nix
    ./shell.nix
    ./files.nix
  ];

  home.packages = with pkgs; [
    tree
    htop
    neofetch
    bat
    bc
    eza
    fzf
    tmux
    usbutils
    file
  ];
}
