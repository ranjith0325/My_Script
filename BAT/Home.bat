echo
cd c:/adb
adb connect 127.0.0.1:58526
adb push %1 /sdcard/
pause