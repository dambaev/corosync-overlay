self: super: {
  corosync = self.callPackage ./derivation.nix {};
  kronosnet = self.callPackage ./kronosnet.nix {};
}
