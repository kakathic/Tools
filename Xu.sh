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
Vaik="WHVfaW5zdGFsbCAoKXsKaWYgWyAhIC1lICIkSE9NRS9jay8kMV8kMiIgXTt0aGVuCnVpX3ByaW50ICIgICRsb2FkICQxICQyLi4uIgp1aV9wcmludApUYWl2ZSAiaHR0cHM6Ly9naXRodWIuY29tL2tha2F0aGljL1Rvb2xzL3Jhdy9WaXAvTGlicmFyeS8kMS9SRUFETUUubWQiICIkSE9NRS90bXAvJDEiCi4gIiRIT01FL3RtcC8kMSIKZmk7IH07
IGJhc2U2NCAoKSB7CmlmIFsgIiQxIiA9PSAiLXUiIF07dGhlbgpbICIkMSIgPT0gIi11IiBdICYmIHRlPSctZCcKc2VkIC1lICdzL+KBtS8wL2dJJyAtZSAncy/igbgvMS9nSScgLWUgJ3Mv4oG2LzIvZ0knIC1lICdzL+KBsC8zL2dJJyAtZSAncy/igbkvNC9nSScgLWUgJ3Mv4oG3LzUvZ0knIC1lICdzL8KyLzYvZ0knIC1lICdzL8K5LzcvZ0knIC1lICdzL+KBtC84L2dJJyAtZSAncy/Csy85L2dJJyB8IC9zeXN0ZW0vYmluL2Jhc2U2NCAkdGUgJDIKZWxpZiBbICIkMSIgPT0gIi1yIiBdO3RoZW4KWyAiJDEiID09ICItciIgXSAmJiB0ZT0nLXcwJwovc3lzdGVtL2Jpbi9iYXNlNjQgJHRlICQyIHwgc2VkIC1lICdzLzAv4oG1L2dJJyAtZSAncy8xL+KBuC9nSScgLWUgJ3MvMi/igbYvZ0knIC1lICdzLzMv4oGwL2dJJyAtZSAncy80L+KBuS9nSScgLWUgJ3MvNS/igbcvZ0knIC1lICdzLzYvwrIvZ0knIC1lICdzLzcvwrkvZ0knIC1lICdzLzgv4oG0L2dJJyAtZSAncy85L8KzL2dJJyAKZWxzZQovc3lzdGVtL2Jpbi9iYXNlNjQgJEAKZmk7IH07
IERlbGV0ZV9hbGwoKXsKcm0gLWZyICRUT01FL2ZpbGVzL3Rlcm0vdXNyL3RvbWUKY2xlYXI7IH07
"

# test
eval "$(echo "$Vaik" | base64 -d)"

mkdir -p "$HOME/bin" "$HOME/ck" "$HOME/tmp" "$HOME/log" "$HOME/lib/Tools"
