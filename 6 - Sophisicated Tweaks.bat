@echo off

fltmc >nul 2>&1 || (
    echo Administrator privileges are required.
    PowerShell Start -Verb RunAs '%0' 2> nul || (
        echo Right-click on the script and select "Run as administrator".
        pause & exit 1
    )
    exit 0
)

>nul 2>&1(
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
	
	
)