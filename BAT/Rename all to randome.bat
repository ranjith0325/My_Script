@echo off
setlocal enabledelayedexpansion

rem Set the source directory
set "sourcePath=C:\Users\WorkStation\Desktop\New folder (2)"

rem Iterate through each file in the source directory
for %%F in ("%sourcePath%\*.*") do (
    rem Generate a random number between 1 and 9999
    set /a "randomNumber=!random! %% 9999 + 1"

    rem Get the file extension
    for %%E in ("%%~xF") do (
        rem Construct the destination file path
        set "destinationFile=%sourcePath%\!randomNumber!%%~xE"

        rem Check if the destination file already exists
        if exist "!destinationFile!" (
            rem If it does, generate a new random number
            set /a "randomNumber=!random! %% 9999 + 1"
            set "destinationFile=%sourcePath%\!randomNumber!%%~xE"
        )

        rem Rename the file
        ren "%%F" "!randomNumber!%%~xE"
    )
)

echo All files renamed to random numbers with original extensions.

endlocal
