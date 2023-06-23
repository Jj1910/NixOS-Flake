# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running `nixos-help`).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware.nix
    ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  
  boot.loader.grub.device = "/dev/vda"; # or "nodev" for efi only

  networking.hostName = "nixos"; # Define your hostname.
  networking.dhcpcd.enable = true;

  time.timeZone = "America/New_York";

  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
  #   keyMap = "us";
    useXkbConfig = true; # use xkbOptions in tty.
  };

  users.users.justin = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    packages = with pkgs; [
    ];
  };

  nix.settings.experimental-features = ["nix-command" "flakes" ];

  environment.systemPackages = with pkgs; [
    vim
    #wget
    git
  ];

  services.spice-vdagentd.enable = true;
  services.qemuGuest.enable = true;

  system.stateVersion = "23.05"; # Did you read the comment?

}

