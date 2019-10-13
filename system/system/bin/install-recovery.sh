#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:c16ea19af0ea5d9afc8337d2a8581f57cf56942f; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:a1f1fc0e3397dfea136133c768703ff595ccd28c EMMC:/dev/block/bootdevice/by-name/recovery c16ea19af0ea5d9afc8337d2a8581f57cf56942f 67108864 a1f1fc0e3397dfea136133c768703ff595ccd28c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
