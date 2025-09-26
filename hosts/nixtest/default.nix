# VM used for testing configuration portability

{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
	../../modules/core
    ];

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda"; # or "nodev" for efi only

  networking.hostName = "nixtest"; # Define your hostname.

  time.timeZone = "US/Central";

  system.stateVersion = "25.05"; # Did you read the comment?

}

