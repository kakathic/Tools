# kakathic
export TOME=/data/data/bin.mt.plus
export HOME=$TOME/tome
export TMPDIR=$HOME/tmp
export TERM=xterm-256color
export SHLVL=1
export LIBC=$HOME/lib:$TOME/files/term/usr/lib:$TOME/home/lib
export LD_LIBRARY_PATH=$HOME/lib:$TOME/files/term/usr/lib:$TOME/home/lib
export API=$(getprop ro.build.version.sdk)
export ABI=$(getprop ro.product.cpu.abi)
export PATH=$HOME/bin:$TOME/files/term/usr/bin:$TOME/home/bin:$TOME/files/term/usr/bin/applets:$PATH
export JAVA_HOME=$HOME

if [ "$ABI" = "x86" ]; then
export ARCH=x86
export ARMT=i686
elif [ "$ABI" = "arm64-v8a" ]; then
export ARCH=arm64
export ARMT=arm64
elif [ "$ABI" = "x86_64" ]; then
export ARCH=x64
export ARMT=x86-64
else
export ARMT=arm
export ARCH=arm
export ABI=armeabi-v7a
fi

if [ -e "$TOME/files/term/usr/etc/bash.bashrc" ] && [ ! -e "$HOME/term/ok" ];then
echo > "$HOME/term/ok"
echo ". $HOME/term/Xu.sh" > $TOME/files/term/usr/etc/bash.bashrc2
cat $TOME/files/term/usr/etc/bash.bashrc >> $TOME/files/term/usr/etc/bash.bashrc2
mv -f $TOME/files/term/usr/etc/bash.bashrc2 $TOME/files/term/usr/etc/bash.bashrc
fi

if [ -e "$TOME/home/.bashrc" ] && [ ! -e "$HOME/term/ok" ];then
echo > "$HOME/term/ok"
echo ". $HOME/term/Xu.sh" > $TOME/home/.bashrc2
cat $TOME/home/.bashrc >> $TOME/home/.bashrc2
mv -f $TOME/home/.bashrc2 $TOME/home/.bashrc
fi

mklist="bin
ck
tmp
lib/Tools"

for vah in $mklist; do
[ -e $vah ] || mkdir -p "$HOME/$vah"
done

unset vah
unset mklist

# Download packages
Xu_install(){
[ "$2" ] && pb="_$2"
if [ ! -e "$HOME/ck/$1$pb" ];then
echo -n "- Download $1...";
Taive "https://github.com/kakathic/Tools/raw/Vip/Library/$1/README.md" "$TMPDIR/$1.sh"
[ "$(grep -icm1 '#\ kakathic' $TMPDIR/$1.sh)" == 1 ] && chmod 777 "$TMPDIR/$1.sh" || (echo "File download error" >&2; exit)
cd $HOME
. "$TMPDIR/$1.sh"
chmod -R 777 $HOME
rm -fr $TMPDIR/*
fi
unset pb
}

Delete_all(){
rm -fr $TOME/files/term/usr/*
rm -fr $TOME
clear
}

# Internet
User="User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101 Firefox/102.0"
Taive(){
[ -e /system/bin/curl ] && curl -s -k -L -H "$User" --connect-timeout 20 "$1" -o "$2" || wget -q --header "$User" --no-check-certificate "$1" -O "$2" >&2
}
Xem(){
[ -e /system/bin/curl ] && curl -s -k -G -L -H "$User" --connect-timeout 20 "$1" || wget -q --header "$User" --no-check-certificate -O - "$1"
}
