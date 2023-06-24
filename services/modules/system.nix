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
  
  boot.loader.grub.device = "/dev/sda"; # or "nodev" for efi only

  /*
  time.hardwareClockInLocalTime = true;
  boot.loader = {
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/EFI";
    };
    grub = {
      devices = ["nodev"];
      efiSupport = true;
      enable = true;
      extraEntries = ''
        menuentry "Windows" {
          insmod part_gpt
          insmod fat
          insmod search_fs_uuid
          insmod chain
          search --fs-uuid --set=root $UUID
          chainloader /EFI/Microsoft/Boot/bootmgfw.efi
        }
      '';
    };
  };

  hardware = {
    opengl.enable = true;
    nvidia.modesetting.enable = true;
    nvidia.package = config.boot.kernelPackages.nvidiaPackages.latest;
  };
  */
  networking.hostName = "nixos"; # Define your hostname.
  networking.dhcpcd.enable = true;

  fonts.fonts = with pkgs; [
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];

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
    git
  ];

  system.stateVersion = "23.05"; # Did you read the comment?

}

