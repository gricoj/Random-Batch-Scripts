# Random Batch Scripts


### CheckWhoIsLoggedIn.bat
This script was used to check what user was logged into a computer. 

The script asks you for the computername (hostname/ip address) and then it returns what user is currently logged in. It would then loop back to the begin and ask for a new computer name.
```batch
@echo off
:start
set /p computername= "Enter Computer Name: "
WMIC /Node: "%computername%" computersystem get username
goto start
PAUSE
```
The reason why this script was created was because I would RDP into users' computers and I wanted to know if anyone was logged in before doing so.

### RestartComputer.bat
This script was used to restart a computer remotely.

The script asks you for the computername (hostname/ip address) and it would restart the computer (not immediatly). It would then loop back to the begin and ask for a new computer name. 
```batch
@echo off
:start
set /p computername= "Enter Computer Name: "
shutdown /r /m \\%computername%
goto start
PAUSE
```
This script was simply created so that I could restart a computer remotely, instead of having to manually execute the *shutdown.exe /r* command when RDP'd in.
