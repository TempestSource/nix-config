{ lib, ... }:
{
  imports = [
    ./vm.nix
  ];

  nixpkgs.config.allowUnfreePredicate =
    pkg:
    builtins.elem (lib.getName pkg) [
      "terraform"
    ];
}
