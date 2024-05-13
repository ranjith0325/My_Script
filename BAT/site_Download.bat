@echo off

rem Set the URL of the site to be downloaded
set url=https://www.merriam-webster.com/dictionary/command

rem Set the directory to download the site to
set directory=C:\Users\WorkStation\Desktop\test

rem Create the directory if it doesn't already exist
if not exist "%directory%" mkdir "%directory%"

rem Download the site using wget
wget.exe ^
  --recursive ^
  --no-clobber ^
  --page-requisites ^
  --html-extension ^
  --convert-links ^
  --restrict-file-names=windows ^
  --domains example.com ^
  --no-parent ^
  -P "%directory%" ^
  "%url%"
