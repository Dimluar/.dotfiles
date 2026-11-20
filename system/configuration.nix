# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  # Display manager
  services.displayManager.ly.enable = true;

  # Define your hostname.
  networking.hostName = "morrowind";

  # Configure network connections interactively with nmcli or nmtui.
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Madrid";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound.
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
    jack.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  services.libinput.enable = true;

  # Bluetooth
  hardware.bluetooth = {
    enable = true;
    settings.General.Experimental = true;
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.dimu = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    shell = pkgs.zsh;
  };

  # Default programs
  programs.zsh.enable = true;
  programs.hyprland.enable = true;
  environment.systemPackages = with pkgs; [
    vim
    librewolf
    wget
    git
    brightnessctl
    waybar
    awww
    kitty
    rofi
  ];

  # Fonts
  fonts.packages = with pkgs; [
    nerd-fonts.caskaydia-cove
  ];

  # Firewall
  networking.firewall.enable = true;
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];

  # Updates
  system.autoUpgrade = {
    enable = true;
    flake = "/home/dimu/.dotfiles";
    flags = [
      "--print-build-logs"
      "--commit-lock-file"
    ];
    dates = "02:00";
    randomizedDelaySec = "45min";
  };

  # Garbage collection
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };

  # Activate flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # DO NOT CHANGE!!!
  system.stateVersion = "26.05";

}

