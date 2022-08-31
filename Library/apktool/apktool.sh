# kakathic
Xu_install zip
Taive "https://github.com/iBotPeaches/Apktool/releases/download/v${2//_/}/$1$pb.jar" lib/Tools/$1.jar
Taive "https://github.com/kakathic/Tools/raw/Vip/Library/apktool/apktool" bin/apktool
mkdir -p tmp/prebuilt/linux
echo > tmp/prebuilt/linux/aapt
echo > tmp/prebuilt/linux/aapt2
echo > tmp/prebuilt/linux/aapt_64
echo > tmp/prebuilt/linux/aapt2_64
cd tmp
zip -qr -9 lib/Tools/$1.jar -d prebuilt/windows/* prebuilt/macosx/*
zip -qr -9 lib/Tools/$1.jar prebuilt/*
[ -e lib/Tools/$1.jar ] && echo > ck/$1$pb
rm -fr tmp
