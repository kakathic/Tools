# kakathic

[ "$2" == "static" ] && 2="1.4.6"
Taive "https://github.com/skylot/jadx/releases/download/v$2/jadx-$2.zip" $HOME/tmp/$1
Taive "https://github.com/kakathic/Tools/raw/Vip/Library/jadx/dx" $HOME/bin/dx
Taive "https://github.com/kakathic/Tools/raw/Vip/Library/jadx/r8" $HOME/bin/r8
mkdir -p $HOME/lib/Tools/jadx
unzip -qo $HOME/tmp/$1 'lib/*' 'bin/jadx' -d $HOME/lib/Tools/jadx
ln -sf $HOME/lib/Tools/jadx/bin/jadx $HOME/bin/jadx
[ -e $HOME/tmp/$1 ] && echo > $HOME/ck/$1_$2
sed -i 's|app_path=$0|app_path=$0; mkdir -p ./tmp/framework/app/system/input/rt|' $HOME/lib/Tools/jadx/bin/jadx
