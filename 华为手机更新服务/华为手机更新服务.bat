@echo off
echo ��ʼ����adb.......
adb devices
set /p input=��������ĸ1[����]��2[����]:
if "%input%"=="1" goto opera_enable
if "%input%"=="2" goto opera_disable
pause
exit

:opera_enable
echo �������·���....... 
adb shell pm enable com.huawei.android.hwouc
goto opera_end

:opera_disable
echo ���ø��·���.......
adb shell pm disable-user com.huawei.android.hwouc 
goto opera_end

:opera_end
echo ��ɣ�
pause