@echo off
setlocal

rem Set the source and destination paths
set "sourcePath=C:\Users\WorkStation\AppData\Roaming\Microsoft\Windows\Themes"
set "destinationPath=C:\Users\WorkStation\Pictures"

rem Generate a random number between 1 and 9999
set /a "randomNumber=%random% %% 9999 + 1"

rem Construct the source and destination file paths
set "sourceFile=%sourcePath%\TranscodedWallpaper"
set "destinationFile=%destinationPath%\%randomNumber%.jpg"

rem Check if the source file exists
if not exist "%sourceFile%" (
    echo Source file not found.
    exit /b
)

rem Rename and copy the file
copy "%sourceFile%" "%destinationFile%"

echo File copied and renamed to %randomNumber%".jpg

REM %randomNumber%
endlocal