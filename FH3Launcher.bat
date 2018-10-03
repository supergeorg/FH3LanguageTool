@echo off
@echo   _____                     _   _            _                  _____ 
@echo  ^|  ___^|__  _ __ ______ _  ^| ^| ^| ^| ___  _ __(_)_______  _ __   ^|___ / 
@echo  ^| ^|_ / _ \^| '__^|_  / _` ^| ^| ^|_^| ^|/ _ \^| '__^| ^|_  / _ \^| '_ \    ^|_ \ 
@echo  ^|  _^| (_) ^| ^|   / / (_^| ^| ^|  _  ^| (_) ^| ^|  ^| ^|/ / (_) ^| ^| ^| ^|  ___) ^|
@echo  ^|_^|  \___/^|_^|  /___\__,_^| ^|_^| ^|_^|\___/^|_^|  ^|_/___\___/^|_^| ^|_^| ^|____/ 
@echo 							Language Tool
@echo
@echo

@echo Storing Culture...
for /f "tokens=2" %%a in (' powershell Get-Culture ') do set "Culture=%%a"

@echo Setting Language to English...
powershell Set-Culture en-US

@echo Starting Forza Horizon 3...
start /w launch-forzahorizon3-releasefinal:

pause

@echo Setting Language back to Original...
powershell Set-Culture %Culture%

@echo Ending Script