@echo off
title game
color 6
echo loding...
ping localhost -n 3 > nul
cls
color 8
echo loding...
ping localhost -n 3 > nul
cls




color c
echo          ---------------------------------------------------
echo.
echo            0000        0          00    00       00000   
echo            0  0       0 0        0  0  0  0      0
echo            0000      0   0      0    00    0     00000
echo               0     0 000 0    0            0    0
echo            0000    0       0  0              0   00000
echo.
echo                   BY : Mohammad qandeel
echo         ----------------------------------------------------
echo           HI YOU WELL CHANCE TO GUESS THE {SECRET} NUMBER
echo                         -> enter your name :-

set /p name= 


:option

echo %name% chose the lavel
echo [e] Easy
echo [h] Hard
echo [exp] Expert

set /p level=
if %level% == e goto easy
if %level% == h goto hard
if %level% == exp goto expert
echo.
echo.
ping localhost -n 20 >nul
cls


:easy
color 1f
echo *-*-*-*-*-*-*-*--*-*-*-*-*-*-*-*
echo ok %name% now you must find  the number beteen ( 1 ~~~ 100 )
echo *-*-*-*-*-*-*-*--*-*-*-*-*-*-*-*

set /a answer= %random% %% 100
set/a t=0

:tryeasy
set /p y=
set/a t = %t% +1
if %y% GTR %answer% echo %name% the number is biggest
if %y% LSS %answer% echo %name% the number is lowest
if %y% == %answer% goto aaeasy

echo not the anser yet
goto tryeasy

:aaeasy
cls
color 3
echo  you are good player 
echo  you try %t% turns
echo  the answer is  %answer% 
echo ******************************
echo *this game by mohammd qandeel*
echo ******************************
pause >nul
echo [ag] agian
echo [op] option
echo [ex] exit

set /p operation=
if %operation%== ag goto easy 
if %operation%== op goto option
if %operation%== ex exit


rem Hard section >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

:hard
color 1f
echo *-*-*-*-*-*-*-*--*-*-*-*-*-*-*-*
echo ok %name% now you must find  the number beteen ( 1 ~~~ 150 ) and Just 5 turn ^^ goodluck
echo *-*-*-*-*-*-*-*--*-*-*-*-*-*-*-*

set /a answer= %random% %% 150
set/a t=0
:tryhard 
set /p y=
set/a t=%t%+1
set /a tt =  5-%t%
if %y% GTR %answer% echo %name% the number is biggest //// %tt%
if %y% LSS %answer% echo %name% the number is lowest //// %tt%
if %y% == %answer% goto aahard
if %t% == 5 goto zzhard

echo not the anser yet
goto tryhard

:aahard
cls
color 3
echo  you are good player 
echo  you try %t% turns
echo  the answer is  %answer% 
echo ******************************
echo *this game by mohammd qandeel*
echo ******************************
pause >nul
echo [ag] agian
echo [op] option
echo [ex] exit

set /p operation=
if %operation%== ag goto hard 
if %operation%== op goto option
if %operation%== ex exit

:zzhard
ping localhost -n 3 > nul
cls
color c
echo \\\\\\\--////////
echo  you lost ,,  Dont care you can try agin
echo  \\\\\\\--///////
pause 
cls
goto option


rem expert section >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

:expert
color 1f
echo *-*-*-*-*-*-*-*--*-*-*-*-*-*-*-*
echo ok %name% now you must find  the number beteen ( 1 ~~~ 300 ) and Just 8 turn  ^^ goodluck
echo *-*-*-*-*-*-*-*--*-*-*-*-*-*-*-*

set /a answer= %random% %% 300
set /a t=0
:tryexpert 

set /a t= %t% + 1
set /p y=

set /a tt=8-%t%
if %y% GTR %answer% echo %name% the number is biggest //// %tt%
if %y% LSS %answer% echo %name% the number is lowest //// %tt%
if %y% == %answer% goto aaexpert
if %t% == 8 goto zzexpert

echo not the anser yet
goto tryexpert

:aaexpert
cls
color 3
echo  you are good player 
echo  you try %t% turns
echo  the answer is  %answer% 
echo ******************************
echo *this game by mohammd qandeel*
echo ******************************
pause >nul
echo [ag] agian
echo [op] option
echo [ex] exit

set /p operation=
if %operation%== ag goto expert
if %operation%== op goto option
if %operation%== ex exit

:zzexpert
ping localhost -n 3 > nul
cls
color c
echo \\\\\\\--////////
echo  you lost ,,  Dont care you can try agin
echo  \\\\\\\--///////
pause 
cls
goto option


