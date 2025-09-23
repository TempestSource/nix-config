{ ... }: {
	services = {
		xserver = {
			enable = true;
			desktopManager.cinnamon.enable = true;
		};

		displayManager = {
			gdm.enable = true;
		};
	};
}
