@echo off
rem This line allows the crash to occur without a prompt
echo Y|reg load HKLM\bsod C:\Windows\System32\config\SYSTEM
reg add HKLM\bsod\ControlSet001\Control\CrashControl /v CrashDumpEnabled /t REG_DWORD /d 1 /f
reg add HKLM\bsod\ControlSet001\Control\CrashControl /v ForceCrash /t REG_DWORD /d 1 /f
reg unload HKLM\bsod
echo "have fun with the crash :)"
start /wait notepad.exe

