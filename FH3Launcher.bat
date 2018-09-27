@echo off
@echo Forza Horizon 3 Language Tool
@echo Set Language to English
powershell.exe -file Language_English.ps1
@echo Starting Forza Horizon 3
start /w launch-forzahorizon3-releasefinal:
@echo Set Language to Original
powershell.exe -file Language_Original.ps1