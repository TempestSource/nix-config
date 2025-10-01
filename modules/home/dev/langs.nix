{ pkgs, ... }: {
  programs.java.enable = true;

  home.packages = with pkgs; [
    python3
    python313Packages.beautifulsoup4
    python313Packages.requests
    python313Packages.lxml


    gnumake
    ruby
    gcc
    go
  ];
}
