{
  programs.kitty = {
    enable = true;
    themeFile = "Catppuccin-Mocha";
    font = {
      name = "CaskaydiaCove Nerd Font Mono";
      size = 15;
    };
    settings = {
      enable_audio_bell = false;
      confirm_os_window_close = 0;
      background_opacity = 0.8;
      window_padding_width = 10;
      cursor_shape = "block";
      shell_integration = "no-cursor";
    };
  };
}
