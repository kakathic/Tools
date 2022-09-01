# kakathic
if [ "$2" ];then
Taive "https://bitbucket.org/JesusFreke/smali/downloads/$1-$2.jar" $HOME/lib/Tools/$1.jar
else
Taive "https://bitbucket.org/JesusFreke/smali/downloads/smali-2.5.2.jar" $HOME/lib/Tools/$1.jar
fi
Taive "https://github.com/kakathic/Tools/raw/Vip/Library/$1/$1" $HOME/bin/$1
[ -e $HOME/lib/Tools/$1.jar ] && echo > $HOME/ck/$1$pb
