{
  description = "Allows passmenu to operate with bemenu, rather than dmenu." ;

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (
      system: {
        defaultPackage =
          with import nixpkgs { inherit system; };
          stdenv.mkDerivation {
            name = "passmenu";
            src = ./passbemenu.sh;
            nativeBuildInputs = [ makeWrapper ];
            builder = ./builder.sh;
            inherit coreutils dmenu-wayland bemenu makeWrapper;
          };
      }
    );
}
