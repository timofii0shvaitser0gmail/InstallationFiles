@echo off
setlocal enabledelayedexpansion

mkdir "C:\AppTemp"
mkdir "C:\AppTemp\makutw"
mkdir "C:\AppTemp\key"

powershell -Command "Invoke-WebRequest -Uri 'https://github.com/AdderlyMark/adderly.github.io/raw/main/soft/MakuTweaker%20Setup.exe' -OutFile 'C:\AppTemp\makutw\MakuTweaker Setup.exe'"

powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/timofii0shvaitser0gmail/InstallationFiles/main/makefile.txt' -OutFile 'C:\AppTemp\key\key.txt'"

for %%A in (
    "7zip.7zip"
    "Google.Chrome"
    "Viber.Viber"
    "Telegram.TelegramDesktop"
    "MPC-HC.MPC-HC"
    "Discord.Discord"
    "Microsoft.VisualStudioCode"
    "Sandboxie.Plus"
    "ChatGPT.OpenAI"
    "FlowLauncher.FlowLauncher"
    "ONLYOFFICE.DesktopEditors"
    "Oracle.VirtualBox"
    "Microsoft.PowerToys"
    "Python.Python.3"
    "QL-Win.QuickLook"
    "ShareX.ShareX"
    "Valve.Steam"
    "Microsoft.VisualStudio.2022.Community"
) do (
    echo Installing                ----------------%%A----------------
    winget install --id=%%A -e
    start https://mega.nz/file/6F9gmCYI#hgtuuoqCbS3c-cIgIzeBb_4bNyWvd1KG43oECS-uVWI
    start https://mega.nz/file/aQ1ghKhY#7Y4Dd_33Jt9wKe8TMgAedzhYEggE9ve8Z2ctkYplrQ4
)

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRealtimeMonitoring" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableBehaviorMonitoring" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableOnAccessProtection" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableScanOnRealtimeEnable" /t REG_DWORD /d 1 /f

start "" "C:\Windows\Resources\Themes\dark.theme"

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "ColorPrevalence" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v SearchboxTaskbarMode /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowTaskViewButton /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarDa /t REG_DWORD /d 0 /f

shutdown /r /t 10
