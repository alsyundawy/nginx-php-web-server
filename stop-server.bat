
@ECHO OFF
title Stop Mikhmon Webserver
color 8F
MODE CON:cols=70 lines=5
taskkill /f /IM phpCgiExeLoop.exe 1>NUL
taskkill /f /IM nginx.exe 1>NUL
taskkill /f /IM php-cgi.exe 1>NUL
timeout /t 2 >nul
EXIT
