
@echo off

set run=%0

:checkForArgs
if [%1]==[] goto usage
if [%2]==[] goto usage
if [%3]==[] goto usage

:setVariables
set title=%~1
set type=%2
set content=%~3
set content=%content:\n=" + vbCrLf + "%

:displayBox
set vbsName=%random%.vbs
echo x=MsgBox("%content%", 0+%type%, "%title%") > %vbsName%
start %vbsName%
timeout /t 1 /NOBREAK > nul
del %vbsName%
goto end

:usage
echo.
echo TXTBOX
echo A command for displaying a simple system dialog box.
echo.
echo Usage:
echo %run% ^<title^> ^<type^> ^<content^>
echo.
echo ^<title^>
echo Sets the text shown in the text box titlebar. If your title contains spaces, surround it with quotes.
echo.
echo ^<type^> 
echo Sets the icon shown in the text box.
echo 16: Critical icon
echo 32: Question icon
echo 48: Warning icon
echo 64: Information icon
echo Any other value will not display an icon.
echo.
echo ^<content^>
echo Sets the text shown in the body of the text box. If your content contains spaces, surround it with quotes.
echo Use \n to move to a new line.
echo.
echo If you want to use special characters, use the escape characters referenced at https://www.robvanderwoude.com/escapechars.php
goto end

:end