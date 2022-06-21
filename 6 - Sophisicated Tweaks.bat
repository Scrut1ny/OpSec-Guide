@echo off

fltmc >nul 2>&1 || (
    echo Administrator privileges are required.
    PowerShell Start -Verb RunAs '%0' 2> nul || (
        echo Right-click on the script and select "Run as administrator".
        pause & exit 1
    )
    exit 0
)

>nul 2>&1 (

	powercfg -h off

	rem Prefetch / Superfetch
	sc stop “SysMain” & sc config “SysMain” start=disabled
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
	del /F /Q "C:\Windows\Prefetch\*"
	
	rem Uninstall NVIDIA telemetry tasks
	if exist "%ProgramFiles%\NVIDIA Corporation\Installer2\InstallerCore\NVI2.DLL" (
		rundll32 "%PROGRAMFILES%\NVIDIA Corporation\Installer2\InstallerCore\NVI2.DLL",UninstallPackage NvTelemetryContainer
		rundll32 "%PROGRAMFILES%\NVIDIA Corporation\Installer2\InstallerCore\NVI2.DLL",UninstallPackage NvTelemetry
	)
	
	rem Delete NVIDIA residual telemetry files
	del /s %SystemRoot%\System32\DriverStore\FileRepository\NvTelemetry*.dll
	rmdir /s /q "%ProgramFiles(x86)%\NVIDIA Corporation\NvTelemetry"
	
	rem Opt out from NVIDIA telemetry
	reg add "HKLM\SOFTWARE\NVIDIA Corporation\NvControlPanel2\Client" /v "OptInOrOutPreference" /t REG_DWORD /d 0 /f 
	reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID44231" /t REG_DWORD /d 0 /f 
	reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID64640" /t REG_DWORD /d 0 /f 
	reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID66610" /t REG_DWORD /d 0 /f 
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\Startup" /v "SendTelemetryData" /t REG_DWORD /d 0 /f
	
	rem Disable Nvidia Telemetry Container service
	PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'NvTelemetryContainer'; Write-Host "^""Disabling service: `"^""$serviceName`"^""."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if(!$service) {; Write-Host "^""Service `"^""$serviceName`"^"" could not be not found, no need to disable it."^""; Exit 0; }; <# -- 2. Stop if running #>; if ($service.Status -eq [System.ServiceProcess.ServiceControllerStatus]::Running) {; Write-Host "^""`"^""$serviceName`"^"" is running, stopping it."^""; try {; Stop-Service -Name "^""$serviceName"^"" -Force -ErrorAction Stop; Write-Host "^""Stopped `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Warning "^""Could not stop `"^""$serviceName`"^"", it will be stopped after reboot: $_"^""; }; } else {; Write-Host "^""`"^""$serviceName`"^"" is not running, no need to stop."^""; }; <# -- 3. Skip if already disabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) {; $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) {; $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq 'Disabled') {; Write-Host "^""$serviceName is already disabled, no further action is needed"^""; }; <# -- 4. Disable service #>; try {; Set-Service -Name "^""$serviceName"^"" -StartupType Disabled -Confirm:$false -ErrorAction Stop; Write-Host "^""Disabled `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Error "^""Could not disable `"^""$serviceName`"^"": $_"^""; }"

	rem Disable NVIDIA telemetry services
	schtasks /change /tn NvTmMon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8} /DISABLE
	schtasks /change /tn NvTmRep_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8} /DISABLE
	schtasks /change /tn NvTmRepOnLogon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8} /DISABLE
	
	rem Disable Office Telemetry Tasks
	schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016"
	schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" /disable
	schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016"
	schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" /disable

	schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack"
	schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack" /disable
	schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn"
	schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn" /disable

	reg add "HKCU\SOFTWARE\Microsoft\Office\15.0\Outlook\Options\Mail" /v "EnableLogging" /t REG_DWORD /d 0 /f
	reg add "HKCU\SOFTWARE\Microsoft\Office\16.0\Outlook\Options\Mail" /v "EnableLogging" /t REG_DWORD /d 0 /f
	reg add "HKCU\SOFTWARE\Microsoft\Office\15.0\Outlook\Options\Calendar" /v "EnableCalendarLogging" /t REG_DWORD /d 0 /f
	reg add "HKCU\SOFTWARE\Microsoft\Office\16.0\Outlook\Options\Calendar" /v "EnableCalendarLogging" /t REG_DWORD /d 0 /f
	reg add "HKCU\SOFTWARE\Microsoft\Office\15.0\Word\Options" /v "EnableLogging" /t REG_DWORD /d 0 /f
	reg add "HKCU\SOFTWARE\Microsoft\Office\16.0\Word\Options" /v "EnableLogging" /t REG_DWORD /d 0 /f
	reg add "HKCU\SOFTWARE\Policies\Microsoft\Office\15.0\OSM" /v "EnableLogging" /t REG_DWORD /d 0 /f
	reg add "HKCU\SOFTWARE\Policies\Microsoft\Office\16.0\OSM" /v "EnableLogging" /t REG_DWORD /d 0 /f
	reg add "HKCU\SOFTWARE\Policies\Microsoft\Office\15.0\OSM" /v "EnableUpload" /t REG_DWORD /d 0 /f
	reg add "HKCU\SOFTWARE\Policies\Microsoft\Office\16.0\OSM" /v "EnableUpload" /t REG_DWORD /d 0 /f

	reg add "HKCU\SOFTWARE\Microsoft\Office\Common\ClientTelemetry" /v "DisableTelemetry" /t REG_DWORD /d 1 /f
	reg add "HKCU\SOFTWARE\Microsoft\Office\16.0\Common\ClientTelemetry" /v "DisableTelemetry" /t REG_DWORD /d 1 /f
	reg add "HKCU\SOFTWARE\Microsoft\Office\Common\ClientTelemetry" /v "VerboseLogging" /t REG_DWORD /d 0 /f
	reg add "HKCU\SOFTWARE\Microsoft\Office\16.0\Common\ClientTelemetry" /v "VerboseLogging" /t REG_DWORD /d 0 /f

	reg add "HKCU\SOFTWARE\Microsoft\Office\15.0\Common" /v "QMEnable" /t REG_DWORD /d 0 /f
	reg add "HKCU\SOFTWARE\Microsoft\Office\16.0\Common" /v "QMEnable" /t REG_DWORD /d 0 /f

	reg add "HKCU\SOFTWARE\Microsoft\Office\15.0\Common\Feedback" /v "Enabled" /t REG_DWORD /d 0 /f
	reg add "HKCU\SOFTWARE\Microsoft\Office\16.0\Common\Feedback" /v "Enabled" /t REG_DWORD /d 0 /f
	
	rem Directory
	reg add "HKCR\Directory\shell\OpenCmdHereAsAdmin" /ve /t REG_SZ /d "CMD (Admin)" /f
	reg delete "HKCR\Directory\shell\OpenCmdHereAsAdmin" /v "Extended" /f
	reg add "HKCR\Directory\shell\OpenCmdHereAsAdmin" /v "Icon" /t REG_SZ /d "imageres.dll,-5324" /f
	reg add "HKCR\Directory\shell\OpenCmdHereAsAdmin\command" /ve /t REG_SZ /d "cmd /c echo|set/p=\"%L\"|powershell -NoP -W 1 -NonI -NoL \"SaPs 'cmd' -Args '/c \"\"\"cd /d',$([char]34+$Input+[char]34),'^&^& start /b cmd.exe\"\"\"' -Verb RunAs\"" /f
	rem Directory\Background
	reg add "HKCR\Directory\Background\shell\OpenCmdHereAsAdmin" /ve /t REG_SZ /d "CMD (Admin)" /f
	reg delete "HKCR\Directory\Background\shell\OpenCmdHereAsAdmin" /v "Extended" /f
	reg add "HKCR\Directory\Background\shell\OpenCmdHereAsAdmin" /v "Icon" /t REG_SZ /d "imageres.dll,-5324" /f
	reg add "HKCR\Directory\Background\shell\OpenCmdHereAsAdmin\command" /ve /t REG_SZ /d "cmd /c echo|set/p=\"%V\"|powershell -NoP -W 1 -NonI -NoL \"SaPs 'cmd' -Args '/c \"\"\"cd /d',$([char]34+$Input+[char]34),'^&^& start /b cmd.exe\"\"\"' -Verb RunAs\"" /f
	rem Drive
	reg add "HKCR\Drive\shell\OpenCmdHereAsAdmin" /ve /t REG_SZ /d "CMD (Admin)" /f
	reg delete "HKCR\Drive\shell\OpenCmdHereAsAdmin" /v "Extended" /f
	reg add "HKCR\Drive\shell\OpenCmdHereAsAdmin" /v "Icon" /t REG_SZ /d "imageres.dll,-5324" /f
	reg add "HKCR\Drive\shell\OpenCmdHereAsAdmin\command" /ve /t REG_SZ /d "cmd /c echo|set/p=\"%L\"|powershell -NoP -W 1 -NonI -NoL \"SaPs 'cmd' -Args '/c \"\"\"cd /d',$([char]34+$Input+[char]34),'^&^& start /b cmd.exe\"\"\"' -Verb RunAs\"" /f
	rem Extra
	reg delete "HKCR\LibraryFolder\background\shell\OpenCmdHereAsAdmin" /f
	rem To allow mapped drives to be available in command prompt
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLinkedConnections" /t REG_DWORD /d "1" /f
	
	reg add "HKCR\.bat\ShellNew" /v "NullFile" /t REG_SZ /d "" /f
	
	setx DOTNET_CLI_TELEMETRY_OPTOUT 1
	setx POWERSHELL_TELEMETRY_OPTOUT 1
	
	w32tm /config /syncfromflags:manual /manualpeerlist:"0.pool.ntp.org 1.pool.ntp.org 2.pool.ntp.org 3.pool.ntp.org"
	SC queryex "w32time"|Find "STATE"|Find /v "RUNNING">Nul||(
		net stop w32time
	)
	net start w32time
	w32tm /config /update
	w32tm /resync
	
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HomeFolderDesktop\NameSpace\DelegateFolders\{3134ef9c-6b18-4996-ad04-ed5912e00eb5}" /f
	if not %PROCESSOR_ARCHITECTURE%==x86 ( REM is 64 bit?
		reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\HomeFolderDesktop\NameSpace\DelegateFolders\{3134ef9c-6b18-4996-ad04-ed5912e00eb5}" /f
	)
	
	if %PROCESSOR_ARCHITECTURE%==x86 ( REM is 32 bit?
    		reg add "HKLM\SOFTWARE\Microsoft\VSCommon\14.0\SQM" /v "OptIn" /t REG_DWORD /d 0 /f
    		reg add "HKLM\SOFTWARE\Microsoft\VSCommon\15.0\SQM" /v "OptIn" /t REG_DWORD /d 0 /f
    		reg add "HKLM\SOFTWARE\Microsoft\VSCommon\16.0\SQM" /v "OptIn" /t REG_DWORD /d 0 /f
	) else (
    		reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\VSCommon\14.0\SQM" /v "OptIn" /t REG_DWORD /d 0 /f
    		reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\VSCommon\15.0\SQM" /v "OptIn" /t REG_DWORD /d 0 /f
    		reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\VSCommon\16.0\SQM" /v "OptIn" /t REG_DWORD /d 0 /f
	)
	
	icacls "%localappdata%\Google\Chrome\User Data\SwReporter" /inheritance:r /deny "*S-1-1-0:(OI)(CI)(F)" "*S-1-5-7:(OI)(CI)(F)"
	cacls "%localappdata%\Google\Chrome\User Data\SwReporter" /e /c /d %username%
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "DisallowRun" /t REG_DWORD /d 1 /f
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "1" /t REG_SZ /d "software_reporter_tool.exe" /f
	
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d 3 /f
	wmic cpu get name | findstr "Intel" >nul && (
		reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d 0 /f
	)
	wmic cpu get name | findstr "AMD" >nul && (
		reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d 64 /f
	)
	
	dism /online /Disable-Feature /FeatureName:"SMB1Protocol" /NoRestart
	dism /Online /Disable-Feature /FeatureName:"SMB1Protocol-Client" /NoRestart
	dism /Online /Disable-Feature /FeatureName:"SMB1Protocol-Server" /NoRestart
	dism /online /Disable-Feature /FeatureName:"MicrosoftWindowsPowerShellV2Root" /NoRestart
	dism /online /Disable-Feature /FeatureName:"MicrosoftWindowsPowerShellV2" /NoRestart
	
	for /f "tokens=1 delims=," %%x in ('schtasks /query /fo csv ^| find "OneDrive"') do schtasks /Delete /TN %%x /F
	
	taskkill /f /im OneDrive.exe
	if %PROCESSOR_ARCHITECTURE%==x86 (
		%SystemRoot%\System32\OneDriveSetup.exe /uninstall 2>nul
	) else (
		%SystemRoot%\SysWOW64\OneDriveSetup.exe /uninstall 2>nul
	)
	rd "%UserProfile%\OneDrive" /q /s
	rd "%LocalAppData%\Microsoft\OneDrive" /q /s
	rd "%ProgramData%\Microsoft OneDrive" /q /s
	rd "%SystemDrive%\OneDriveTemp" /q /s
	del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Microsoft OneDrive.lnk" /s /f /q
	del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\OneDrive.lnk" /s /f /q
	del "%USERPROFILE%\Links\OneDrive.lnk" /s /f /q
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /t REG_DWORD /v "DisableFileSyncNGSC" /d 1 /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /t REG_DWORD /v "DisableFileSync" /d 1 /f
	reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f
	reg load "HKU\Default" "%SystemDrive%\Users\Default\NTUSER.DAT" 
	reg delete "HKU\Default\software\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f
	reg unload "HKU\Default"
	reg delete "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
	reg delete "HKCR\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
	reg add "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v System.IsPinnedToNameSpaceTree /d "0" /t REG_DWORD /f
	reg add "HKCR\Wow6432Node\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v System.IsPinnedToNameSpaceTree /d "0" /t REG_DWORD /f
	for /f "tokens=1 delims=," %%x in ('schtasks /query /fo csv ^| find "OneDrive"') do schtasks /Delete /TN %%x /F
	reg delete "HKCU\Environment" /v "OneDrive" /f
)
