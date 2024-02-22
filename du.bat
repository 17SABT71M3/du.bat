@echo off
if Exist %1 goto :continue
REM
goto :eof
:continue
for %%i in (%1) do echo %%~zi