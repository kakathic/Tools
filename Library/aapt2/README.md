# kakathic
if [ "$2" == 12 ];then
Taive "https://github.com/rendiix/termux-aapt/raw/main/prebuilt-binary-android-12%2B/$ARMT/$1" $HOME/bin/$1
[ -e $HOME/bin/$1 ] && echo > $HOME/ck/$1_$2
if [ "$2" == 11 ];then
Taive "https://github.com/rendiix/termux-aapt/raw/main/prebuilt-binary/$ARMT/$1" $HOME/bin/$1
else
Taive "https://github.com/kakathic/Tools/raw/Vip/Library/$1/$1-$ARCH" $HOME/bin/$1
[ -e $HOME/bin/$1 ] && echo > $HOME/ck/$1_$2
fi
