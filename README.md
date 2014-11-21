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
* Run the executable file and add the postfix "**/qn**, or **/quiet**", for example, to run **orbweb.me.exe /qn**, the windows installer will install this package quietly

## Run Service as Local System

In the Advanced Installer Windows, find the **Resources** -> **Services**, and then in the **Install And Control** pannel, find the **Service to Install** and click mouse right-click, to choose the **New Service Installation**. Then, left-click the **your service app** and open the **Service properties**, scroll down the page and fine the **Account**.

`When the UserName left empty, the service will run under the LocalSystem account.`

##User Interface Setup

###Themes
- Surface 

### Dialogs
####Bootstrapper UI
####MSI Package - First Time Install
* InstallDlg
* InstallTypeDlg
* VerifyReadyDlg
* ProgressDlg
* ExitDialog

##ISSUE - User Interface - Theme

When I use the Surfacce of the Themes of the User Interface, the InstallDlg Dialog features that has a file chooser to choose the rtf format file for LICENCE, if I choosed our one file to read and build than, the compiler will encounter the error that is **Failed to read RTF file "C:\xxx\EULA\Control.Text.LicenseAgreementDlg#AgreementText_2". Make sure you localized correctly the path for "Control.Text.LicenseAgreementDlg#AgreementText_2"."**

Solved method is that go to the **"C:\Program Files (x86)\Caphyon\Advanced Installer 11.4.1\resources"**, and repleace the **eula.rtf** to our licence file, notice that the file name can't changed!


## NSIS Silent mode
Using /S which runs the installer or uninstaller silently

##Reference 

* [Create a silent installation package](http://www.advancedinstaller.com/user-guide/qa-silent-install.html)
* [Create a log](http://www.advancedinstaller.com/user-guide/qa-log.html#automated-logging)
* [AdvancedInstaller Building from command line](http://www.advancedinstaller.com/user-guide/command-line.html)
* [How do I get the application exit code from a Windows command line](http://stackoverflow.com/questions/334879/how-do-i-get-the-application-exit-code-from-a-windows-command-line)
	* for windows: **echo %ERRORLEVEL%**
	* for linux: **echo $?**
* [EULA translation issue](http://www.advancedinstaller.com/forums/viewtopic.php?f=2&t=19625)
* [How do I localize the EULA and ReadMe text?](http://www.advancedinstaller.com/user-guide/qa-localize-element.html)
* [Professional Installation from CLI](http://www.advancedinstaller.com/user-guide/tutorial-professional-cli.html)
* [Windows Installer Advertised Shortcuts](http://www.advancedinstaller.com/user-guide/advertised-shortcuts.html)
* [Service properties](http://www.advancedinstaller.com/user-guide/service-properties.html)
* [NSIS Silent Mode](http://nsis.sourceforge.net/Docs/Chapter3.html)
