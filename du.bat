@echo off
set home_file_size=
set string=%1
if "%string%"=="?" ( echo. >NUL  )  else ( if "%string%"=="/?"  ( echo. >NUL ) else (goto skip) )
if "%string%"=="?" echo.&echo.    ---------Help-------------------------------------------------
if "%string%"=="/?" echo.&echo.    ---------Help-------------------------------------------------
if "%string%"=="?" echo     ^|  Usage %~fp0 "C:\path\to\file" ^|
if "%string%"=="/?" echo     ^|  Usage %~fp0 "C:\path\to\file" ^|
if "%string%"=="?" echo.    --------------------------------------------------------------
if "%string%"=="/?" echo.    --------------------------------------------------------------
if "%string%"=="?" goto :eof
if "%string%"=="/?" goto :eof
:skip
if exist %string% for /f "tokens=3 delims= " %%i in ('dir %string% ^| find "1 File(s)"') do set home_file_size=%%i
if NOT DEFINED home_file_size if exist %string% for /f "tokens=3 delims= " %%i in ('dir %string% ^| find "File(s)"') do set home_file_size=%%i
if NOT DEFINED home_file_size goto ERROR2
set home_file_size=%home_file_size:,=%
echo %home_file_size%
goto :eof
:ERROR
echo Please use double quote in file path.
goto :eof
:ERROR2
echo Check if file/path exists