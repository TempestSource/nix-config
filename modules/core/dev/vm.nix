{ userName, ... }: {
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = ["${userName}"];

  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;
}
