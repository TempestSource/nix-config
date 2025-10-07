{ lib, ... }: {
  imports = [
    ./pipewire.nix
    ./de.nix
  ];

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      # Add additional package names here
      "vivaldi"
    ];

  services.printing.enable = true;

  hardware.bluetooth.enable = true;
  services.blueman.enable = true;
}
