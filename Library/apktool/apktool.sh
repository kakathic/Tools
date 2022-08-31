# kakathic
Xu_install zip

Taive "https://github.com/iBotPeaches/Apktool/releases/download/v${2//_/}/$1$pb.jar" "/data/tools/lib/Tools/$1.jar"
Taive "https://github.com/kakathic/Tools/raw/Vip/Library/apktool/apktool" "/data/tools/bin/apktool"

mkdir -p $TMPDIR/prebuilt/linux
echo > $TMPDIR/prebuilt/linux/aapt
echo > $TMPDIR/prebuilt/linux/aapt2
echo > $TMPDIR/prebuilt/linux/aapt_64
echo > $TMPDIR/prebuilt/linux/aapt2_64

cd $TMPDIR
zip -qr -9 "/data/tools/lib/Tools/$1.jar" -d prebuilt/windows/* prebuilt/macosx/*
zip -qr -9 "/data/tools/lib/Tools/$1.jar" prebuilt/*
