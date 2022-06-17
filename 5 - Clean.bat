@echo off

fltmc >nul 2>&1 || (
    echo Administrator privileges are required.
    PowerShell Start -Verb RunAs '%0' 2> nul || (
        echo Right-click on the script and select "Run as administrator".
        pause & exit 1
    )
    exit 0
)

:: Killing Connection
echo   # Terminating Connection&echo.
>nul 2>&1 ipconfig/release

:: Deleting Windows Logs and Traces etc
echo   # Optimizing System&echo.
>nul 2>&1(
	certutil -URLCache * delete
	del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Microsoft OneDrive.lnk" /s /f /q
	del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\OneDrive.lnk" /s /f /q
	del "%ProgramData%\Microsoft\Windows Defender\Scans\History\" /s /f /q
	del "%USERPROFILE%\Links\OneDrive.lnk" /s /f /q
	del /f /q  %SystemRoot%\Logs\CBS\CBS.log
	del /f /q  %SystemRoot%\Logs\DISM\DISM.log
	del /f /q "%APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\*"
	del /f /q "%APPDATA%\Microsoft\Windows\Recent\CustomDestinations\*"
	del /f /q "%localappdata%\Google\Software Reporter Tool\*.log"
	del /f /q "%LocalAppData%\Microsoft\CLR_v4.0\UsageTraces\*"
	del /f /q "%LocalAppData%\Microsoft\CLR_v4.0_32\UsageTraces\*"
	del /f /q "%localappdata%\Microsoft\Windows\INetCache\IE\*"
	del /f /q "%SystemRoot%\Logs\NetSetup\*"
	del /f /q "%SystemRoot%\Logs\SIH\*"
	del /f /q "%SystemRoot%\System32\LogFiles\setupcln\*"
	del /f /q "%SystemRoot%\Traces\WindowsUpdate\*"
	del /f /q %localappdata%\Microsoft\Windows\WebCache\*.*
	del /f /q %ProgramFiles(x86)%\Steam\appcache\*.log
	del /f /q %ProgramFiles(x86)%\Steam\Dumps
	del /f /q %ProgramFiles(x86)%\Steam\Traces
	del /f /q %SystemRoot%\comsetup.log
	del /f /q %SystemRoot%\debug\PASSWD.LOG
	del /f /q %SystemRoot%\DtcInstall.log
	del /f /q %SystemRoot%\inf\setupapi.app.log
	del /f /q %SystemRoot%\inf\setupapi.dev.log
	del /f /q %SystemRoot%\inf\setupapi.offline.log
	del /f /q %SystemRoot%\Panther\*
	del /f /q %SystemRoot%\Performance\WinSAT\winsat.log
	del /f /q %SystemRoot%\PFRO.log
	del /f /q %SystemRoot%\ServiceProfiles\LocalService\AppData\Local\Temp\*.*
	del /f /q %SystemRoot%\setupact.log
	del /f /q %SystemRoot%\setupapi.log
	del /f /q %SystemRoot%\setuperr.log
	del /f /q %SystemRoot%\System32\catroot2.chk
	del /f /q %SystemRoot%\System32\catroot2.edb
	del /f /q %SystemRoot%\System32\catroot2.jrs
	del /f /q %SystemRoot%\System32\catroot2.log
	del /f /q %SystemRoot%\System32\catroot2\dberr.txt
	del /f /q %SystemRoot%\Temp\CBS\*
	del /f /s /q %appdata%\Listary\UserData
	del /f /s /q /a %LocalAppData%\Microsoft\Windows\Explorer\*.db
	del /f/s/q/a "%appdata%\discord\Cache\*"
	del /f/s/q/a "%appdata%\discord\Code Cache\*"
	del /f/s/q/a "%appdata%\discord\GPUCache\*"
	del /f/s/q/a "%appdata%\Zoom\appsafecheck.txt"
	del /f/s/q/a "%appdata%\Zoom\installer.txt"
	del /f/s/q/a "%appdata%\Zoom\logs\*"
	del /f/s/q/a "%appdata%\Zoom\reports\*"
	del /f/s/q/a "%homepath%\AppData\Local\Microsoft\Windows\Explorer\iconcache*"
	del /f/s/q/a "%homepath%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_*.db"
	del /f/s/q/a "%LOCALAPPDATA%\Microsoft\CLR_v4.0\UsageTraces\*"
	del /f/s/q/a "%LOCALAPPDATA%\Microsoft\CLR_v4.0_32\UsageTraces\*"
	del /f/s/q/a "%LOCALAPPDATA%\Microsoft\Windows\WebCache\*"
	del /f/s/q/a "%LOCALAPPDATA%\Mozilla\Firefox\Profiles\3j6dg8kl.default\cache2\entries\*"
	del /f/s/q/a "%LOCALAPPDATA%\Mozilla\Firefox\Profiles\em5zfttk.default-release\cache2\entries\*"
	del /f/s/q/a "%systemdrive%\AMD"
	del /f/s/q/a "%systemdrive%\desktop.ini"
	del /f/s/q/a "%systemdrive%\Intel"
	del /f/s/q/a "%systemdrive%\MSOCache\*"
	del /f/s/q/a "%systemdrive%\PerfLogs\*"
	del /f/s/q/a "%systemdrive%\Recovery\*"
	del /f/s/q/a "%systemdrive%\Users\Public\*"
	del /f/s/q/a "%SystemRoot%\CbsTemp\*"
	del /f/s/q/a "%SystemRoot%\debug"
	del /f/s/q/a "%SystemRoot%\debug\PASSWD.LOG"
	del /f/s/q/a "%SystemRoot%\Logs"
	del /f/s/q/a "%SystemRoot%\Logs\NetSetup\*"
	del /f/s/q/a "%SystemRoot%\Logs\SIH\*"
	del /f/s/q/a "%SystemRoot%\memory.dmp"
	del /f/s/q/a "%SystemRoot%\ModemLogs\*"
	del /f/s/q/a "%SystemRoot%\Performance\WinSAT\winsat.log"
	del /f/s/q/a "%SystemRoot%\Prefetch\*"
	del /f/s/q/a "%SystemRoot%\rescache\_merged\*"
	del /f/s/q/a "%SystemRoot%\SchCache\*"
	del /f/s/q/a "%SystemRoot%\System32\LogFiles\setupcln\*"
	del /f/s/q/a "%SystemRoot%\Traces\WindowsUpdate\*"
	del /f/s/q/a "%SystemRoot%\UserviceProfiles\LocalService\AppData\Local\Microsoft\Windows\qwavecache.dat"
	del /f/s/q/a "%SystemRoot%\UserviceProfiles\NetworkService\NTSER.dat"
	del /f/s/q/a "%SystemRoot%\win.ini"
	del /f/s/q/a "%windir%\SoftwareDistribution\Download\*"
	del /q /s /f "%localappdata%\Apple Computer\Safari\Cache.db"
	del /q /s /f "%localappdata%\Apple Computer\Safari\Cookies.db"
	del /q /s /f "%localappdata%\Apple Computer\Safari\WebpageIcons.db"
	del /q /s /f "%USERPROFILE%\Local Settings\Application Data\Apple Computer\Safari\Cache.db"
	del /q /s /f "%USERPROFILE%\Local Settings\Application Data\Apple Computer\Safari\Cookies.db"
	del /q /s /f "%USERPROFILE%\Local Settings\Application Data\Safari\WebpageIcons.db"
	takeown /f %SystemRoot%\Logs\waasmedic /r /d y
	icacls %SystemRoot%\Logs\waasmedic /grant administrators:F /t
	net stop dps&del /f/s/q/a "%windir%\System32\sru\*"
	taskkill /f /im OneDrive.exe
	rd "%LocalAppData%\Microsoft\OneDrive" /q /s
	rd "%ProgramData%\Microsoft OneDrive" /q /s
	rd "%SystemDrive%\OneDriveTemp" /q /s
	rd "%UserProfile%\OneDrive" /q /s
	rd /s /q "%APPDATA%\Macromedia\Flash Player"
	rd /s /q "%APPDATA%\Microsoft\Windows\Cookies"
	rd /s /q "%APPDATA%\Opera\Opera"
	rd /s /q "%APPDATA%\Sun\Java\Deployment\cache"
	rd /s /q "%localappdata%\Google\Chrome\User Data\Crashpad\reports\"
	rd /s /q "%localappdata%\Google\CrashReports\"
	rd /s /q "%localappdata%\Microsoft\Feeds Cache"
	rd /s /q "%localappdata%\Microsoft\Internet Explorer"
	rd /s /q "%localappdata%\Microsoft\InternetExplorer\DOMStore"
	rd /s /q "%localappdata%\Microsoft\Windows\INetCookies"
	rd /s /q "%localappdata%\Microsoft\Windows\WebCache"
	rd /s /q "%localappdata%\Opera\Opera"
	rd /s /q "%USERPROFILE%\Local Settings\Application Data\Opera\Opera"
	rd /s /q %SystemRoot%\Logs\waasmedic
	rmdir /s /q "%AppData%\vstelemetry"
	rmdir /s /q "%LocalAppData%\Microsoft\VSApplicationInsights"
	rmdir /s /q "%ProgramData%\Microsoft\VSApplicationInsights"
	rmdir /s /q "%Temp%\Microsoft\VSApplicationInsights"
	rmdir /s /q "%Temp%\VSFaultInfo"
	rmdir /s /q "%Temp%\VSFeedbackPerfWatsonData"
	rmdir /s /q "%Temp%\VSFeedbackVSRTCLogs"
	rmdir /s /q "%Temp%\VSRemoteControl"
	rmdir /s /q "%Temp%\VSTelem"
	rmdir /s /q "%Temp%\VSTelem.Out"
	rmdir /s /q "%USERPROFILE%\.dotnet\TelemetryStorageService"
	rmdir /s/q "%PROGRAMFILES(X86)%\Microsoft"
	rmdir /s/q "%PROGRAMFILES(X86)%\Windows Sidebar"
	RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2  rem Clear Cookies
	RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8  rem Clear Temporary Internet Files
	RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16 rem Clear Form Data
	RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 32 rem Clear Saved Passwords
)

