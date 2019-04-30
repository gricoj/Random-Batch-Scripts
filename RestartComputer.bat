@echo off
:start
set /p computername= "Enter Computer Name: "
shutdown /r /m \\%computername%
goto start
PAUSE
