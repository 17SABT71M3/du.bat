@echo off
set /a token=0
pushd %windir%
set realtoken=
:loop
set /a token+=1
for /f "skip=4 tokens=%token%" %%i in ('dir *.dll') do (echo %%i|find "," >NUL&&set /a realtoken=token)&goto :move
:move
if defined realtoken goto :next
goto :loop
:next
popd
set filesize=
set /a counter=0
if not exist %1 goto :eof
for /f %%i in ('dir /a-d /b %1') do set /a counter+=1
if %counter% NEQ 1 goto :eof
for /f "tokens=%realtoken%" %%i in ('dir %1 2^>NUL^|findstr /r "^[0-9]"') do set filesize=%%i
if not defined filesize for /f "tokens=4" %%i in ('dir /ah %1^|findstr /r "^[0-9]"') do set filesize=%%i
set filesize=%filesize:,=%
echo %filesize%
