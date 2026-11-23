{ pkgs, ... }: {
  gtk = {
    enable = true;
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.catppuccin-papirus-folders.override {
        flavor = "mocha";
        accent = "mauve";
      };
    };
    cursorTheme = {
      name = "Catppuccin Mocha Mauve";
      size = 24;
      package = pkgs.catppuccin-cursors.mochaMauve;
    };
  };
}
