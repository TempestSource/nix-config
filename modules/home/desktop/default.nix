{ pkgs, ... }: {
  imports = [
    ./browser.nix
    ./terminal.nix
    ./music.nix
    ./social.nix
    ./theme.nix
    ./pass.nix
    ./office.nix
    ./player.nix
    ./media.nix
    ./jp.nix
  ];

  home.packages = with pkgs; [
    dmidecode
    wl-clipboard
    ffmpeg
    imagemagick
  ];

}
