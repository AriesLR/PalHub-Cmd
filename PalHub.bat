@echo off
SETLOCAL EnableDelayedExpansion
rem === Per-Line Text Color ===
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
rem === End Per-Line Text Color ===

rem ==============================================================================================================================================

rem === Settings ===

rem Server Location
set SERVER_DIR="C:\PalworldServer"

rem Restart Interval in Seconds (10800 = 3 Hours)
set RESTART_INTERVAL="10800"

rem === End Settings ===

rem ==============================================================================================================================================

rem === Vars ===
set BIN_DIR="%SERVER_DIR%\Pal\Binaries\Win64"
set EXE="PalServer-Win64-Test-Cmd.exe"
set VER=v0.0.1
rem === End Vars ===



rem === Main Content ===
:main
cls
call :title

rem == Start Server ==
:start
call :colorEcho 02 "[PalHub] Starting Server"
echo:
echo:
timeout /t 3 /nobreak > nul

call :startserver

call :colorEcho 0a "[PalHub] Server Started"
echo:
echo:
goto wait
rem == End Start Server ==

rem == Wait For Restart ==
:wait
call :colorEcho 0e "[PalHub] Waiting for Restart"
echo:
echo:
timeout /t %RESTART_INTERVAL% /nobreak
echo:
goto stop
rem == End Wait For Restart ==

rem == Stop Server ==
:stop
call :colorEcho 04 "[PalHub] Stopping Server"
echo:
echo:

call :stopserver
timeout /t 2 /nobreak > nul

call :colorEcho 0c "[PalHub] Server Stopped"
echo:
echo:
timeout /t 5 /nobreak > nul
rem == End Stop Server ==
goto main

rem === End Main Content ===

rem ==============================================================================================================================================

rem === Functions ===

rem == Start Server FNC ==
:startserver
start /min /d "%BIN_DIR%" PalServer-Win64-Test-Cmd.exe
goto :eof
rem == End Start Server FNC ==

rem == Stop Server FNC ==
:stopserver
taskkill /f /im %EXE% > nul
goto :eof
rem == End Stop Server FNC ==

rem == Title FNC ==
:title
title PalHub %VER% by AriesLR
call :colorEcho 0b "[Title] PalHub %VER% by AriesLR"
echo:
echo:
echo:
goto :eof
rem == End Title FNC ==

rem === End Functions ===

rem ==============================================================================================================================================

rem === Per-Line Text Color ===
:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i
rem === End Per-Line Text Color ===