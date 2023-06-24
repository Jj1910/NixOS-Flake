{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  name = "OpenRGB";
  src = fetchFromGitHub {
    owner = "CalcProgrammer1";
    repo = "OpenRGB";
    rev = "4f30868a3b16ee36e00f2c31db6ec376b884f1be";
    sha256 = "sha256-hRTw7Pl2r9aFVM4igUD4DdxOcFSpGtTx4Ga1VP3xOQo=";
  };
}
