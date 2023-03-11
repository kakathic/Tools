# kakathic
Xu_install zip static
Xu_install aapt static
Xu_install aapt2 static
Xu_install busybox static
Xu_install jdk static
[ "$2" == "static" ] && 2="2.7.0"
Taive "https://github.com/iBotPeaches/Apktool/releases/download/v${2//_/}/$1_$2.jar" $HOME/lib/Tools/$1.jar
zip -qr $HOME/lib/Tools/$1.jar -d prebuilt/windows/* prebuilt/macosx/*
Taive "https://github.com/kakathic/Tools/raw/Vip/Library/apktool/apktool" $HOME/bin/apktool
mkdir -p $HOME/tmp/prebuilt/linux
echo 'exec $HOME/bin/aapt "$@"' > $HOME/tmp/prebuilt/linux/aapt
echo 'exec $HOME/bin/aapt2 "$@"' > $HOME/tmp/prebuilt/linux/aapt2
echo 'exec $HOME/bin/aapt "$@"' > $HOME/tmp/prebuilt/linux/aapt_64
echo 'exec $HOME/bin/aapt2 "$@"' > $HOME/tmp/prebuilt/linux/aapt2_64
cd $HOME/tmp
zip -qr $HOME/lib/Tools/$1.jar prebuilt/*/*
[ -e $HOME/lib/Tools/$1.jar ] && echo > $HOME/ck/$1_$2
