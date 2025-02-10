{
  inputs = { nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable"; };

  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {
      packages.${system}.theme = pkgs.runCommand "forest-theme" { } ''
        mkdir -p $out
        cp -r ${./.}/* $out
      '';
    };
}
