let build = { runCommandLocal, lib, makeWrapper, dmenu-wayland, bemenu }:
      runCommandLocal "passbemenu"
        {nativeBuildInputs = [ makeWrapper ]; }
        ''
      makeWrapper ${./passbemenu.sh} $out/bin/passmenu --prefix PATH : ${lib.makeBinPath [ dmenu-wayland bemenu ]}
      '';
in with (import <nixpkgs> {});
  build { inherit runCommandLocal lib makeWrapper dmenu-wayland bemenu; }
