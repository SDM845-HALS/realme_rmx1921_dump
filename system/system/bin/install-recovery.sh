#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:5710582f4215bb3ae1da25fe78370987ccca3acd; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:8afc46f2ad07f9eaebf665c1b95c030143b2421d EMMC:/dev/block/bootdevice/by-name/recovery 5710582f4215bb3ae1da25fe78370987ccca3acd 67108864 8afc46f2ad07f9eaebf665c1b95c030143b2421d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
