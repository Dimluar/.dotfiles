{ pkgs, ... }: {
  home.packages = with pkgs; [
    man-pages
    man-pages-posix
    fastfetch
    gcc
    gnumake
    killall
    zathura
    telegram-desktop
    tree
  ];
}
