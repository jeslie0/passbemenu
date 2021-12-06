{
  description = "Allows passmenu to operate with bemenu, rather than dmenu." ;

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }: {

    defaultPackage.x86_64-linux =
      with import nixpkgs { system = "x86_64-linux"; };
      stdenv.mkDerivation {
        name = "passmenu";
        src = ./passbemenu.sh;
        nativeBuildInputs = [ makeWrapper ];
        builder = ./builder.sh;
        inherit coreutils dmenu-wayland bemenu makeWrapper;
      };

  };
}
