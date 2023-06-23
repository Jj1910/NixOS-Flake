{ config, pkgs, ... }:

{
  imports = [
    ./i3
  ];

  services.xserver = {
    enable = true;
    autorun = true;
    layout = "us";
    #videoDrivers = ["nvidia"];

    desktopManager = {
      xterm.enable = false;
    };
    
    excludePackages = [
      pkgs.xterm
    ];

    displayManager = {
      sddm.enable = true;
      defaultSession = "none+i3";
    };
  };

}
