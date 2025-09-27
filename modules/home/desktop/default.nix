{ pkgs, ... }: {
  imports = [
    ./browser.nix
    ./terminal.nix
    ./music.nix
    ./social.nix
    ./theme.nix
  ];

  home.packages = with pkgs; [
    dmidecode
    libreoffice-qt-fresh
  ];

}
