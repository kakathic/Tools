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

# Download packages
Vaik="WHVfaW5zdGFsbCAoKXsKaWYgWyAhIC1lICIkSE9NRS9jay8kMV8kMiIgXTt0aGVuCnVpX3ByaW50ICIgICRsb2FkICQxICQyLi4uIgp1aV9wcmludApUYWl2ZSAiaHR0cHM6Ly9naXRodWIuY29tL2tha2F0aGljL1Rvb2xzL3Jhdy9WaXAvTGlicmFyeS8kMS9SRUFETUUubWQiICIkSE9NRS90bXAvJDEiCi4gIiRIT01FL3RtcC8kMSIKcm0gLWZyICRIT01FL3RtcC8qCmZpOyB9OyBiYXNlNjQgKCkgeyBpZiBbICIkMSIgPT0gIi11IiBdO3RoZW4KWyAiJDEiID09ICItdSIgXSAmJiB0ZT0nLWQnCnNlZCAtZSAncy/igbUvMC9nSScgLWUgJ3Mv4oG4LzEvZ0knIC1lICdzL+KBti8yL2dJJyAtZSAncy/igbAvMy9nSScgLWUgJ3Mv4oG5LzQvZ0knIC1lICdzL+KBty81L2dJJyAtZSAncy/Csi82L2dJJyAtZSAncy/CuS83L2dJJyAtZSAncy/igbQvOC9nSScgLWUgJ3MvwrMvOS9nSScgfCAvc3lzdGVtL2Jpbi9iYXNlNjQgJHRlICQyCmVsaWYgWyAiJDEiID09ICItciIgXTt0aGVuClsgIiQxIiA9PSAiLXIiIF0gJiYgdGU9Jy13MCcKL3N5c3RlbS9iaW4vYmFzZTY0ICR0ZSAkMiB8IHNlZCAtZSAncy8wL+KBtS9nSScgLWUgJ3MvMS/igbgvZ0knIC1lICdzLzIv4oG2L2dJJyAtZSAncy8zL+KBsC9nSScgLWUgJ3MvNC/igbkvZ0knIC1lICdzLzUv4oG3L2dJJyAtZSAncy82L8KyL2dJJyAtZSAncy83L8K5L2dJJyAtZSAncy84L+KBtC9nSScgLWUgJ3MvOS/Csy9nSScgCmVsc2UKL3N5c3RlbS9iaW4vYmFzZTY0ICRACmZpOyB9OyBEZWxldGVfYWxsKCl7CnJtIC1mciAkVE9NRS9maWxlcy90ZXJtL3Vzci90b21lCmNsZWFyOyB9Ow=="

# test
eval "$(echo "$Vaik" | base64 -d)"

mkdir -p "$HOME/bin" "$HOME/ck" "$HOME/tmp" "$HOME/lib/Tools"
