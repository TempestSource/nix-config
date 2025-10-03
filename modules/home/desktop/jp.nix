{ pkgs, ... }: {
  home.packages = with pkgs; [
    anki
    noto-fonts-cjk-sans
  ];
  i18n.inputMethod = {
    type = "fcitx5";
    enable = true;
    fcitx5.addons = with pkgs; [
      fcitx5-mozc
      fcitx5-gtk
    ];
  };
}
