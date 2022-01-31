@echo off
setlocal enabledelayedexpansion

:: title
title Cookie Clicker Remasterd (OwO)

:: username 
color 5a
set /p user="enter username: "
cls

:: score
set /A thing=0
set /A score=score.txt

for /f "tokens=*" %%x in (%score%) do (
    set /a thing+=1
    set var[!thing!]=%%x
)

set /A count=%var[1]%

:: loop func
:loop
  color 5a
  echo Cookie Clicker
  echo %user%'s score: %count%
  pause
  set /A count=%count%+1
  echo %count% > %score%
  cls
  color a5
  echo Cookie Clicker
  echo %user%'s score: %count%
  pause
  set /A count=%count%+1
  echo %count% > %score%
  cls
goto loop
