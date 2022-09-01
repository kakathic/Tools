# kakathic
if [ "$2" ];then
Taive "https://github.com/kakathic/Tools/raw/Vip/Library/$1/$1-$ARCH" $HOME/bin/$1
[ -e $HOME/bin/$1 ] && echo > $HOME/ck/$1$pb
else
Taive "https://github.com/rendiix/termux-zipalign/raw/main/prebuilt-binary/$ABI/$1" $HOME/bin/$1
[ -e $HOME/bin/$1 ] && echo > $HOME/ck/$1$pb
fi
