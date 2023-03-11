# kakathic

[ "$2" == "static" ] && 2="1.1.7"
Taive "https://github.com/REAndroid/APKEditor/releases/download/V$2/APKEditor-$2.jar" $HOME/lib/Tools/$1.jar
Taive "https://github.com/kakathic/Tools/raw/Vip/Library/$1/$1" $HOME/bin/$1
[ -e $HOME/bin/$1 ] && echo > $HOME/ck/$1_$2
