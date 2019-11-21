#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:f039b324bf3953f09eeffdfcc7404de918452d55; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:8ab8e65a6d60f3cbe648cab482c6c0fd70d557ac EMMC:/dev/block/bootdevice/by-name/recovery f039b324bf3953f09eeffdfcc7404de918452d55 67108864 8ab8e65a6d60f3cbe648cab482c6c0fd70d557ac:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
