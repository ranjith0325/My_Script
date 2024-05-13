@echo off

set source_folder=C:\Users\WorkStation\Desktop\test1
set destination_folder=C:\Users\WorkStation\Desktop\test2

robocopy "%source_folder%" "%destination_folder%" /mir /np /ndl /nfl /tee /log:"sync_log.txt"
