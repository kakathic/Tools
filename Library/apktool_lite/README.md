# kakathic

[ -e $HOME/bin/aapt ] || ( echo "Install Xu_install aapt"; exit; )
[ -e $HOME/bin/aapt2 ] || ( echo "Install Xu_install aapt2"; exit; )


Taive "https://github.com/kakathic/Tools/raw/Vip/Library/$1/$1$pb.zip" $HOME/tmp/$1
unzip -o $HOME/tmp/$1 -d $HOME
[ -e $HOME/tmp/$1 ] && echo > $HOME/ck/$1$pb

