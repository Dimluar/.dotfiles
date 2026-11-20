{
  home.file = {
    ".config/hypr/" = {
      enable = true;
      source = ./hypr;
      recursive = true;
      force = true;
    };
    ".config/waybar/" = {
      enable = true;
      source = ./waybar;
      recursive = true;
    };
    ".config/rofi/" = {
      enable = true;
      source = ./rofi;
      recursive = true;
    };
  };
}
