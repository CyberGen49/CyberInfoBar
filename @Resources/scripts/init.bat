
@echo off
title Initializing CyberInfoBar...
cls
echo.
echo Initializing CyberInfoBar...

cd..
echo Working in directory "%cd%"

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
	echo Refreshing default theme files...
	xcopy ".\defaults\CyberInfoBar\Themes" "%appdata%\Rainmeter\CyberInfoBar\Themes\" /E /Y
)

echo Initialization complete!
echo Have a nice day!

::pause > nul