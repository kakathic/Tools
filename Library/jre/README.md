# kakathic

Xu_install busybox static
[ -e $HOME/bin/busybox ] || exit

Taive "https://github.com/kakathic/Tools/raw/Vip/Library/$1/$1-$ARCH.tar.xz" $HOME/tmp/$1

tar -xJf $HOME/tmp/$1 -C $HOME

[ -e $HOME/tmp/$1 ] && echo > $HOME/ck/$1_$2
