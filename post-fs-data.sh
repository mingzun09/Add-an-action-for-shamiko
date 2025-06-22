MODDIR=${0%/*}
rm -rf /data/adb/modules/zygisk_shamiko/action.sh
if [[ -f /data/adb/shamiko/whitelist ]];then
  rm -rf /data/adb/shamiko/whitelist
  touch $MODDIR/whitelist
fi