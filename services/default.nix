{ config, pkgs, ... }:

{
  services.spice-vdagentd.enable = true;
  services.qemuGuest.enable = true;
}

