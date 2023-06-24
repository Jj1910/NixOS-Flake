{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  themeConfig = ./tokyo-night.conf;
  name = "tokyo-night-sddm";
  src = fetchFromGitHub {
    owner = "rototrash";
    repo = "tokyo-night-sddm";
    rev = "320c8e74ade1e94f640708eee0b9a75a395697c6";
    sha256 = "sha256-JRVVzyefqR2L3UrEK2iWyhUKfPMUNUnfRZmwdz05wL0=";
  };
  installPhase = ''
    mkdir -p $out/share/sddm/themes/tokyo-night-sddm
    cp -r * $out/share/sddm/themes/tokyo-night-sddm
    cp ${themeConfig} $out/share/sddm/themes/tokyo-night-sddm/theme.conf
  '';
  
}
