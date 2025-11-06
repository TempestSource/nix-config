{ ... }:
{
  programs.git = {
    enable = true;
    userName = "Tempest Source";
    userEmail = "tempestsource@gmail.com";
  };
  programs.lazygit = {
    enable = true;
    settings = {
      gui = {
        theme = {
          activeBorderColor = [
            "magenta"
            "bold"
          ];
          inactiveBorderColor = [ "black" ];
        };
      };
    };
  };
}
