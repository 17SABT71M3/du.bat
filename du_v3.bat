@echo off
set sine=""
REM /*
rem :::sorry for the encrypted variable names
rem it is only to make this code more usable
rem and compatible with other batch codes::::
rem /*
set /a _HaqImeOYrCv=0
set _FXvmqrdCeUd=
set dir_name_EnwSvs=%1
set dir_name_EnwSXs=%2
if not defined dir_name_EnwSXs set dir_name_EnwSXs=""
:skip
if exist %dir_name_EnwSvs% dir %dir_name_EnwSvs% 2>NUL 1>NUL
if exist %dir_name_EnwSvs% if %errorlevel% NEQ 0 echo.&goto :eof
if exist %dir_name_EnwSvs% ( (for /f "tokens=3 delims= " %%i in ('dir %dir_name_EnwSvs% ') do CALL :corrrrrrrupt_me__DPzXu "%%i")&goto next ) else ( goto  ERROR2 )
goto :T_end_98310982
:next
set _QwffRfUECPP=%_QwffRfUECPP:,=%
CALL :echo_me %_QwffRfUECPP%
goto :T_end_98310982
:echo_me
echo %~1
Exit /B
:corrrrrrrupt_me__DPzXu
REM echo I am calling the corrupt DPzXu ! DPzXu ! %1
if %_HaqImeOYrCv%==0 set /a _HaqImeOYrCv=1
if %_HaqImeOYrCv%==1 set /a _HaqImeOYrCv=0
if %_HaqImeOYrCv%==0 set _QwffRfUECPP=%_wgwmeKAQuew%
set _wgwmeKAQuew=%1
Exit /B
:ERROR2
echo Check if file/path exists
:T_end_98310982
if "%dir_name_EnwSXs%"=="_D_" for /f "delims=" %%i in ('dir /b /ad') do echo|set/p=""%%i":"&CALL "%~fp0" "%%i"