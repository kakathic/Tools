# kakathic
if [ "$2" ];then
Taive "https://github.com/ThexXTURBOXx/dex2jar/releases/download/v$2/dex-tools-2.1-SNAPSHOT.zip" $HOME/lib/Tools/$1
else
Taive "https://github.com/ThexXTURBOXx/dex2jar/releases/download/v53/dex-tools-2.1-SNAPSHOT.zip" $HOME/lib/Tools/$1
fi
Taive "https://github.com/kakathic/Tools/raw/Vip/Library/jadx/d8" $HOME/bin/d8

unzip -qo $HOME/lib/Tools/$1 -d $HOME/lib/Tools
for vak in $HOME/lib/Tools/dex-tools-2.1-SNAPSHOT/*.sh; do
ln -sf $vak $HOME/bin/${vak##*/}
done
[ -e $HOME/lib/Tools/$1 ] && echo > $HOME/ck/$1$pb

