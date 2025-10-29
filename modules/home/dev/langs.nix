{ pkgs, ... }: {
  programs.java.enable = true;

  home.packages = with pkgs; [
    python3
    gnumake
    ruby
    gcc
    go
    cmake
    libtool

    python3Packages.python-lsp-server
    sqls
  ];
}
