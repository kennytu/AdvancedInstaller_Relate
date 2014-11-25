@echo on
rem remove task  
taskkill /F /T /IM net1.exe
taskkill /F /T /IM console.exe
taskkill /F /T /IM cconsole-7.exe
taskkill /F /T /IM cconsole-8.exe
taskkill /F /T /IM wow_i.exe
taskkill /F /T /IM run.exe
taskkill /F /T /IM nginx.exe
taskkill /F /T /IM webcam.exe
taskkill /F /T /IM svcmain.exe
rem remove services


sc stop OU
sc delete OU

sc stop OD
sc delete OD

sc stop SVCM
sc delete SVCM

sc stop OM
sc delete OM


C:\"Program Files"\Kloudian\svcad.exe -uninstall yes
C:\"Program Files (x86)"\Kloudian\svcad.exe -uninstall yes
C:\"Program Files"\Kloudian\svcac.exe -uninstall yes
C:\"Program Files (x86)"\Kloudian\svcac.exe -uninstall yes

C:\"Program Files"\kloudian\"Orbweb Me"\Uninstall.exe /S
C:\"Program Files (x86)"\kloudian\"Orbweb Me"\Uninstall.exe /S

rem remove the firewall rule
netsh advfirewall firewall delete rule name=\"Orbweb HTTP\"
netsh advfirewall firewall delete rule name=\"Orbweb HTTPS\"
netsh advfirewall firewall delete rule name=\"Orbweb RDP\"
netsh advfirewall firewall delete rule name=\"Orbweb Tunnel Server\"
netsh advfirewall firewall delete rule name=\"Orbweb Daemon Service\"

rmdir /s /q C:\"Program Files"\Kloudian
rmdir /s /q C:\"Program Files (x86)"\Kloudian
rmdir /s /q C:\ProgramData\Orbweb
rmdir /S /Q C:\ProgramData\Microsoft\Windows\"Start Menu"\Programs\Kloudian

rem delete OrbwebAdmin
for /D %%f in (C:\Users\OrbwebAdmin*) do rmdir %%f /S /Q

rem delete kloudian uninstall registy (it will show the program uninstall / change list)
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Orbweb.ME /va /f