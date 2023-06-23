{ pkgs, ... }:

{

  home.packages = with pkgs; [
    alacritty
    neofetch
    nano
    htop
    git
  ];

}
