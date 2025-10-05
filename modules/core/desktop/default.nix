{ ... }: {
  imports = [
    ./pipewire.nix
    ./de.nix
  ];

  services.printing.enable = true;

  hardware.bluetooth.enable = true;
  services.blueman.enable = true;
}
