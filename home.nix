{ config, pkgs, ... }:

{
  # User info
  home.username = "dimu";
  home.homeDirectory = "/home/dimu";

  # Packages
  home.packages = with pkgs; [
    neovim
  ];

  programs.git = {
    enable = true;
    settings = {
      user.name = "Dimluar";
      user.email = "148585902+Dimluar@users.noreply.github.com";
      core.editor = "nvim";
      init.defaultBranch = "main";
    };
  };

  # Dotfiles
  home.file = {
  };

  # Environment variables
  home.sessionVariables = {
    EDITOR = "nvim";
  };

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
