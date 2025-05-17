#!/system/bin/sh
# filepath: d:\CODES\a54-vulkan\service.sh

# Wait until Android system finishes booting
while [ "$(getprop sys.boot_completed)" != "1" ]; do
    sleep 1
done

# Crash and force-stop relevant system apps
am crash com.android.systemui
am force-stop com.android.settings
am force-stop com.sec.android.app.launcher
am force-stop com.samsung.android.app.aodservice