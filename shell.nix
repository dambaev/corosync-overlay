let
#  nixpkgs = import <nixpkgs>;
  pkgs = import <nixpkgs> {
    config = {};
    overlays = [
      (import ./overlay.nix)
    ];
  };
  shell = pkgs.mkShell {
    buildInputs = pkgs.corosync.buildInputs ++ [ pkgs.valgrind ];
  };

in shell
