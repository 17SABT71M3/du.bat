@echo off
set /a counter=0
set home_file_size=
set string=%*

:skip
if exist %string% ( (for /f "tokens=3 delims= " %%i in ('dir %string% ') do CALL :corrupt_me "%%i")&goto next ) else ( goto  ERROR2 )
goto :eof
:next
set OLD=%old:,=%
CALL :echo_me %OLD%
goto :eof
:echo_me
echo %~1
Exit /B
:corrupt_me
REM echo I am calling the corrupt ! %1
if %counter%==0 set /a counter=1
if %counter%==1 set /a counter=0
if %counter%==0 set old=%new%
set new=%1
Exit /B
REM WARNING FOLLOWING CODE IS DEPRECATED ________
if NOT DEFINED home_file_size goto ERROR2
set home_file_size=%home_file_size:,=%
echo %home_file_size%
goto :eof
:ERROR
echo Please use double quote in file path.
goto :eof
REM WARNING ABOVE     CODE IS DEPRECATED x x x x x 
:ERROR2
echo Check if file/path exists