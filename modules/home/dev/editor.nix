{ inputs, pkgs, ... }:
{
  home.packages = with pkgs; [
    jdt-language-server
  ];
  programs.helix = {
    enable = true;
    settings = {
      editor = {
        line-number = "relative";
        auto-completion = true;
      };
    };
    languages.language = [
      {
        name = "nix";
        auto-format = true;
        formatter.command = "${pkgs.nixfmt}/bin/nixfmt";
      }
      {
        name = "java";
        scope = "source.java";
        language-servers = [ "jdtls" ];
        indent = {
          tab-width = 4;
          unit = "    ";
        };
      }
    ];
  };
}
