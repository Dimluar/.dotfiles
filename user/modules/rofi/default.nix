{
  programs.rofi.enable = true;

  home.file.".config/rofi/" = {
    enable = true;
    source = ./rofi;
    recursive = true;
  };
}
