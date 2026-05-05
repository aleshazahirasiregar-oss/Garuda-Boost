#!/system/bin/sh
echo "🇮🇩 GARUDA BOOST V4 - ANDROID 11-16 LOADED!"

# Validasi root
if [ $(id -u) -ne 0 ]; then echo "❌ Error: Root dulu pake 'su'"; exit 1; fi
SDK=$(getprop ro.build.version.sdk)
echo "Android SDK: $SDK | Support A11-A16"

# Anti Phantom Process Killer A12+
[ $SDK -ge 31 ] && settings put global settings_enable_monitor_phantom_procs false

# List target 2026
APPS="com.facebook.katana com.instagram.android com.zhiliaoapp.musically com.shopee.id com.tokopedia.tkpd com.whatsapp"

# Eksekusi Cakar Garuda
for PKG in $APPS; do
    am force-stop $PKG 2>/dev/null
    echo "🦅 Terminated: $PKG"
done

# Bersihin RAM 4 tahap
sync
for i in 1 2 3; do echo $i > /proc/sys/vm/drop_caches; done
sm trim-caches 999G 2>/dev/null

# Cek suhu
TEMP=$(cat /sys/class/thermal/thermal_zone*/temp 2>/dev/null | head -1)
TEMP_C=$((TEMP / 1000))
if [ $TEMP_C -gt 43 ]; then
    echo "⚠️ DEVICE HOT $TEMP_C°C! Cooling down..."
    exit 1
fi

# Laporan akhir
free -h | awk 'NR==2{printf "✅ RAM STATUS: %s Available / %s Total\n", $4,$2}'
echo "🔥 GARUDA BOOST V4 COMPLETE! Ready for gaming."
