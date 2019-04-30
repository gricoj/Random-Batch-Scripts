@echo off
:start
set /p computername= "Enter Computer Name: "
WMIC /Node: "%computername%" computersystem get username
goto start
PAUSE
