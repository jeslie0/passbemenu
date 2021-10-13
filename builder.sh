export PATH="$coreutils/bin:$dmenu-wl/bin:/$bemenu/bin"
mkdir -p $out/bin
cp ${src} $out/bin/passmenu
chmod +x $out/bin/passmenu
