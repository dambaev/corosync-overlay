{ stdenv, pkgs, fetchzip, fetchpatch, fetchgit, fetchurl }:
stdenv.mkDerivation {
  name = "kronosnet";
  version = "1.20";

  src = fetchzip {
    url = "https://kronosnet.org/releases/kronosnet-1.20.tar.xz";
    sha256 = "017rxgmp42d1dvicrqdg436xd85r8jvf7n02axwgkvgyqli990zl";
  };
  buildInputs = with pkgs;
  [ autoconf
    automake
    libtool
    libqb
    pkg-config
    nss
    openssl
    zstd
    zlib
    lz4
    lzo
    lzma
    bzip2
    lksctp-tools
    doxygen
    libxml2
    libnl
#    gnum4
  ];
#  install = ''
#    mkdir -p $out
#    cp -r bin $out
#  '';
}
