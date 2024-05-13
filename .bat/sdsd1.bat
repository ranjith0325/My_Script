@echo off

echo Connecting to OPPO Enco Buds...

:: Replace the MAC address below with the MAC address of your device
:: You can find the MAC address of your device in the Bluetooth settings
:: Make sure to remove any colons in the MAC address
set MAC_ADDRESS=6c:0d:e1:2b:f0:3a

:: Run the command to connect to the device
:: Note: You need to have administrator privileges to run this command
:: You may need to change the adapter name (in this case, "Local Area Connection") to match the name of your Bluetooth adapter
:: You may also need to change the timeout value (in this case, 5 seconds) to allow enough time for the connection to be established
netsh advfirewall firewall set rule group="Network Discovery" new enable=Yes
timeout /t 5
btpair -b %MAC_ADDRESS% -d "OPPO Enco Buds"
pause
