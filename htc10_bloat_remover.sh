#!/bin/bash
echo '========= HTC 10 Cleaning script =========='
echo 'Mounting /system writable'
adb shell "su -c 'mount -o rw,remount /system'"
echo "Removing Boost+"
adb shell "su -c 'rm -rf /system/priv-app/Pitroad'"
echo "Removing G+ Sense add-on"
adb shell "su -c 'rm -rf /system/priv-app/GooglePlusPlugin'"
echo "Removing built-in Instagram"
adb shell "su -c 'rm -rf /data/app/com.instagram.*'"
adb shell "su -c 'rm -rf /system/app/instagram*'"
echo "Removing LinkedIn Sense plug-in"
adb shell "su -c 'rm -rf /system/priv-app/LinkedIn*'"
echo "Removing HTC Mail"
adb shell "su -c 'rm -rf /system/priv-app/Mail'"
echo "Removing Facebook and Messenger"
adb shell "su -c 'rm -rf /data/app/com.facebook.*'"
adb shell "su -c 'rm -rf /system/app/facebook*'"
adb shell "su -c 'rm -rf /system/app/messenger*'"
echo "Removing News Republic"
adb shell "su -c 'rm -rf /system/app/News_Republic'"

say "Attention"
while true; do
    read -p "Did you install any keyboard besides TouchPal?" yn
    case $yn in
        [Yy]* ) adb shell "su -c 'rm -rf /system/priv-app/TouchPal*'";
                adb shell "su -c 'rm -rf /system/app/TouchPal*'"; break;;
        [Nn]* ) echo "Leaving TouchPal keyboard intact."; break;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo "Removing Twitter for Sense"
adb shell "su -c 'rm -rf /system/priv-app/Twitter'"
echo "Removing Voice recorder"
adb shell "su -c 'rm -rf /system/priv-app/HtcSoundRecorder'"
echo "Removing Zoe"
adb shell "su -c 'rm -rf /data/app/com.htc.zero*'"
echo "Removing HTC Help"
adb shell "su -c 'rm -rf /system/priv-app/HTCAdvantage'"
echo "Removing Ice View"
adb shell "su -c 'rm -rf /data/app/com.htc.iceview*'"
echo "Removing Transfer My Stuff"
adb shell "su -c 'rm -rf /system/priv-app/Frisbee'"
echo 'Done'
