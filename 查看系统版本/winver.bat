@echo off
goto checkAdmin

:checkAdmin
	net session >nul 2>&1
	if %errorLevel% == 0 (
		goto check
	) else (
		echo ���Թ���Ա������У�
		goto end
	)
	
:check
    winver
	exit
	
:end
	pause
	exit