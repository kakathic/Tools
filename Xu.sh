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

User="User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101 Firefox/102.0"
Taive(){ curl -s -k -L -H "$User" --connect-timeout 20 "$1" -o "$2" || wget -q --header "$User" --no-check-certificate "$1" -O "$2" >&2; }
Xem(){ curl -s -k -G -L -H "$User" --connect-timeout 20 "$1" || wget -q --header "$User" --no-check-certificate -O - "$1"; }
ui_print(){ echo "$1"; sleep 0.005; }

# Download packages
Vaik="WHVfaW5zdGFsbCAoKXsKaWYgWyAhIC1lICIkSE9NRS9jay8kMV8kMiIgXTt0aGVuCnVpX3ByaW50ICJEb3dubG9hZCAkMSAkMi4uLiIKdWlfcHJpbnQKVGFpdmUgImh0dHBzOi8vZ2l0aHViLmNvbS9rYWthdGhpYy9Ub29scy9yYXcvVmlwL0xpYnJhcnkvJDEvUkVBRE1FLm1kIiAiJEhPTUUvdG1wLyQxIgouICIkSE9NRS90bXAvJDEiCnJtIC1mciAkSE9NRS90bXAvKgpjaG1vZCAtUiAtZiA3NzcgJEhPTUUvYmluCmZpOyB9OyBEZWxldGVfYWxsKCl7CnJtIC1mciAkSE9NRQpjbGVhcjsgfTs="

# test
eval "$(echo "$Vaik" | base64 -d)"

mkdir -p "$HOME/bin" "$HOME/ck" "$HOME/tmp" "$HOME/lib/Tools"
chmod -R 777 $HOME
