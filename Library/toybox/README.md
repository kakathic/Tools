# kakathic
if [ "$ARCH" == 'arm64' ];then
Taive "http://landley.net/toybox/bin/toybox-aarch64" $HOME/bin/$1
elif [ "$ARCH" == 'x64' ];then
Taive "http://landley.net/toybox/bin/toybox-x86_64" $HOME/bin/$1
elif [ "$ARCH" == 'x86' ];then
Taive "http://landley.net/toybox/bin/toybox-i686" $HOME/bin/$1
else
Taive "http://landley.net/toybox/bin/toybox-armv7l" $HOME/bin/$1
fi
[ -e $HOME/bin/$1 ] && echo > $HOME/ck/$1_$2


