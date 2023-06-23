{ pkgs, ... }:

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
  ];

}
