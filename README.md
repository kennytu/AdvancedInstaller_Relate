#AdvancedInstaller Command Line

##Using command line to build AdvancedInstaller Project

### Normal Mode 
* AdvancedInstaller.com /build OrbWeb.Me.aip
* AdvancedInstaller.com /rebuild OrbWeb.Me.aip

### Silent mode

* AdvancedInstaller.com /build OrbWeb.Me.aip > NUL
* AdvancedInstaller.com /rebuild OrbWeb.Me.aip > NUL


### Example

 The OrbWeb.Me.aip is the AdvancedInstaller project file for example


##Using command line to run executable binary via silent mode

* You need to have the Administrator Owner.
* Run the executable file and add the postfix "**/qn**, or **/quiet**", for example, to run **orbweb.me.exe /qn***, the windows installer will install this package quietly


##Reference 

* [Create a silent installation package](http://www.advancedinstaller.com/user-guide/qa-silent-install.html)
* [Create a log](http://www.advancedinstaller.com/user-guide/qa-log.html#automated-logging)
* [AdvancedInstaller Building from command line](http://www.advancedinstaller.com/user-guide/command-line.html)
* [How do I get the application exit code from a Windows command line](http://stackoverflow.com/questions/334879/how-do-i-get-the-application-exit-code-from-a-windows-command-line)
	* for windows: **echo %ERRORLEVEL%**
	* for linux: **echo $?**
