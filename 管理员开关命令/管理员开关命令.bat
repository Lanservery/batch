@echo off
echo ���棡����
echo �ڹرչ���Ա�û�ǰ����ȷ����ǰ�û��Ƿ���й���ԱȨ�ޣ�
echo ����һ������رգ����޷��������Ҳ��ֹ�����Ȩʹ�ã�����
echo ------------------���õķֽ���-----------------------
echo ע�⣡����
echo �����Թ���Ա�����������������
set /p input=��������ĸ1[����]��2[�ر�]��3[�˳�]:
if "%input%"=="1" goto opera_enable
if "%input%"=="2" goto opera_disable
if "%input%"=="3" exit
pause
exit

:opera_enable
echo ��������Ա....... 
net user administrator /active:yes
goto opera_end

:opera_disable
echo �رչ���Ա.......
net user administrator /active:no
goto opera_end

:opera_end
pause