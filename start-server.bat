@echo off
mode CON:cols=85 lines=20
color 3F
set a=php-fastcgi
set b=nginx
set title=Mikhmon Webserver by Laksamadi Guko
title Mikhmon Webserver

goto chknginx1

:start1
%cd%
cls
echo.
echo  %title%
:: Start PHP-fastcgi
title Starting %a%
echo.
echo  Starting %a%...
cd php
runbg phpCgiExeLoop.exe -b 127.0.0.1:9123
cd %~dp0
timeout /t 2 >nul
tasklist /nh /fi "IMAGENAME eq php-cgi.exe" | find /i "php-cgi.exe" >nul && (
echo.
echo  %a% is running
timeout /t 2 >nul
) || (
echo.
echo  %a% is not running
timeout /t 2 >nul
exit
)
:: Start the nginx server
title Starting %b%
echo.
echo  Starting %b%...
cd nginx
runbg nginx
tasklist /nh /fi "IMAGENAME eq nginx.exe" | find /i "nginx.exe" >nul && (
echo.
echo  %b% is running
echo.
timeout /t 2 >nul
goto chknginx2
)
:start2
cls
echo.
echo  %title%
:: Start the nginx server
title Starting %b%
echo.
echo  Starting %b%...
runbg nginx
goto chknginx2

:chknginx1
:: Check nginx
cls
echo.
echo  ¦¦¦    ¦¦¦ ¦¦ ¦¦   ¦¦ ¦¦   ¦¦ ¦¦¦    ¦¦¦  ¦¦¦¦¦¦  ¦¦¦    ¦¦ 
echo  ¦¦¦¦  ¦¦¦¦ ¦¦ ¦¦  ¦¦  ¦¦   ¦¦ ¦¦¦¦  ¦¦¦¦ ¦¦    ¦¦ ¦¦¦¦   ¦¦ 
echo  ¦¦ ¦¦¦¦ ¦¦ ¦¦ ¦¦¦¦¦   ¦¦¦¦¦¦¦ ¦¦ ¦¦¦¦ ¦¦ ¦¦    ¦¦ ¦¦ ¦¦  ¦¦ 
echo  ¦¦  ¦¦  ¦¦ ¦¦ ¦¦  ¦¦  ¦¦   ¦¦ ¦¦  ¦¦  ¦¦ ¦¦    ¦¦ ¦¦  ¦¦ ¦¦ 
echo  ¦¦      ¦¦ ¦¦ ¦¦   ¦¦ ¦¦   ¦¦ ¦¦      ¦¦  ¦¦¦¦¦¦  ¦¦   ¦¦¦¦   
echo.
echo  %title%
tasklist /nh /fi "IMAGENAME eq nginx.exe" | find /i "nginx.exe" >nul && (
echo.
echo  %b% is running
echo.
timeout /t 2 >nul
exit
) || (
echo.
echo  Loading...
timeout /t 2 >nul
goto start1
)

:chknginx2
:: Check nginx
timeout /t 2 >nul
tasklist /nh /fi "IMAGENAME eq nginx.exe" | find /i "nginx.exe" >nul && (
echo.
echo  %b% is running
echo.
timeout /t 2 >nul
exit