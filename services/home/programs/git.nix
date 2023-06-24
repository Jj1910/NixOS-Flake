{ pkgs, ... }:

{
  
  home.packages = [pkgs.gh];

  programs.git = {
    enable = true;
    userName = "Jj1910";
    userEmail = "justinschoenfeld1003@gmail.com";
  };

}
