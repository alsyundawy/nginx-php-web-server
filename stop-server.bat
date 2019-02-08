
@ECHO OFF
title Stop Mikhmon Webserver
color 8F
MODE CON:cols=70 lines=5
taskkill /f /IM phpCgiExeLoop.exe
taskkill /f /IM nginx.exe
taskkill /f /IM php-cgi.exe
timeout /t 2 >nul
EXIT
