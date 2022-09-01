# kakathic
if [ "$2" ];then
Taive "https://github.com/skylot/jadx/releases/download/v$2/jadx-$2.zip" $HOME/lib/Tools/$1
else
Taive "https://github.com/skylot/jadx/releases/download/v1.4.4/jadx-1.4.4.zip" $HOME/lib/Tools/$1
fi
Taive "https://github.com/kakathic/Tools/raw/Vip/Library/jadx/jar2dex" $HOME/bin/jar2dex
mkdir -p $HOME/lib/Tools/jadx
unzip -qo $HOME/lib/Tools/$1 'lib/*' 'bin/jadx' -d $HOME/lib/Tools/jadx
ln -sf $HOME/lib/Tools/jadx/bin/jadx $HOME/bin/jadx
[ -e $HOME/lib/Tools/$1 ] && echo > $HOME/ck/$1$pb
