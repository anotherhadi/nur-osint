{pkgs ? import <nixpkgs> {}}: {
  toutatis = pkgs.python3Packages.callPackage ./pkgs/toutatis {};
  ignorant = pkgs.python3Packages.callPackage ./pkgs/ignorant {};
  user-scanner = pkgs.python3Packages.callPackage ./pkgs/user-scanner {};
  github-recon = pkgs.callPackage ./pkgs/github-recon {};
}
