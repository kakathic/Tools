# kakathic

Xu_install aapt static
Xu_install aapt2 static
[ "$2" != "static" ] && 2="_2.4.1"
Taive "https://github.com/kakathic/Tools/raw/Vip/Library/$1/$1$2.zip" $HOME/tmp/$1
unzip -o $HOME/tmp/$1 -d $HOME
[ -e $HOME/tmp/$1 ] && echo > $HOME/ck/$1_$2

