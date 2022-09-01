# kakathic
Taive "https://github.com/kakathic/Tools/raw/Vip/Library/$1/ArscMerge.zip" $HOME/tmp/$1
unzip -o $HOME/tmp/$1 -d $HOME/lib/Tools
ln -sf $HOME/lib/Tools/ArscMerge/$1 $HOME/bin/$1
[ -e $HOME/tmp/$1 ] && echo > $HOME/ck/$1$pb
