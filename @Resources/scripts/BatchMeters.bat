
:: Use this script to create batches of meters with a numeric pattern.

@echo off
cls
title Batch Meters

:userCheck
if "%username%"=="Cyber" (
	goto start
) else (
	echo.
	echo This script was used for quick and easy duplication of meters during the development of this skin. 
	echo.
	echo It appears that you aren't Cyber, so there's really no point in running this.
	echo.
	echo If you still want to run the script, press a key.
	echo Otherwise, you may close this window.
	pause > nul
	goto start
)

:start
echo.
echo Creating meters...
echo If you see any text after this, check the code.

echo. > temp.txt

set temp=3
set temp2=2
:loop
(
	echo.
	echo [Item%temp%I]
	echo Meter=Image
	echo MeasureName=GetItemIcon%temp%
	echo Container=MenuContainer
	echo MeterStyle=Item1I
) >> temp.txt

set /a temp+=1
set /a temp2+=1
if %temp%==33 goto end
goto loop

:end
echo.
pause
exit