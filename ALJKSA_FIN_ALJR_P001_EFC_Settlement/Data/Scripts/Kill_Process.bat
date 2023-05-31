@echo off
:: %* => represents the list of processes to kill like excel,msedge,chrome,saplogon
set processlist=%*
::echo list = "%processlist%"
for %%p in ("%processlist:,=" "%") do ( 
  ::echo process name is %%p  
  taskkill /f /im %%p.exe /fi "USERNAME eq %USERNAME%"
)
::pausell /f /im saplogon.exe /fi "USERNAME eq %USERNAME%"