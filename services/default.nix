{ config, pkgs, ... }:

{

  services = {
    spice-vdagentd.enable = true;
    qemuGuest.enable = true;

    #picom.enable = true;
    
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
    };
  };  
}

