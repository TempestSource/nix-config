{ pkgs, ... }: {
    home.packages = with pkgs; [
      nmap
      wireshark
      remmina
      filezilla
    ];
}
