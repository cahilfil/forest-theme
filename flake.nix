{
  inputs = { nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable"; };

  outputs = { self }:
    let system = "x86_64-linux";
    in { packages.${system}.theme = builtins.toString ./.; };
}

