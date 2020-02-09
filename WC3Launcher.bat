@echo off
@echo "  __    __                          __ _      _____ _____ _____ "
@echo " / / /\ \ \__ _ _ __ ___ _ __ __ _ / _| |_    \_   \\_   \\_   \"
@echo " \ \/  \/ / _` | '__/ __| '__/ _` | |_| __|    / /\/ / /\/ / /\/"
@echo "  \  /\  / (_| | | | (__| | | (_| |  _| |_  /\/ /_/\/ /_/\/ /_  "
@echo "   \/  \/ \__,_|_|  \___|_|  \__,_|_|  \__| \____/\____/\____/  "
@echo "  							Language Tool					  "

@echo Storing Culture...
for /f "tokens=2" %%a in (' powershell Get-Culture ') do set "Culture=%%a"

@echo Setting Language to English...
powershell Set-Culture en-US

@echo Starting Warcraft III...
powershell "&'%~dp0x86_64\Warcraft III.exe'"

@echo Waiting for 1 second to start
timeout 1

@echo Setting Language back to Original...
powershell Set-Culture %Culture%

@echo Ending Script