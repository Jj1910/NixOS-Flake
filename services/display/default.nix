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
      sddm.theme = "tokyo-night-sddm";
      sddm.autoNumlock = true;
      defaultSession = "none+i3";
    };
  };

  environment.systemPackages = with pkgs; [
    (pkgs.callPackage ./sddm-themes/tokyo-night-sddm.nix {})
    libsForQt5.qt5.qtquickcontrols2
    libsForQt5.qt5.qtgraphicaleffects
    libsForQt5.qt5.qtsvg
  ];

}
