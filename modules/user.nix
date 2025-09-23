{ inputs, hostType, userName, ... }: {
	imports = [ 
		inputs.home-manager.nixosModules.home-manager 
	];

	users.users.${userName} = {
		isNormalUser = true;
		extraGroups = [ "wheel" ];
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
				if ( hostType == "desktop" ) then 
					[ ./home/desktop ./home/core ]
				else
					[ ./core ];
		};
	};
}
