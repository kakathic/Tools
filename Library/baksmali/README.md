# kakathic
[ "$2" == "static" ] && 2="2.5.2"
Taive "https://bitbucket.org/JesusFreke/smali/downloads/$1-$2.jar" $HOME/lib/Tools/$1.jar
Taive "https://github.com/kakathic/Tools/raw/Vip/Library/$1/$1" $HOME/bin/$1
[ -e $HOME/lib/Tools/$1.jar ] && echo > $HOME/ck/$1_$2
