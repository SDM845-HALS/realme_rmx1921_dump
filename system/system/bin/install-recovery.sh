#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:0a0d3447d6c11c2bb23a6d030f23acb43d0ff139; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:81a24196cddcc5cb3b9b9effc46f7f01befddb53 EMMC:/dev/block/bootdevice/by-name/recovery 0a0d3447d6c11c2bb23a6d030f23acb43d0ff139 67108864 81a24196cddcc5cb3b9b9effc46f7f01befddb53:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
