#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:7afd3a67716ff9aed217a5603413bfabd92ea766; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:40dd10b8d69f21d2cf2e4026d0efba572309b325 EMMC:/dev/block/bootdevice/by-name/recovery 7afd3a67716ff9aed217a5603413bfabd92ea766 67108864 40dd10b8d69f21d2cf2e4026d0efba572309b325:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
