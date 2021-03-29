{ stdenv, pkgs, fetchzip, fetchpatch, fetchgit, fetchurl }:
stdenv.mkDerivation {
  name = "kronosnet";

  src = fetchzip {
    url = "https://kronosnet.org/releases/kronosnet-1.20.tar.xz";
    sha256 = "1qgdylw54jaciwr4hnzlc3pavbmxcz3vhhw65w0289xyy4ixcxy7";
  };
  buildInputs = with pkgs;
  [ autoconf
    automake
    libtool
    pkg-config
#    gnum4
  ];
#  install = ''
#    mkdir -p $out
#    cp -r bin $out
#  '';
}
