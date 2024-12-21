{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "commands-nix";

  buildInputs = [
    pkgs.hugo
    pkgs.nodePackages.postcss-cli
  ];
}
