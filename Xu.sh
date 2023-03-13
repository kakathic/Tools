# kakathic

export TOME=/data/data/bin.mt.plus
export HOME=$TOME/tome
export TMPDIR=$HOME/tmp
export LIBC=$HOME/lib:$TOME/files/term/usr/lib:$TOME/home/lib
export LD_LIBRARY_PATH=$HOME/lib:$TOME/files/term/usr/lib:$TOME/home/lib
export API=$(getprop ro.build.version.sdk)
export ABI=$(getprop ro.product.cpu.abi)
export PATH=$HOME/bin:$TOME/files/term/usr/bin:$TOME/home/bin:$TOME/files/term/usr/bin/applets:$PATH
export JAVA_HOME=$HOME

# aarch
if [ "$ABI" = "x86" ]; then
export ARCH=x86
export ARMT=i686
export ARKM=x86-i686
elif [ "$ABI" = "arm64-v8a" ]; then
export ARCH=arm64
export ARMT=arm64
export ARKM=armv8-aarch64
elif [ "$ABI" = "x86_64" ]; then
export ARCH=x64
export ARMT=x86-64
export ARKM=x86-i686
else
export ARMT=arm
export ARCH=arm
export ABI=armeabi-v7a
export ARKM=armv7l-eabihf
fi

if [ -e "$TOME/files/term/usr/etc/bash.bashrc" ] && [ ! -e "$HOME/term/ok" ];then
echo > "$HOME/term/ok"
echo "[ -e $HOME/term/Xu.sh ] && . $HOME/term/Xu.sh" > $TOME/files/term/usr/etc/bash.bashrc2
cat $TOME/files/term/usr/etc/bash.bashrc >> $TOME/files/term/usr/etc/bash.bashrc2
mv -f $TOME/files/term/usr/etc/bash.bashrc2 $TOME/files/term/usr/etc/bash.bashrc
fi

if [ -e "$TOME/home/.bashrc" ] && [ ! -e "$HOME/term/ok" ];then
echo > "$HOME/term/ok"
echo "[ -e $HOME/term/Xu.sh ] && . $HOME/term/Xu.sh" > $TOME/home/.bashrc2
cat $TOME/home/.bashrc >> $TOME/home/.bashrc2
mv -f $TOME/home/.bashrc2 $TOME/home/.bashrc
fi

Taive(){ curl -s -k -L -H "$User" --connect-timeout 20 "$1" -o "$2" || wget -q --header "$User" --no-check-certificate "$1" -O "$2" >&2; }
Xem(){ curl -s -k -G -L -H "$User" --connect-timeout 20 "$1" || wget -q --header "$User" --no-check-certificate -O - "$1"; }
ui_print(){ echo "$1"; sleep 0.005; }

# Download packages
Vaik="WHVfaW5zdGFsbCAoKXsKaWYgWyAhIC1lICIkSE9NRS9jay8kMV8kMiIgXTt0aGVuCnVpX3ByaW50ICIgICRsb2FkICQxICQyLi4uIgp1aV9wcmludApUYWl2ZSAiaHR0cHM6Ly9naXRodWIuY29tL2tha2F0aGljL1Rvb2xzL3Jhdy9WaXAvTGlicmFyeS8kMS9SRUFETUUubWQiICIkSE9NRS90bXAvJDEiCi4gIiRIT01FL3RtcC8kMSIKcm0gLWZyICRIT01FL3RtcC8qCmZpOyB9OyBiYXNlNjQgKCkgeyBpZiBbICIkMSIgPT0gIi11IiBdO3RoZW4KWyAiJDEiID09ICItdSIgXSAmJiB0ZT0nLWQnCnNlZCAtZSAncy/igbUvMC9nSScgLWUgJ3Mv4oG4LzEvZ0knIC1lICdzL+KBti8yL2dJJyAtZSAncy/igbAvMy9nSScgLWUgJ3Mv4oG5LzQvZ0knIC1lICdzL+KBty81L2dJJyAtZSAncy/Csi82L2dJJyAtZSAncy/CuS83L2dJJyAtZSAncy/igbQvOC9nSScgLWUgJ3MvwrMvOS9nSScgJDIgfCAvc3lzdGVtL2Jpbi9iYXNlNjQgJHRlIAplbGlmIFsgIiQxIiA9PSAiLXIiIF07dGhlbgpbICIkMSIgPT0gIi1yIiBdICYmIHRlPSctdzAnCi9zeXN0ZW0vYmluL2Jhc2U2NCAkdGUgJDIgfCBzZWQgLWUgJ3MvMC/igbUvZ0knIC1lICdzLzEv4oG4L2dJJyAtZSAncy8yL+KBti9nSScgLWUgJ3MvMy/igbAvZ0knIC1lICdzLzQv4oG5L2dJJyAtZSAncy81L+KBty9nSScgLWUgJ3MvNi/Csi9nSScgLWUgJ3MvNy/CuS9nSScgLWUgJ3MvOC/igbQvZ0knIC1lICdzLzkvwrMvZ0knIAplbHNlCi9zeXN0ZW0vYmluL2Jhc2U2NCAkQApmaTsgfTsgRGVsZXRlX2FsbCgpewpybSAtZnIgJFRPTUUvZmlsZXMvdGVybS91c3IvdG9tZQpjbGVhcjsgfTs="

# test
eval "$(echo "$Vaik" | base64 -d)"

mkdir -p "$HOME/bin" "$HOME/ck" "$HOME/tmp" "$HOME/lib/Tools"
chmod -R -f 777 $HOME/bin
