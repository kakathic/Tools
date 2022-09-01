# kakathic
Taive "https://github.com/kakathic/Tools/releases/download/library/$1-$ARCH.tar.xz" $HOME/tmp/$1
mkdir -p $HOME/Java
tar -xJf $HOME/tmp/$1 -C $HOME/Java
for vak in $HOME/Java/bin/*; do
ln -sf $vak $HOME/bin/${vak##*/}
done
[ -e $HOME/tmp/$1 ] && echo > $HOME/ck/$1$pb
rm -fr $HOME/tmp/$1

