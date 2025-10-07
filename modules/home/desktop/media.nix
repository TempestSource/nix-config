{ pkgs, ... }: {
  home.packages = with pkgs; [
    gimp
    audacity
    krita
    pastel
    kdePackages.kdenlive
  ];
}
