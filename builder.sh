export PATH="$coreutils/bin"
source $stdenv/setup
mkdir -p $out/bin
cp ${src} $out/bin/passbemenu
chmod +x $out/bin/passbemenu
wrapProgram $out/bin/passbemenu --prefix PATH : ${dmenu-wayland}/bin/:${bemenu}/bin ;
