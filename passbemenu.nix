with (import <nixpkgs> {});
stdenv.mkDerivation {
  name = "passbemenu";
  builder = "${bash}/bin/bash";
  args = [ ./builder.sh ];
  inherit coreutils;
  src = ./passbemenu.sh;
  system = builtins.currentSystem;
}
