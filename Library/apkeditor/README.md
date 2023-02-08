# kakathic
[ $pb ] && vshh="$2" || vshh='1.1.5'
Taive "https://github.com/REAndroid/APKEditor/releases/download/V$vshh/APKEditor-$vshh.jar" $HOME/lib/Tools/$1.jar
Taive "https://github.com/kakathic/Tools/raw/Vip/Library/$1/$1" $HOME/bin/$1
[ -e $HOME/bin/$1 ] && echo > $HOME/ck/$1$pb
