# Kakathic

TTvip=1
ui_print(){ echo "$1"; sleep 0.005; }
ui_print2(){ echo "  $1"; }
Xan(){ echo "  $1" >&2; }
BatdauT=$(date +%s)

# Volume keys
Vk(){ 
input2="$1"; input=1
Kgg(){ 
Key="$(getevent -qlc 1 | awk '{print $3}')"
if [ "$Key" == "KEY_POWER" ];then
abort
elif [ "$Key" == "KEY_VOLUMEUP" ];then
[ "$input" == "$input2" ] && input=1 || input=$(($input + 1))
ui_print "  $input"
sleep 0.3
Kgg
elif [ "$Key" == "KEY_VOLUMEDOWN" ];then
ui_print
ui_print "  $chon: $input"
ui_print
sleep 0.3
else Kgg; fi; }
Kgg
}

# Count time 
End_time(){
KetthucT=$(date +%s)
TongTG=$(($KetthucT - $BatdauT))
Gio=$(printf '%d' $((TongTG/3600%24)))
Phut=$(printf '%d' $((TongTG/60%60)))
if [ "$Gio" != 0 ];then
echo "$time: $(printf '%d '$h', %d '$m', %d '$s'.' $((TongTG/3600%24)) $((TongTG/60%60)) $((TongTG%60)))"
elif [ "$Phut" != 0 ];then
echo "$time: $(printf '%d '$m', %d '$s'.' $((TongTG/60%60)) $((TongTG%60)))"
else
echo "$time: $(printf '%d '$s'.' $((TongTG%60)))"
fi
}

# Download packages
Xu_install(){
[ "$2" ] && pb="_$2"
if [ ! -e "/data/tools/ck/$1$pb" ];then
ui_print "  $load $1..."
ui_print
Taive "https://github.com/kakathic/Tools/raw/Vip/Library/$1/README.md" "$TMPDIR/$1.sh"
[ "$(grep -icm1 '#\ kakathic' $TMPDIR/$1.sh)" == 1 ] && chmod 777 "$TMPDIR/$1.sh" || abort "$error"
cd /data/tools
. "$TMPDIR/$1.sh"
chmod -R 777 /data/tools/bin
rm -fr $HOME/tmp/*
fi
unset pb
}

# Internet
User="User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101 Firefox/102.0"
Taive(){
[ -e /system/bin/curl ] && curl -s -k -L -H "$User" --connect-timeout 20 "$1" -o "$2" || wget -q --header "$User" --no-check-certificate "$1" -O "$2" >&2
}
Xem(){
[ -e /system/bin/curl ] && curl -s -k -G -L -H "$User" --connect-timeout 20 "$1" || wget -q --header "$User" --no-check-certificate -O - "$1"
}

# mount
mrw () {
for i in / system_root system vendor product; do
mount $i 2>/dev/null
mount -o rw,remount $i 2>/dev/null
done
}

mro () {
for i in / system_root system vendor product; do
mount -o ro,remount $i 2>/dev/null || mount -o ro,remount $i 2>/dev/null
umount $i 2>/dev/null || umount $i 2>/dev/null
done
}

baksmali () { java -Xms256m -Xmx512m -jar "/data/tools/lib/Tools/baksmali.jar" "$@"; }
smali () { java -Xms256m -Xmx512m -jar "/data/tools/lib/Tools/smali.jar" "$@"; }

# Tìm kiếm
Timkiem(){ find $TMPDIR/Apk/$2 -name "*.smali" -exec grep -l "$1" {} +; }

Vsmali(){
for Vka in $(find $4 -name "*.smali" -exec grep -l "$1" {} +); do
[ -e $Vka ] && Xan "MOD: $(echo "$1" | sed 's|\\||g')" || Xan "- Lỗi: $(echo "$1" | sed 's|\\||g')"
[ -e $Vka ] && sed -i -e "/^$1/,/$2/c $(echo "$3" | sed -z 's|\n|\\n|g')" "$Vka"
[ -e $Vka ] && echo "$Vka" >> $TMPDIR/Apk/$(echo "$4" | sed "s|$TMPDIR/Apk/||g" | cut -d '/' -f1)/class
done
}

Thaythe(){
Xan "MOD: $1 -> $2"
for Tt2 in $(find $3 -name "*.smali" -exec grep -l "$1" {} +); do
[ -e "$Tt2" ] && sed -i "s|$1|$2|g" $Tt2 || Xan "- Lỗi: $1"
[ -e "$Tt2" ] && echo "$Tt2" >> $TMPDIR/Apk/$(echo "$3" | sed "s|$TMPDIR/Apk/||g" | cut -d '/' -f1)/class
done
}

Autoone(){
Xan "MOD: $1 -> $2"
for vakkddhh in $(find $3 -name "*.smali" -exec grep -l "sget-boolean .., $1" {} +); do
echo "sed -i $(grep "sget-boolean .., $1" "$vakkddhh" | awk '{print "-e \"s|sget-boolean "$2" '$1'|const/4 "$2" '$2'|g\"" }' | sort | uniq | tr '\n' ' ') ${vakkddhh//\$/\\\$}" | sh
echo "$vakkddhh" >> $TMPDIR/Apk/$(echo "$3" | sed "s|$TMPDIR/Apk/||g" | cut -d '/' -f1)/class
done
}

CPapk(){
PTC="$(pm path "$1" | cut -d : -f2)"
if [ "$(echo "$PTC" | grep -cm1 '/data/')" == 1 ];then
cp -rf $PTC "/data/tools/apk/$1.apk"
cp -rf "$PTC" "$TMPDIR/Apk/$1.apk"
pm uninstall $1 >&2
echo "$(pm path "$1" | cut -d : -f2)" > "$TMPDIR/Apk/$1.txt"
else
[ -e "/data/tools/apk/$1.apk" ] && cp -rf "/data/tools/apk/$1.apk" "$TMPDIR/Apk/$1.apk" || cp -rf "$(magisk --path)/.magisk/mirror/system_root$PTC" "$TMPDIR/Apk/$1.apk"
[ -e "$(magisk --path)/.magisk/mirror/system_root$PTC" ] || abort "- Lỗi không tìm thấy $1, $(find $(magisk --path)/.magisk/mirror/*/* -type f -name "${PTC##*/}")"
echo "$PTC" > "$TMPDIR/Apk/$1.txt"
fi
}

