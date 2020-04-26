
@echo off
title Initializing CyberInfoBar...
cls
echo.
echo Initializing CyberInfoBar...

cd..
echo.
echo Working in directory "%cd%"
echo.

if not exist "%appdata%\Rainmeter\CyberInfoBar" (
	echo Looks like %username% hasn't used CyberInfoBar before, how nice!
	echo Creating root skin folder in "%appdata%\Rainmeter"...
	mkdir "%appdata%\Rainmeter\CyberInfoBar"
	echo.
	echo Copying default files...
	xcopy ".\defaults\CyberInfoBar" "%appdata%\Rainmeter\CyberInfoBar" /E /Y
) else (
	echo Welcome back to CyberInfoBar, %username%!
	echo.
	if not exist "%appdata%\Rainmeter\CyberInfoBar\UserOptions.ini" (
		echo Copying UserOptions.ini because it doesn't exist.
		xcopy ".\defaults\CyberInfoBar\UserOptions.ini" "%appdata%\Rainmeter\CyberInfoBar\" /E /Y
	)
	echo Refreshing default theme files...
	xcopy ".\defaults\CyberInfoBar\Themes" "%appdata%\Rainmeter\CyberInfoBar\Themes\" /E /Y
)

echo.
echo Initialization complete!
echo Have a nice day!

::pause > nul