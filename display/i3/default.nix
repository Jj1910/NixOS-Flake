{ pkgs, ... }:

{

  nixpkgs.config.packageOverrides = pkgs: {
    polybar = pkgs.polybar.override {
      pulseSupport = true;
    };
  };

  services.xserver.windowManager.i3 = {
    enable = true;
    extraPackages = with pkgs; [
      rofi
      polybar
      picom
    ];
  };

}
