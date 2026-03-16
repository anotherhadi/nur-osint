{pkgs ? import <nixpkgs> {}}: {
  toutatis = pkgs.python3Packages.callPackage ./pkgs/toutatis {};
  ignorant = pkgs.python3Packages.callPackage ./pkgs/ignorant {};
  github-recon = pkgs.callPackage ./pkgs/github-recon {};
}
