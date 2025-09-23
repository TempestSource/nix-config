{ hostType, pkgs, ... }: {
	imports =
		if ( hostType == "desktop") then
			[ ./desktop ../user.nix ]
		else
			[ ../user.nix ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

	networking = {
		networkmanager.enable = true;
		firewall.allowedTCPPorts = [ 22 ];
		# firewall.allowedUDPPorts = [ ... ];
	};

	services = {
		openssh.enable = true;
	};

  environment.systemPackages = with pkgs; [
    vim 
    wget
    git
  ];
}
