@echo off
setlocal EnableDelayedExpansion

set "source_folder=D:\test\Camera"
set "target_folder=%source_folder%"

for %%f in ("%source_folder%\*.*") do (
    for /f "tokens=1 delims=/ " %%a in ('echo %%~tf') do (
        set "year=%%a"
        if not exist "%target_folder%\!year!" mkdir "%target_folder%\!year!"
        move "%%f" "%target_folder%\!year!" >nul
    )
)

echo Done!
pause