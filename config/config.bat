rem ========================================================================
rem ========================= PalHub Configuration =========================
rem ========================================================================

rem Make sure to change these values or PalHub will not work.
rem The locations and RCON are essential, you can skip the intervals if you'd like.

rem ========================================================================
rem =========================== RCON Requirements ==========================
rem ========================================================================
rem In your PalWorldSettings.ini (SERVER_DIR\Pal\Saved\Config\WindowsServer)
rem RCONEnabled=True

rem ========================================================================
rem ========================= Edit The Config Below ========================
rem ========================================================================

rem === Requirements Locations ===

rem 7Zip Location
set ZIP_DIR="C:\Program Files\7-Zip\7z.exe"




rem === Server & Save Locations ===

rem Server Location
set SERVER_DIR="C:\PalworldServer"

rem Backup Location
rem Note: Path cannot contain spaces
set BACKUP_DIR="C:\PalworldServerBackups"



rem === Rcon Information ===

rem Rcon IP:Port
set RCON_IP="47.232.24.234:25575"

rem Rcon Password
set RCON_PASS="CVP"




rem === Intervals ===

rem Purge Interval in Minutes (1440 = 24 Hours)
set PURGE_INTERVAL=1440

rem Restart Interval in Seconds (10800 = 3 Hours)
set RESTART_INTERVAL=10800