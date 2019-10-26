#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:bdc952123e05cb10df725226c2eadd633142c2f3; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:b81c7ed05a14baee052a40cfaa5245a8ea91d43c EMMC:/dev/block/bootdevice/by-name/recovery bdc952123e05cb10df725226c2eadd633142c2f3 67108864 b81c7ed05a14baee052a40cfaa5245a8ea91d43c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
