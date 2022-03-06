@echo off
goto checkAdmin

:checkAdmin
	net session >nul 2>&1
	if %errorLevel% == 0 (
		goto check
	) else (
		echo 请以管理员身份运行！
		goto end
	)
	
:check
    winver
	exit
	
:end
	pause
	exit