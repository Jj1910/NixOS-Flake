{ config, pkgs, ... }:

{

  imports = [
    ./programs
  ];

  home.username = "justin";
  home.homeDirectory = "/home/justin";

  home.stateVersion = "23.05";

  programs.home-manager.enable = true;
}
