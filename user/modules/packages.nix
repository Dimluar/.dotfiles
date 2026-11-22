{ pkgs, ... }: {
  home.packages = with pkgs; [
    fastfetch
    gcc
    gnumake
    killall
    zathura
    telegram-desktop
    tree
  ];
}
