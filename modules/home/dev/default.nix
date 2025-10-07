{ pkgs, ... }: {
  imports = [
    ./langs.nix
    ./editor.nix
    ./nettools.nix
  ];

  home.packages = with pkgs; [
    glow
    w3m
    nixos-shell
  ];
}
