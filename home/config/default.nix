{ config, pkgs, ... }:

{

  home.file.".config/i3/config".source = ./i3/config;
  home.file.".config/polybar/config.ini".source = ./polybar/config.ini;
  home.file.".config/polybar/launch.sh".source = ./polybar/launch.sh;
  home.file.".config/picom/picom.conf".source = ./picom/picom.conf;
}
