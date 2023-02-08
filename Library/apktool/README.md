# kakathic

[ -e $HOME/bin/zip ] || ( echo "Install Xu_install zip"; exit; )
[ -e $HOME/bin/aapt ] || ( echo "Install Xu_install aapt"; exit; )
[ -e $HOME/bin/aapt2 ] || ( echo "Install Xu_install aapt2"; exit; )
[ -e $HOME/bin/jdk ] || ( echo "Install Xu_install jdk"; exit; )
[ -e $HOME/bin/busybox ] || ( echo "Install Xu_install busybox"; exit; )

if [ "$2" ];then
Taive "https://github.com/iBotPeaches/Apktool/releases/download/v${2//_/}/$1$pb.jar" $HOME/lib/Tools/$1.jar
zip -qr $HOME/lib/Tools/$1.jar -d prebuilt/windows/* prebuilt/macosx/*
else
Taive "https://github.com/kakathic/Tools/raw/Vip/Library/apktool/apktool-2.6.2.jar" $HOME/lib/Tools/$1.jar
fi

Taive "https://github.com/kakathic/Tools/raw/Vip/Library/apktool/apktool" $HOME/bin/apktool

mkdir -p $HOME/tmp/prebuilt/linux
echo 'exec $HOME/bin/aapt "$@"' > $HOME/tmp/prebuilt/linux/aapt
echo 'exec $HOME/bin/aapt2 "$@"' > $HOME/tmp/prebuilt/linux/aapt2
echo 'exec $HOME/bin/aapt "$@"' > $HOME/tmp/prebuilt/linux/aapt_64
echo 'exec $HOME/bin/aapt2 "$@"' > $HOME/tmp/prebuilt/linux/aapt2_64

cd $HOME/tmp
zip -qr $HOME/lib/Tools/$1.jar prebuilt/*/*
[ -e $HOME/lib/Tools/$1.jar ] && echo > $HOME/ck/$1$pb
