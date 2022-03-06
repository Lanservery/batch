@echo off
echo 激活adb.......
adb devices
echo 请打开权限狗.......
pause
adb shell sh /storage/emulated/0/Android/data/com.web1n.permissiondog/files/starter.sh
echo 完成！
pause