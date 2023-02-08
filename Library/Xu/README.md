# kakathic

[ -e $HOME/bin/proot ] || ( echo "Install Xu_install proot"; exit; )
[ -e $HOME/bin/busybox ] || ( echo "Install Xu_install busybox"; exit; )

Taive "https://github.com/kakathic/Tools/raw/Vip/Library/$1/$1" $HOME/bin/$1
[ -e $HOME/bin/$1 ] && echo > $HOME/ck/$1
