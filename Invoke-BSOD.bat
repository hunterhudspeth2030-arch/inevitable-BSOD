@echo off
rem This line allows the crash to occur without a prompt
reg add HKLM
@echo off
REM Enable Crash Dumps
reg add "HKLM\BSOD\ControlSet001\Control\CrashControl" /v CrashDumpEnabled /t REG_DWORD /d 1 /f
REM Enable Forced Crash (Blue Screen)
reg add "HKLM\BSOD\ControlSet001\Control\CrashControl" /v ForceCrash /t REG_DWORD /d 1 /f
echo Registry keys updated successfully.
echo "have fun with the crash :)"
start /wait notepad.exe

