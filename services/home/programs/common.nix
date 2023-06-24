{ pkgs, config, lib, fetchFromGitHub, ... }:
{
  home.packages = with pkgs; [
    alacritty
    neofetch
    nano
    htop
    git
    nitrogen
    firefox
    xfce.thunar
    xclip
    ncdu
    pavucontrol
    qjackctl
    pass
    cifs-utils
    remmina
    freerdp
    gvfs
    wget
    tree
    openrgb
  ];
  nixpkgs.overlays = [ 
    (final: prev: {
      openrgb = prev.openrgb.overrideAttrs (old: {
        src = prev.fetchFromGitHub {
          owner = "CalcProgrammer1";
          repo = "OpenRGB";
          rev = "4f30868a3b16ee36e00f2c31db6ec376b884f1be";
          hash = "";
        };
      });
    })
  ];

}
