# Kakathic
TTvip=1

# Download packages
Vaik="WHVfaW5zdGFsbCAoKXsKaWYgWyAhIC1lICIkSE9NRS9jay8kMV8kMiIgXTt0aGVuCnVpX3ByaW50ICIgICRsb2FkICQxICQyLi4uIgp1aV9wcmludApUYWl2ZSAiaHR0cHM6Ly9naXRodWIuY29tL2tha2F0aGljL1Rvb2xzL3Jhdy9WaXAvTGlicmFyeS8kMS9SRUFETUUubWQiICIkSE9NRS90bXAvJDEiCi4gIiRIT01FL3RtcC8kMSIKZmk7IH07IGJhc2U2NCAoKSB7IGlmIFsgIiQxIiA9PSAiLXUiIF07dGhlbgpbICIkMSIgPT0gIi11IiBdICYmIHRlPSctZCcKc2VkIC1lICdzL+KBtS8wL2dJJyAtZSAncy/igbgvMS9nSScgLWUgJ3Mv4oG2LzIvZ0knIC1lICdzL+KBsC8zL2dJJyAtZSAncy/igbkvNC9nSScgLWUgJ3Mv4oG3LzUvZ0knIC1lICdzL8KyLzYvZ0knIC1lICdzL8K5LzcvZ0knIC1lICdzL+KBtC84L2dJJyAtZSAncy/Csy85L2dJJyB8IC9zeXN0ZW0vYmluL2Jhc2U2NCAkdGUgJDIKZWxpZiBbICIkMSIgPT0gIi1yIiBdO3RoZW4KWyAiJDEiID09ICItciIgXSAmJiB0ZT0nLXcwJwovc3lzdGVtL2Jpbi9iYXNlNjQgJHRlICQyIHwgc2VkIC1lICdzLzAv4oG1L2dJJyAtZSAncy8xL+KBuC9nSScgLWUgJ3MvMi/igbYvZ0knIC1lICdzLzMv4oGwL2dJJyAtZSAncy80L+KBuS9nSScgLWUgJ3MvNS/igbcvZ0knIC1lICdzLzYvwrIvZ0knIC1lICdzLzcvwrkvZ0knIC1lICdzLzgv4oG0L2dJJyAtZSAncy85L8KzL2dJJyAKZWxzZQovc3lzdGVtL2Jpbi9iYXNlNjQgJEAKZmk7IH07"

# test
eval "$(echo "$Vaik" | base64 -d)"

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
mkdir -p $HOME/bin $HOME/ck $HOME/tmp $HOME/apk $HOME/lib/Tools $HOME/log
