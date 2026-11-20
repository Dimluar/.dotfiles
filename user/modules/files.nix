{
  home.file = {
    ".config/hypr/hyprland.lua" = {
      enable = true;
      source = ./hypr/hyprland.lua;
    };
    ".config/waybar/" = {
      enable = true;
      source = ./waybar;
      recursive = true;
    };
  };
}
