@echo off

echo MAC Address:
echo -------------
getmac

echo Serial Number:
echo ---------------
wmic bios get serialnumber

echo CPU Information:
echo -----------------
wmic cpu get name, manufacturer, maxclockspeed

echo IP Address:
echo -----------
ipconfig | findstr /C:"IPv4 Address" 

echo Processor Information:
echo ----------------------
wmic cpu get name, caption, deviceid, maxclockspeed | findstr /C:"Name" /C:"Caption" /C:"DeviceID" /C:"MaxClockSpeed"


echo System Information:
echo -------------------
systeminfo | findstr /C:"OS Name" /C:"OS Version" /C:"System Type" /C:"Total Physical Memory"

echo Processor Information:
echo ----------------------
wmic cpu get name, caption, deviceid, maxclockspeed | findstr /C:"Name" /C:"Caption" /C:"DeviceID" /C:"MaxClockSpeed"

echo Hard Drive Information:
echo -----------------------
wmic diskdrive get caption, deviceid, size | findstr /C:"Caption" /C:"DeviceID" /C:"Size"

echo Network Adapter Information:
echo ----------------------------
wmic nic get name, macaddress | findstr /C:"Name" /C:"MACAddress"

echo Display Adapter Information:
echo ----------------------------
wmic path win32_VideoController get name, adapterram, driverversion | findstr /C:"Name" /C:"AdapterRAM" /C:"DriverVersion"

pause