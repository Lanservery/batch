@echo off
echo 开始激活adb.......
adb devices
set /p input=请输入字母1[开启]或2[禁用]:
if "%input%"=="1" goto opera_enable
if "%input%"=="2" goto opera_disable
pause
exit

:opera_enable
echo 开启更新服务....... 
adb shell pm enable com.huawei.android.hwouc
goto opera_end

:opera_disable
echo 禁用更新服务.......
adb shell pm disable-user com.huawei.android.hwouc 
goto opera_end

:opera_end
echo 完成！
pause