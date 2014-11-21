
taskkill /F /T /IM net1.exe

taskkill /F /T /IM console.exe

taskkill /F /T /IM cconsole-7.exe

taskkill /F /T /IM cconsole-8.exe

taskkill /F /T /IM wow_i.exe

sc stop OM

sc delete OM

sc stop SVCM

sc delete SVCM

C:\Program Files\Kloudian\svcad.exe -uninstall yes

C:\Program Files (x86)\Kloudian\svcad.exe -uninstall yes

C:\Program Files (x86)\Kloudian\svcac.exe -uninstall yes (if we need)

netsh advfirewall firewall delete rule name=\"Orbweb HTTP\"

netsh advfirewall firewall delete rule name=\"Orbweb HTTPS\"

netsh advfirewall firewall delete rule name=\"Orbweb RDP\"

netsh advfirewall firewall delete rule name=\"Orbweb Tunnel Server\"

netsh advfirewall firewall delete rule name=\"Orbweb Daemon Service\"


BUG 1
------------------------------------------------
Service Name: SVCM

Display Name: Application Publishing Service APS

Description : If this service is disabled, any services that explicitly depend on it will fail to start.

Path to executable:
"C:\Program Files (x86)\kloudian\svcmain.exe"

While the Kloudian Orbweb.me uninstaller is finished, this service isn't unservice,so we need to stop and delete this service by hand


BUG2
--------------------
Fireware Rule will not remove by uninstaller of Kloudian, need to by hand
