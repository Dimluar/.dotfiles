{ pkgs, lib, ... }: {
    home.packages = with pkgs; [
        lazygit
        ripgrep
        tree-sitter
        lua-language-server
    ];

    programs.neovim = {
        enable        = true;
        viAlias       = true;
        defaultEditor = true;
        withPython3   = true;

        initLua = lib.mkMerge [
            ""
            "require(\"options\")"
            "require(\"autocmd\")"
            "require(\"keymaps\")"
            "require(\"plugins\")"
            "require(\"commands\")"
            ""
	    ];
    };

    home.file.".config/nvim/lua/" = {
        enable = true;
        source = ./lua;
        recursive = true;
    };
}
