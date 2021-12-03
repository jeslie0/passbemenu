let build = { stdenv, coreutils, makeWrapper, dmenu-wayland, bemenu }:
      stdenv.mkDerivation {
        name = "passmenu";
        src = ./passbemenu.sh;
        nativeBuildInputs = [ makeWrapper ];
        builder = ./builder.sh;
        inherit coreutils dmenu-wayland bemenu makeWrapper;
      };
in with (import <nixpkgs> {});
  build { inherit stdenv coreutils makeWrapper dmenu-wayland bemenu; }
