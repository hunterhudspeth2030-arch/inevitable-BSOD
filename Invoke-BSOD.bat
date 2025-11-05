@echo off
rem This line allows the crash to occur without a prompt
reg add HKLM
@echo off
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v CrashDumpEnabled /t REG_DWORD /d 1 /f && reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v ForceCrash /t REG_DWORD /d 1 /f
echo "have fun with the crash :)"
start /wait notepad.exe


