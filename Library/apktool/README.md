# kakathic
Xu_install zip
Xu_install aapt
Xu_install aapt2
Taive "https://github.com/iBotPeaches/Apktool/releases/download/v${2//_/}/$1$pb.jar" $HOME/lib/Tools/$1.jar
Taive "https://github.com/kakathic/Tools/raw/Vip/Library/apktool/apktool" $HOME/bin/apktool
mkdir -p $HOME/tmp/prebuilt/linux
echo 'exec $HOME/bin/aapt "$@"' > $HOME/tmp/prebuilt/linux/aapt
echo 'exec $HOME/bin/aapt2 "$@"' > $HOME/tmp/prebuilt/linux/aapt2
echo 'exec $HOME/bin/aapt "$@"' > $HOME/tmp/prebuilt/linux/aapt_64
echo 'exec $HOME/bin/aapt2 "$@"' > $HOME/tmp/prebuilt/linux/aapt2_64
cd $HOME/tmp
zip -qr -9 $HOME/lib/Tools/$1.jar -d prebuilt/windows/* prebuilt/macosx/*
zip -qr -9 $HOME/lib/Tools/$1.jar prebuilt/*
[ -e $HOME/lib/Tools/$1.jar ] && echo > $HOME/ck/$1$pb
rm -fr $HOME/tmp
