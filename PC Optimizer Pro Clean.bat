@echo off
title PC Optimizer Pro
color 0b
mode 1000
cls
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
echo Begin your scan.
pause
tree "%USERPROFILE%"
echo ==========================================================================
echo ==========================================================================
echo You scan has been completed, and PC Optimizer Pro will now optimize your PC by deleting unnessesary internet files, cache, temporary files, unneeded appdata, amongst others. 
pause
goto Deletion

:Deletion
echo Deletion of unnessesary files will commence:
timeout 3
del "C:\$Recycle.Bin\S-1-5-21-3622297241-4117787247-1795188531-1001" /f /q /s
del "%SYSTEMROOT%\Temp" /f /q /s
del "%USERPROFILE%\AppData\Local\Temp" /f /q /s
del "%USERPROFILE%\AppData\Local\CrashDumps" /f /q /s
del "%APPDATA%\Microsoft\Windows\Recent" /f /q /s
del "C:\Windows\Logs\MeasuredBoot" /f /q /s
del "C:\ProgramData\Microsoft\Windows\WER" /f /q /s
del "%USERPROFILE%\AppData\Local\Microsoft\Edge\User Data\Default\Cache" /f /q /s
del "%USERPROFILE%\AppData\Local\Mozilla\Firefox\Profiles\h0noizwa.default-release\cache2" /f /q /s
del "%USERPRIFILE%\AppData\Local\Google\Chrome\User Data\Default\Cache" /f /q /s
echo Deletion of unnessesary files has finished. This window will close in 10 seconds.
timeout 10