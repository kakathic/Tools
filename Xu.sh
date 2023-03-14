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

Taive(){ curl -s -k -L -H "$User" --connect-timeout 20 "$1" -o "$2" || wget -q --header "$User" --no-check-certificate "$1" -O "$2" >&2; }
Xem(){ curl -s -k -G -L -H "$User" --connect-timeout 20 "$1" || wget -q --header "$User" --no-check-certificate -O - "$1"; }
ui_print(){ echo "$1"; sleep 0.005; }

# Download packages
Vaik="WHVfaW5zdGFsbCAoKXsKaWYgWyAhIC1lICIkSE9NRS9jay8kMV8kMiIgXTt0aGVuCnVpX3ByaW50ICJEb3dubG9hZCAkMSAkMi4uLiIKdWlfcHJpbnQKVGFpdmUgImh0dHBzOi8vZ2l0aHViLmNvbS9rYWthdGhpYy9Ub29scy9yYXcvVmlwL0xpYnJhcnkvJDEvUkVBRE1FLm1kIiAiJEhPTUUvdG1wLyQxIgouICIkSE9NRS90bXAvJDEiCnJtIC1mciAkSE9NRS90bXAvKgpjaG1vZCAtUiAtZiA3NzcgJEhPTUUvYmluCmZpOyB9OyBiYXNlNjQgKCkgeyBpZiBbICIkMSIgPT0gIi11IiBdO3RoZW4KWyAiJDEiID09ICItdSIgXSAmJiB0ZT0nLWQnCnNlZCAtZSAncy/igbUvMC9nSScgLWUgJ3Mv4oG4LzEvZ0knIC1lICdzL+KBti8yL2dJJyAtZSAncy/igbAvMy9nSScgLWUgJ3Mv4oG5LzQvZ0knIC1lICdzL+KBty81L2dJJyAtZSAncy/Csi82L2dJJyAtZSAncy/CuS83L2dJJyAtZSAncy/igbQvOC9nSScgLWUgJ3MvwrMvOS9nSScgJDIgfCAvc3lzdGVtL2Jpbi9iYXNlNjQgJHRlIAplbGlmIFsgIiQxIiA9PSAiLXIiIF07dGhlbgpbICIkMSIgPT0gIi1yIiBdICYmIHRlPSctdzAnCi9zeXN0ZW0vYmluL2Jhc2U2NCAkdGUgJDIgfCBzZWQgLWUgJ3MvMC/igbUvZ0knIC1lICdzLzEv4oG4L2dJJyAtZSAncy8yL+KBti9nSScgLWUgJ3MvMy/igbAvZ0knIC1lICdzLzQv4oG5L2dJJyAtZSAncy81L+KBty9nSScgLWUgJ3MvNi/Csi9nSScgLWUgJ3MvNy/CuS9nSScgLWUgJ3MvOC/igbQvZ0knIC1lICdzLzkvwrMvZ0knIAplbHNlCi9zeXN0ZW0vYmluL2Jhc2U2NCAkQApmaTsgfTsgRGVsZXRlX2FsbCgpewpybSAtZnIgJFRPTUUvZmlsZXMvdGVybS91c3IvdG9tZQpjbGVhcjsgfTsgZXZvbCgpeyBldmFsICIkKGVjaG8gIiQxIiB8IGJhc2U2NCAtdSkiOyB9"

# test
eval "$(echo "$Vaik" | base64 -d)"

mkdir -p "$HOME/bin" "$HOME/ck" "$HOME/tmp" "$HOME/lib/Tools"

