{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
  };

  outputs = { self, nixpkgs }:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
    devShell = pkgs.gcc12Stdenv.mkDerivation {
      name = "aoc";
      nativeBuildInputs = with pkgs; [
        j
      ];
    };
  in {
    devShells.${system}.default = devShell;
  };
}
