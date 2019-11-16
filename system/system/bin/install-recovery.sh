#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:aaa537b21dafe8503f695cc4f0f0a62639ab034d; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:16067fd3ba41b738e1f26270dc3dbc7f0bcba50a EMMC:/dev/block/bootdevice/by-name/recovery aaa537b21dafe8503f695cc4f0f0a62639ab034d 67108864 16067fd3ba41b738e1f26270dc3dbc7f0bcba50a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
