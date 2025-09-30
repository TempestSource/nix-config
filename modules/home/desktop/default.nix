{ pkgs, ... }: {
  imports = [
    ./browser.nix
    ./terminal.nix
    ./music.nix
    ./social.nix
    ./theme.nix
    ./pass.nix
  ];

  home.packages = with pkgs; [
    dmidecode
    libreoffice-qt-fresh
    wl-clipboard
  ];

}
