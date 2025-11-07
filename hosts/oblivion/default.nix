{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/core
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "oblivion";
  networking.extraHosts = ''
    192.168.20.100 gridania.shiva.iceheart.xyz
  '';

  time.timeZone = "US/Central";

  system.stateVersion = "25.05";

}
