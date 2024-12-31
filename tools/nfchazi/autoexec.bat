@echo off
title Autoexec

start sckeyChecker.exe

:main
cls
echo.
echo 1. zh_CN
echo 2. zh_TW
echo 3. en_US
echo 4. kr
echo 5. jp
echo X. [Exit]
echo.

:select
set selection=0
set /p selection=Select ] 
if "%selection%"=="1" goto :zhcn
if "%selection%"=="2" goto :zhtw
if "%selection%"=="3" goto :enus
if "%selection%"=="4" goto :kr
if "%selection%"=="5" goto :jp
if "%selection%"=="D" goto :dos
if "%selection%"=="X" goto :controlexit
echo Selection Error
pause>nul
goto :main

:zhcn
start index_zhCN.html
goto :controlexit

:zhtw
start index_zhTW.html
goto :controlexit

:enus
start index_enUS.html
goto :controlexit

:kr
start index_kr.html
goto :controlexit

:jp
start index_jp.html
goto :controlexit


:dos
cls
echo -------------------------------------------
echo  HS-DOS    MAKE BY H.S.S.
echo -------------------------------------------
echo Use 'backup' to back to the Autoexec-selection
echo.
goto :asset

:asset
:menu
doskey backup=goto :main
doskey run-zhcn=goto :zhcn
doskey run-zhtw=goto :zhtw
doskey run-enus=goto :enus
doskey run-kr=goto :kr
doskey run-jp=goto :jp
doskey -e=exit
set dosaskpl=echo.
set /p dosaskpl=%cd% $ :: 
%dosaskpl%
goto :asset



:controlexit
exit