


@echo off
:: Enable BSOD via Ctrl+Scroll (USB)
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdhid\Parameters" /v CrashOnCtrlScroll /t REG_DWORD /d 1 /f
echo Registry key added. Press Ctrl+Scroll Lock twice to trigger BSOD (USB keyboard).
pause
