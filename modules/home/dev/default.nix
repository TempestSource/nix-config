{ pkgs, ... }: {
  imports = [
    ./langs.nix
    ./editor.nix
    ./nettools.nix
  ];

  home.packages = with pkgs; [
    glow
  ];
}
