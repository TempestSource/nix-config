{ pkgs, ... }: {
	services = {
		desktopManager.plasma6.enable = true;

		displayManager = {
          sddm = {
            enable = true;
            wayland.enable = true;
            theme = "catppuccin-mocha-mauve";
          };
		};
	};

  environment.systemPackages = with pkgs; [
      (catppuccin-sddm.override {
        flavor = "mocha";
        accent = "mauve";
      })
  ];
}
