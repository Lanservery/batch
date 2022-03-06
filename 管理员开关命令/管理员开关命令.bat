@echo off
echo 警告！！！
echo 在关闭管理员用户前，请确保当前用户是否具有管理员权限，
echo 否则一旦意外关闭，就无法开启，且部分功能无权使用！！！
echo ------------------美好的分界线-----------------------
echo 注意！！！
echo 必须以管理员身份运行批处理！！！
set /p input=请输入字母1[开启]、2[关闭]、3[退出]:
if "%input%"=="1" goto opera_enable
if "%input%"=="2" goto opera_disable
if "%input%"=="3" exit
pause
exit

:opera_enable
echo 开启管理员....... 
net user administrator /active:yes
goto opera_end

:opera_disable
echo 关闭管理员.......
net user administrator /active:no
goto opera_end

:opera_end
pause