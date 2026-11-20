{ pkgs, ... }: {
  home.packages = with pkgs; [
    neovim
    fastfetch
  ];
}
