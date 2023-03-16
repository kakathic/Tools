# kakathic
[ "$2" == 12 ] && skdhh='binary_for_android12_up' || skdhh='binary'
Taive "https://github.com/rendiix/termux-adb-fastboot/raw/master/$skdhh/$ABI/bin/$1" $HOME/bin/$1
[ -e $HOME/bin/$1 ] && echo > $HOME/ck/$1_$2
