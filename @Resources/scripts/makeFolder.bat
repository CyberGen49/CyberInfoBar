
@echo off
set folder=%1

if not exist %folder% (
	echo Creating %folder%...
	echo.
	echo If you're reading this, your computer is either struggling to create this folder, or your eyes are insanely fast.
	mkdir %folder%
	::txtbox "Rainmeter" 64 "The folder you just tried to open didn't exist, so it was created."
	explorer.exe %folder%
)
exit