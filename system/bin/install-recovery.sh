#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:35689752:fb3a311dcd0c6e6f8f9a6cf8965b7c9a442f98b6; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:12789012:d870281758d492314aaee48f8f951d5ef1d017f3 EMMC:/dev/block/bootdevice/by-name/recovery fb3a311dcd0c6e6f8f9a6cf8965b7c9a442f98b6 35689752 d870281758d492314aaee48f8f951d5ef1d017f3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
