REM @echo off
REM setlocal

REM rem Set the output file path
REM set "outputFile=C:\Users\WorkStation\Desktop\New Text Document (2).txt"

REM rem Get system information using systeminfo command
REM echo Gathering system information...
REM systeminfo > "%outputFile%"

REM rem Additional commands to gather more information can be added here
REM rem For example, you can use wmic commands to gather more details

REM echo Detailed system information collected and saved to %outputFile%.

REM endlocal



@echo off
setlocal

rem Define the output file path
set "outputFile=C:\Users\WorkStation\Desktop\New Text Document (2).txt"

rem Clear the output file if it already exists
if exist "%outputFile%" del "%outputFile%"

rem Write basic system information to the output file
echo System Information >> "%outputFile%"
systeminfo >> "%outputFile%"

rem Write MAC addresses to the output file
echo MAC Addresses >> "%outputFile%"
ipconfig /all | find "Physical Address" >> "%outputFile%"

rem Write HDD size to the output file
REM echo HDD Size >> "%outputFile%"
REM wmic diskdrive get caption,size >> "%outputFile%"

echo HDD Size >> "%outputFile%"
for /f "skip=1 tokens=1,2" %%a in ('wmic diskdrive get size') do (
    echo %%a %%b >> "%outputFile%"
)

REM echo HDD Size (GB) >> "%outputFile%"
REM for /f "skip=1 tokens=1,2" %%a in ('wmic diskdrive get caption^,size') do (
    REM set /a "sizeGB=%%b / 1024 / 1024 / 1024"
    REM echo %%a !sizeGB! GB >> "%outputFile%"
REM )

REM echo HDD Size (GB) >> "%outputFile%"
REM for /f "skip=1 tokens=1,2" %%a in ('wmic diskdrive get caption^,size') do (
    REM set /a "sizeGB=%%b / 1024 / 1024 / 1024"
    REM echo %%a !sizeGB! GB >> "%outputFile%"
REM )

REM echo HDD Size (GB) >> "%outputFile%"
REM for /f "skip=1 tokens=1,2" %%a in ('wmic diskdrive get caption^, size') do (
    REM set /a "size=%%b / 1024 / 1024 / 1024"
    REM echo %%a size GB>> "%outputFile%"
	
REM )

echo HDD Size (GB) >> "%outputFile%"
for /f "skip=1 tokens=1,2" %%a in ('wmic diskdrive get size') do (
    set /a "size=%%b / 1024 / 1024 / 1024"
    echo %%a !size! GB >> "%outputFile%"
)

echo System information has been collected and saved to %outputFile%.

endlocal
