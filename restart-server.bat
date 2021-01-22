@echo off
mode CON:cols=85 lines=20
color 3F
set a=php-fastcgi
set b=nginx
set title=Mikhmon Webserver by Laksamadi Guko
title Mikhmon Webserver
echo.
echo  ¦¦¦    ¦¦¦ ¦¦ ¦¦   ¦¦ ¦¦   ¦¦ ¦¦¦    ¦¦¦  ¦¦¦¦¦¦  ¦¦¦    ¦¦ 
echo  ¦¦¦¦  ¦¦¦¦ ¦¦ ¦¦  ¦¦  ¦¦   ¦¦ ¦¦¦¦  ¦¦¦¦ ¦¦    ¦¦ ¦¦¦¦   ¦¦ 
echo  ¦¦ ¦¦¦¦ ¦¦ ¦¦ ¦¦¦¦¦   ¦¦¦¦¦¦¦ ¦¦ ¦¦¦¦ ¦¦ ¦¦    ¦¦ ¦¦ ¦¦  ¦¦ 
echo  ¦¦  ¦¦  ¦¦ ¦¦ ¦¦  ¦¦  ¦¦   ¦¦ ¦¦  ¦¦  ¦¦ ¦¦    ¦¦ ¦¦  ¦¦ ¦¦ 
echo  ¦¦      ¦¦ ¦¦ ¦¦   ¦¦ ¦¦   ¦¦ ¦¦      ¦¦  ¦¦¦¦¦¦  ¦¦   ¦¦¦¦   
echo.
echo  %title%
echo.
echo  Restarting NGINX and PHP...
echo.

taskkill /f /IM phpCgiExeLoop.exe 1>NUL
taskkill /f /IM nginx.exe 1>NUL
taskkill /f /IM php-cgi.exe 1>NUL
timeout /t 2 >nul

start-server.bat