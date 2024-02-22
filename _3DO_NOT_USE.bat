@echo off
REM /*
rem :::sorry for the encrypted variable names
rem it is only to make this code more usable
rem and compatible with other batch codes::::
rem /*
set /a _HaqImeOYrCv=0
set _FXvmqrdCeUd=
set dir_name_EnwSvs=%*

:skip
if exist %dir_name_EnwSvs% ( (for /f "tokens=3 delims= " %%i in ('dir %dir_name_EnwSvs% ') do CALL :corrrrrrrupt_me__DPzXu "%%i")&goto next ) else ( goto  ERROR2 )
goto :eof
:next
set _QwffRfUECPP=%_QwffRfUECPP:,=%
CALL :echo_me %_QwffRfUECPP%
goto :eof
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
