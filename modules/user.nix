{ inputs, pkgs, hostType, userName, ... }: {
  imports = [ 
    inputs.home-manager.nixosModules.home-manager 
    inputs.catppuccin.nixosModules.catppuccin
  ];

  programs.zsh.enable = true;

  users.users.${userName} = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    shell = pkgs.zsh;
  };

  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;

    users.${userName} = {
      home.username = "${userName}";
      home.homeDirectory = "/home/${userName}";
      home.stateVersion = "25.05";
      programs.home-manager.enable = true;
      imports =
        if ( hostType == "dev" ) then 
        [ ./home/dev ./home/desktop ./home/core inputs.catppuccin.homeModules.catppuccin ]
        else
        if (hostType == "desktop" ) then
        [ ./home/desktop ./home/core inputs.catppuccin.homeModules.catppuccin ]
        else
        [ ./core ];
      };
    };
  }