CPfile(){
Pathfw="$(find /system* -type f -name "$1.jar")"
[ -e $Pathfw ] || abort "- Lỗi không tìm thấy $1"
cp -f "$(magisk --path)/.magisk/mirror/system_root$Pathfw" "$TMPDIR/Apk"
echo "$Pathfw" > "$TMPDIR/Apk/$1.txt"
}

# giải nén file
Giainen(){
for vapk in $TMPDIR/Apk/*.*; do
if [ "${vapk##*.}" == 'apk' ] || [ "${vapk##*.}" == 'jar' ];then
PTd="$(cat ${vapk%.*}.txt)"
ui_print "  Giải nén: ${PTd##*/}"
ui_print
mkdir -p ${vapk%.*}
unzip -qo "$vapk" '*.dex' -d ${vapk%.*}
for vsmali in ${vapk%.*}/*.dex; do
baksmali d --api $API $vsmali -o ${vsmali%.*}
done
fi
done
}

Donggoi(){
# Đóng gói apk
for bapk in $TMPDIR/Apk/*.*; do
if [ "${bapk##*.}" == 'apk' ] || [ "${bapk##*.}" == 'jar' ];then
PTb="$(cat ${bapk%.*}.txt)"
ui_print "  Đóng gói: ${PTb##*/}"
ui_print
for bsmali in $(cat ${bapk%.*}/class | sed "s|$TMPDIR/Apk/||g" | cut -d '/' -f2 | sort | uniq); do
rm -fr "$bsmali".dex
smali a --api $API ${bapk%.*}/$bsmali -o "${bapk%.*}/$bsmali".dex
done
cd ${bapk%.*}
zip -qr -0 $bapk '*.dex'
zipalign -f 4 $bapk $TMPDIR/Apk/tmp/${bapk##*/} 
cp -rf $TMPDIR/Apk/tmp/* $TMPDIR/Apk
fi
done

for Capk in $TMPDIR/Apk/*.*; do
if [ "${Capk##*.}" == 'apk' ];then
Papkp="$(cat ${Capk%.*}.txt)"
if [ "$(unzip -l $Capk 2>/dev/null | grep -cm1 "lib/$ABI/")" == 1 ];then
mkdir -p $MODPATH${Papkp%/*}/lib/$ARCH
unzip -qo -j $Capk "lib/$ABI/*" -d $MODPATH${Papkp%/*}/lib/$ARCH
fi
mkdir -p $MODPATH${Papkp%/*}
cp -rf $Capk "$MODPATH$Papkp"
fi
if [ "${Capk##*.}" == 'jar' ];then
Papkp="$(cat ${Capk%.*}.txt)"
mkdir -p "$MODPATH${Papkp%/*}"
cp -rf $Capk "$MODPATH$Papkp"
fi
done
}

# Freeze
FREEZE(){
for TARGET in $1; do
mktouch $MODPATH$TARGET/.replace
done
}

GP () { grep_prop $1 $TMPDIR/module.prop; }

API=$(getprop ro.build.version.sdk)
ABI=$(getprop ro.product.cpu.abi)

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

TTM(){
for vah in $1; do
[ -e $vah ] || mkdir -p "$vah"
done
}

TTM "/data/tools/bin
$TMPDIR/Apk
/data/tools/ck
/data/tools/tmp
/data/tools/apk
/data/tools/lib/Tools"

unset vah
unset mklist

export PATH="/data/tools/bin:$PATH"
export HOME="/data/tools"
