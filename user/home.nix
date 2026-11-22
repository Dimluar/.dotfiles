{ config, pkgs, ... }: {
  # User info
  home.username = "dimu";
  home.homeDirectory = "/home/dimu";

  # Modules
  imports = [ ./modules ];

  # Automatic upgrades
  services.home-manager.autoUpgrade = {
    enable = true;
    useFlake = true;
    flakeDir = "/home/dimu/.dotfiles";
    frequency = "3:00";
    preSwitchCommands = [ "nix flake update" ];
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # DO NOT CHANGE!!!
  home.stateVersion = "26.05";
}
