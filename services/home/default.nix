{ config, pkgs, ... }:

{

  imports = [
    ./programs
    ./config
  ];

  home.username = "justin";
  home.homeDirectory = "/home/justin";

  home.stateVersion = "23.05";

  programs.home-manager.enable = true;
}
