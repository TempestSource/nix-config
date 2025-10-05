{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../modules/core
    ];

    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    networking.hostName = "oblivion";

    time.timeZone = "US/Central";

    services.tailscale.enable = true;

    system.stateVersion = "25.05";

  }

