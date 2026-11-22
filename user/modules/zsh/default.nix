{ config, ... }: {
  programs.zsh = {
    enable = true;
    defaultKeymap = "emacs";
    history = {
      path = "${config.home.homeDirectory}/.zsh_history";
      save = 1000;
      size = 1000;
    };

    initContent = ''
      function zle-keymap-select {
        echo -ne '\e[1 q'
      }

      function zle-line-init {
        echo -ne '\e[1 q'
      }

      zle -N zle-keymap-select
      zle -N zle-line-init
    '';

    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      hms = "home-manager switch --flake ~/.dotfiles";
      nrs = "sudo nixos-rebuild switch --flake ~/.dotfiles";
    };
  };

  programs.zsh.oh-my-zsh = {
    enable = true;
    theme = "alanpeabody";
    plugins = [ "git" ];
  };
}
