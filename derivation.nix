{ stdenv, pkgs, fetchzip, fetchpatch, fetchgit, fetchurl }:
stdenv.mkDerivation {
  name = "corosync";
  version = "3.1.0";

  src = fetchzip {
    url = "https://github.com/corosync/corosync/archive/refs/tags/v3.1.0.tar.gz";
    sha256 = "1qgdylw54jaciwr4hnzlc3pavbmxcz3vhhw65w0289xyy4ixcxy3";
  };
  preConfigure = "./autogen.sh";
  buildInputs = with pkgs;
  [ autoconf
    automake
    libtool
    libqb
    pkg-config
    kronosnet
#    gnum4
  ];
#  install = ''
#    mkdir -p $out
#    cp -r bin $out
#  '';
}
