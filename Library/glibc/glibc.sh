Taive "https://github.com/kakathic/Tools/raw/Vip/Library/$1/$1-$ARCH.tar.xz" tmp/$1
unzip -qo tmp/$1 -d ./
[ -e tmp/$1 ] && echo > ck/$1$pb
rm -fr tmp/$1
