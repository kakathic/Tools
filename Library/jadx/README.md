# kakathic
if [ "$2" ];then
Taive "https://github.com/skylot/jadx/releases/download/v$2/jadx-$2.zip" $HOME/tmp/$1
else
Taive "https://github.com/skylot/jadx/releases/download/v1.4.4/jadx-1.4.4.zip" $HOME/tmp/$1
fi
Taive "https://github.com/kakathic/Tools/raw/Vip/Library/jadx/dx" $HOME/bin/dx
Taive "https://github.com/kakathic/Tools/raw/Vip/Library/jadx/r8" $HOME/bin/r8
mkdir -p $HOME/lib/Tools/jadx
unzip -qo $HOME/tmp/$1 'lib/*' 'bin/jadx' -d $HOME/lib/Tools/jadx
ln -sf $HOME/lib/Tools/jadx/bin/jadx $HOME/bin/jadx
[ -e $HOME/tmp/$1 ] && echo > $HOME/ck/$1$pb
