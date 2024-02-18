@echo off
SETLOCAL EnableDelayedExpansion
rem === Per-Line Text Color ===
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
rem === End Per-Line Text Color ===
rem ==============================================================================================================================================
title PalHub Rcon %VER% by AriesLR
call :colorEcho 0b "[Title] PalHub Rcon %VER% by AriesLR"
echo:
echo:
echo:
rem ==============================================================================================================================================

call rcon.exe -a %RCON_IP% -p %RCON_PASS%

rem ==============================================================================================================================================
rem === Per-Line Text Color ===
:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i
rem === End Per-Line Text Color ===