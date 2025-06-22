#!/system/bin/sh
MODDIR=${0%/*}
while :
do
if [[ `dumpsys window policy |grep showing=` == *"showing=false"* ]];then
sleep 5
echo "if [[ -f /data/adb/shamiko/whitelist ]];then
  rm -rf /data/adb/shamiko/whitelist
  echo \" 😋 Shamiko进入黑名单模式\"
else
  touch /data/adb/shamiko/whitelist
  echo \" 😋 Shamiko进入白名单模式\"
fi
sleep 1.5
input keyevent KEYCODE_BACK &" > /data/adb/modules/zygisk_shamiko/action.sh
chmod 777 /data/adb/modules/zygisk_shamiko/action.sh
if [[ -f $MODDIR/whitelist ]];then
  mv $MODDIR/whitelist /data/adb/shamiko/
fi
break
fi
sleep 1
done