{ config, ... }: {
    programs.zsh = {
        enable = true;
        defaultKeymap = "emacs";
        history = {
            path = "${config.home.homeDirectory}/.zsh_history";
            save = 1000;
            size = 1000;
        };

        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;

        shellAliases = {
            vi = "nvim";
            hms = "home-manager switch --flake ~/.dotfiles";
            nrs = "sudo nixos-rebuild switch --flake ~/.dotfiles";
        };
    };

    programs.zsh.oh-my-zsh = {
        enable = true;
        theme = "mh";
        plugins = [ "git" ];
    };
}
