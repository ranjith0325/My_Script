@echo off
echo Connecting to Bluetooth speaker...
set deviceName=hgghj
for /f "tokens=2 delims=: " %%a in ('btdiscovery -s') do (
    if "%%a"=="%deviceName%" (
        btpair -p %%a
        btspp connect %%a
        echo Connected to %deviceName%.
        exit /b
    )
)
echo Unable to find device named %deviceName%.
