{ ... }: {
  imports = [
    ./pipewire.nix
    ./de.nix
  ];

  services.printing.enable = true;
}
