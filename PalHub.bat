@echo off
SETLOCAL EnableDelayedExpansion
rem === Per-Line Text Color ===
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
rem === End Per-Line Text Color ===

rem ==============================================================================================================================================

rem === Settings ===

rem 7Zip Location
set ZIP_DIR="C:\Program Files\7-Zip\7z.exe"

rem Server Location
set SERVER_DIR="C:\PalworldServer"

rem Save Backup Location
set SAVEBACKUP_DIR="C:\PalworldServerBackups\Saves"

rem Config Backup Location
set CONFIGBACKUP_DIR="C:\PalworldServerBackups\Config"

rem Purge Interval in Minutes (1440 = 24 Hours)
set PURGE_INTERVAL="1440"

rem Restart Interval in Seconds (10800 = 3 Hours)
set RESTART_INTERVAL="10800"

rem === End Settings ===

rem ==============================================================================================================================================

rem === Vars ===
set SAVE_DIR="%SERVER_DIR%\Pal\Saved\SaveGames\0"
set CONFIG_DIR="%SERVER_DIR%\Pal\Saved\Config\WindowsServer\PalWorldSettings.ini"
set BIN_DIR="%SERVER_DIR%\Pal\Binaries\Win64"
set EXE="PalServer-Win64-Test-Cmd.exe"
set VER=v0.0.2
rem === End Vars ===

title PalHub %VER% by AriesLR

rem === Main Content ===
:main
cls
call :titlefnc

rem == Start Server ==
:start
call :colorEcho 02 "[PalHub] Starting Server"
echo:
echo:
timeout /t 3 /nobreak > nul

call :startserverfnc

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

call :stopserverfnc
timeout /t 2 /nobreak > nul

call :colorEcho 0c "[PalHub] Server Stopped"
echo:
echo:
timeout /t 5 /nobreak > nul
goto backup
rem == End Stop Server ==

rem == Backup ==
:backup
call :backupfnc
timeout /t 5 /nobreak > nul
goto purge
rem == End Backup ==

rem == Purge ==
:purge
call :purgefnc
timeout /t 5 /nobreak > nul
goto main
rem == End Purge ==


rem === End Main Content ===

rem ==============================================================================================================================================

rem === Functions ===

rem == Title FNC ==
:titlefnc
call :colorEcho 0b "[Title] PalHub %VER% by AriesLR"
echo:
echo:
echo:
goto :eof
rem == End Title FNC ==

rem == Time & Date FNC ==
:datefnc
rem Set variables for date & time output.
set CUR_YYYY=%date:~10,4%
set CUR_MM=%date:~4,2%
set CUR_DD=%date:~7,2%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)
set CUR_NN=%time:~3,2%
set DATE=%CUR_MM%-%CUR_DD%-%CUR_YYYY%_%CUR_HH%-%CUR_NN%
goto :eof
rem == End Time & Date FNC ==

rem == Start Server FNC ==
:startserverfnc
start /min /d "%BIN_DIR%" PalServer-Win64-Test-Cmd.exe
goto :eof
rem == End Start Server FNC ==

rem == Stop Server FNC ==
:stopserverfnc
taskkill /f /im %EXE% > nul
goto :eof
rem == End Stop Server FNC ==

rem == Backup FNC ==
:backupfnc
call :datefnc

call :colorEcho 05 "[PalHub] Backup Save Files"
echo:
echo:
timeout /t 1 /nobreak > nul

%ZIP_DIR% a -tzip "%SAVEBACKUP_DIR%\SaveBackup_%DATE%.zip" "%SAVE_DIR%" > nul
timeout /t 6 /nobreak > nul

call :colorEcho 05 "[PalHub] Backup Config Files"
echo:
echo:
timeout /t 1 /nobreak > nul

%ZIP_DIR% a -tzip "%CONFIGBACKUP_DIR%\ConfigBackup_%DATE%.zip" "%CONFIG_DIR%" > nul
timeout /t 6 /nobreak > nul

call :colorEcho 0d "[PalHub] All Backups Complete"
echo:
echo:
timeout /t 1 /nobreak > nul

goto :eof
rem == End Backup FNC ==

rem == Purge FNC ==
:purgefnc
call :colorEcho 01 "[PalHub] Purging Save Backups"
echo:
echo:
timeout /t 2 /nobreak > nul
powershell.exe -ExecutionPolicy Bypass -Command "Get-ChildItem -path %SAVEBACKUP_DIR% | where {$_.Lastwritetime -lt (date).addminutes(-%PURGE_INTERVAL%)} | remove-item"

call :colorEcho 01 "[PalHub] Purging Config Backups"
echo:
echo:
timeout /t 2 /nobreak > nul
powershell.exe -ExecutionPolicy Bypass -Command "Get-ChildItem -path %CONFIGBACKUP_DIR% | where {$_.Lastwritetime -lt (date).addminutes(-%PURGE_INTERVAL%)} | remove-item"

call :colorEcho 09 "[PalHub] Purge Complete"
echo:
echo:
timeout /t 2 /nobreak > nul
goto :eof
rem == End Purge FNC ==



rem === End Functions ===

rem ==============================================================================================================================================

rem === Per-Line Text Color ===
:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i
rem === End Per-Line Text Color ===