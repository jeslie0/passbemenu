export PATH="$coreutils/bin"
source $stdenv/setup
mkdir -p $out/bin
cp ${src} $out/bin/passmenu
chmod +x $out/bin/passmenu
wrapProgram $out/bin/passmenu --prefix PATH : ${dmenu-wayland}/bin/:${bemenu}/bin ;
