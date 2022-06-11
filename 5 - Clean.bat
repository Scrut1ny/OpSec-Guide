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
	del /f/s/q/a "%appdata%\Zoom\logs\*"
	del /f/s/q/a "%appdata%\Zoom\reports\*"
	del /f/s/q/a "%appdata%\Zoom\installer.txt"
	del /f/s/q/a "%appdata%\Zoom\appsafecheck.txt"

	del /f/s/q/a "%appdata%\discord\Cache\*"
	del /f/s/q/a "%appdata%\discord\GPUCache\*"
	del /f/s/q/a "%appdata%\discord\Code Cache\*"

	del /f/s/q/a "%LOCALAPPDATA%\Mozilla\Firefox\Profiles\3j6dg8kl.default\cache2\entries\*"         rem Firefox cache
	del /f/s/q/a "%LOCALAPPDATA%\Mozilla\Firefox\Profiles\em5zfttk.default-release\cache2\entries\*"
	del /f/s/q/a "%LOCALAPPDATA%\Microsoft\CLR_v4.0\UsageTraces\*"                                   rem Common Language Runtime Logs
	del /f/s/q/a "%LOCALAPPDATA%\Microsoft\CLR_v4.0_32\UsageTraces\*"
	del /f/s/q/a "%LOCALAPPDATA%\Microsoft\Windows\WebCache\*"                                       rem Clear user web cache database
	
	del /f/s/q/a "%SystemRoot%\UserviceProfiles\NetworkService\NTSER.dat"
	del /f/s/q/a "%SystemRoot%\UserviceProfiles\LocalService\AppData\Local\Microsoft\Windows\qwavecache.dat"
	del /f/s/q/a "%SystemRoot%\SchCache\*"
	del /f/s/q/a "%SystemRoot%\memory.dmp"
	del /f/s/q/a "%SystemRoot%\win.ini"
	del /f/s/q/a "%SystemRoot%\debug"
	del /f/s/q/a "%SystemRoot%\Logs"
	del /f/s/q/a "%SystemRoot%\CbsTemp\*"
	del /f/s/q/a "%SystemRoot%\ModemLogs\*"
	del /f/s/q/a "%SystemRoot%\Prefetch\*"
	del /f/s/q/a "%SystemRoot%\rescache\_merged\*"
	del /f/s/q/a "%SystemRoot%\SchCache\*"
	del /f/s/q/a "%systemdrive%\PerfLogs\*"
	del /f/s/q/a "%systemdrive%\desktop.ini"
	del /f/s/q/a "%systemdrive%\MSOCache\*"
	del /f/s/q/a "%systemdrive%\Users\Public\*"
	del /f/s/q/a "%systemdrive%\Recovery\*"
	del /f/s/q/a "%systemdrive%\AMD"
	del /f/s/q/a "%systemdrive%\Intel"
	del /f/s/q/a "%systemdrive%\Users\Public\*"
	
	del /f/s/q/a "%SystemRoot%\Performance\WinSAT\winsat.log" rem Clear Windows System Assessment Tool logs
	del /f/s/q/a "%SystemRoot%\debug\PASSWD.LOG"              rem Clear Password change events
	del /f/s/q/a "%SystemRoot%\Logs\SIH\*"                    rem Windows Update Events Logs
	del /f/s/q/a "%SystemRoot%\Traces\WindowsUpdate\*"        rem Windows Update Logs
	del /f/s/q/a "%SystemRoot%\System32\LogFiles\setupcln\*"  rem Disk Cleanup tool Cleanmgr.exe Logs
	del /f/s/q/a "%SystemRoot%\Logs\NetSetup\*"               rem Network Setup Service Events Logs
	
	del /f/s/q/a "%homepath%\AppData\Local\Microsoft\Windows\Explorer\iconcache*"
	del /f/s/q/a "%homepath%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_*.db"

	del /f/s/q/a "%windir%\SoftwareDistribution\Download\*"

	del /f/s/q/a "%SystemRoot%\Logs\NetSetup\*"
	del /f/s/q/a "%SystemRoot%\Logs\SIH\*"
	del /f/s/q/a "%SystemRoot%\Traces\WindowsUpdate\*"
	
	rmdir /s/q "%PROGRAMFILES(X86)%\Microsoft"
	rmdir /s/q "%PROGRAMFILES(X86)%\Windows Sidebar"
)

:: Reset Data Usage
>nul 2>&1(
	net stop dps
	del /f/s/q/a "%windir%\System32\sru\*"
	net start dps
)

:: Clear SSL State
>nul 2>&1(
	certutil -URLCache * delete
	RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2  rem Clear Cookies
	RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8  rem Clear Temporary Internet Files
	RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16 rem Clear Form Data
	RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 32 rem Clear Saved Passwords
)

:: Other
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
	del /f/s/q/a %temp%\*
	del /f/s/q/a %systemdrive%\*.log,*.LOG,*.etl,*.tmp,*.hta
	powershell Clear-RecycleBin -Force -ErrorAction SilentlyContinue
	taskkill /f /im explorer.exe
	explorer.exe
)

echo   # Restoring Connection&echo.

>nul 2>&1 ipconfig/renew

echo   # Success!&echo.
