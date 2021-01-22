@ECHO OFF
title Stop Mikhmon Webserver
color 3F
mode CON:cols=85 lines=20
echo.   
echo  ¦¦¦    ¦¦¦ ¦¦ ¦¦   ¦¦ ¦¦   ¦¦ ¦¦¦    ¦¦¦  ¦¦¦¦¦¦  ¦¦¦    ¦¦ 
echo  ¦¦¦¦  ¦¦¦¦ ¦¦ ¦¦  ¦¦  ¦¦   ¦¦ ¦¦¦¦  ¦¦¦¦ ¦¦    ¦¦ ¦¦¦¦   ¦¦ 
echo  ¦¦ ¦¦¦¦ ¦¦ ¦¦ ¦¦¦¦¦   ¦¦¦¦¦¦¦ ¦¦ ¦¦¦¦ ¦¦ ¦¦    ¦¦ ¦¦ ¦¦  ¦¦ 
echo  ¦¦  ¦¦  ¦¦ ¦¦ ¦¦  ¦¦  ¦¦   ¦¦ ¦¦  ¦¦  ¦¦ ¦¦    ¦¦ ¦¦  ¦¦ ¦¦ 
echo  ¦¦      ¦¦ ¦¦ ¦¦   ¦¦ ¦¦   ¦¦ ¦¦      ¦¦  ¦¦¦¦¦¦  ¦¦   ¦¦¦¦   
echo.
echo Killing NGINX and PHP...
taskkill /f /IM phpCgiExeLoop.exe 1>NUL
taskkill /f /IM nginx.exe 1>NUL
taskkill /f /IM php-cgi.exe 1>NUL
timeout /t 2 >nul
EXIT