echo   # Configuring Network Settings&echo.
>nul 2>&1(
	netsh interface ip delete destinationcache
	netsh interface ip delete neighbors
	netsh interface httpstunnel reset
	netsh interface ip reset catalog
	netsh interface portproxy reset
	netsh interface udp reset
	netsh interface tcp reset
	netsh interface ip reset
	netsh winsock set autotuning off
	netsh winhttp reset autoproxy
	netsh winsock reset catalog
	netsh winhttp reset tracing
	netsh winhttp reset proxy
	netsh winsock reset
	netsh dhcpclient trace disable
	netsh http flush logbuffer
	netsh http delete cache
	netsh branchcache reset
	netsh trace stop
	netsh rpc reset
	netsh advfirewall reset
	netsh advfirewall firewall set rule group="Network Discovery" new enable=No
	arp -d *
	netsh interface ip delete arpcache
	nbtstat -R
	nbtstat -RR
	bcdedit -set TESTSIGNING OFF
	ipconfig/flushdns
	for /f "skip=2 tokens=3*" %%a in ('netsh interface show interface') do (
		netsh dnsclient set dnsservers name="%%a" source=dhcp
		netsh interface ip set winsservers name="%%a" source=dhcp
		netsh interface ip set address name="%%a" dhcp
		netsh interface ip set dns name="%%a" dhcp
	)
)

echo   # Emptying Recycle Bins&echo.

>nul 2>&1(
	del /f /q %localappdata%\Temp\*
	rd /s /q "%WINDIR%\Temp"
	rd /s /q "%TEMP%"
	del /f/s/q/a %systemdrive%\*.log,*.LOG,*.etl,*.tmp,*.hta
	powershell Clear-RecycleBin -Force -ErrorAction SilentlyContinue
	taskkill /f /im explorer.exe
	explorer.exe
)

echo   # Restoring Connection&echo.

>nul 2>&1 ipconfig/renew

echo   # Success!&echo.
