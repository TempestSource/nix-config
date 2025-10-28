{ pkgs, ... }: {
  home.file.".p10k.zsh".source = ./p10k.zsh;

  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
    ];

    initContent = ''
      source ~/.p10k.zsh
    '';

    shellAliases = {
      # spotify
      sp = "spotify_player";
      spd = "spotify_player -d";
      spt = "spotify_player playback play-pause";

      # nix
      nixr = "sudo nixos-rebuild switch";

      # eza
      ls = "eza --icons  --group-directories-first -1";
      la = "eza --icons  -a --group-directories-first -1";
      ll = "eza --icons  -a --group-directories-first -1 --no-user --long";
      tree = "eza --icons --tree --group-directories-first";

      # Programs
      v = "vim";
      vi = "vim";
      cat = "bat";
      p3 = "python3";

      # Git
      gs = "git status";
      ga = "git add";
      gr = "git remove";
      gc = "git commit -m";
      gp = "git push";

    };
  };
}
