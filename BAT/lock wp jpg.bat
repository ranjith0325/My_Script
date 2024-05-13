@echo off
setlocal enabledelayedexpansion

rem Set source and destination paths
set "sourcePath=C:\Users\WorkStation\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets"
set "destinationPath=C:\Users\WorkStation\Desktop\sdasfas"

rem Create the destination directory if it doesn't exist
if not exist "%destinationPath%" mkdir "%destinationPath%"

rem Copy files from source to destination and add .jpg extension
echo Copying files and adding .jpg extension...
for %%F in ("%sourcePath%\*") do (
    set "randomNumber=!random!"
    set "destinationFile=%destinationPath%\!randomNumber!.jpg"
    copy "%%F" "!destinationFile!"
)

echo Files copied and renamed with random numbers and .jpg extension.

endlocal