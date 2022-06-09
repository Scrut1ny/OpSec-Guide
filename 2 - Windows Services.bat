@echo off

fltmc >nul 2>&1 || (
    echo Administrator privileges are required.
    PowerShell Start -Verb RunAs '%0' 2> nul || (
        echo Right-click on the script and select "Run as administrator".
        pause & exit 1
    )
    exit 0
)

rem Windows Services

rem WLAN AutoConfig service
rem sc stop "WlanSvc" & sc config "WlanSvc" start=disabled
rem Windows Search Platform
rem sc stop "WSearch" & sc config "WSearch" start=disabled
rem Windows Security Center
rem sc stop "wscsvc" & sc config "wscsvc" start=disabled
rem Windows Defender Network
rem sc stop "WdNisSvc" & sc config "WdNisSvc" start=disabled

>nul 2>&1 (
	sc stop "AMD Crash Defender Service" & sc config "AMD Crash Defender Service" start=disabled
	sc stop "AMD External Events Utility" & sc config "AMD External Events Utility" start=disabled
	sc stop "amdfendr" & sc config "amdfendr" start=disabled
	sc stop "amdfendrmgr" & sc config "amdfendrmgr" start=disabled
	sc stop "AppVClient" & sc config "AppVClient" start=disabled
	sc stop "autotimesvc" & sc config "autotimesvc" start=disabled
	sc stop "Backupper Service" & sc config "Backupper Service" start=disabled
	sc stop "BDESVC" & sc config "BDESVC" start=disabled
	sc stop "BthAvctpSvc" & sc config "BthAvctpSvc" start=disabled
	sc stop "cbdhsvc" & sc config "cbdhsvc" start=disabled
	sc stop "CDPSvc" & sc config "CDPSvc" start=disabled
	sc stop "CDPUserSvc" & sc config "CDPUserSvc" start=disabled
	sc stop "CscService" & sc config "CscService" start=disabled
	sc stop "DevicesFlowUserSvc" & sc config "DevicesFlowUserSvc" start=disabled
	sc stop "DevicesFlowUserSvc_5f1ad" & sc config "DevicesFlowUserSvc_5f1ad" start=disabled
	sc stop "DevQueryBroker" & sc config "DevQueryBroker" start=disabled
	sc stop "diagnosticshub.standardcollector.service" & sc config "diagnosticshub.standardcollector.service" start=disabled
	sc stop "diagsvc" & sc config "diagsvc" start=disabled
	sc stop "DiagTrack" & sc config "DiagTrack" start=disabled
	sc stop "DialogBlockingService" & sc config "DialogBlockingService" start=disabled
	sc stop "DispBrokerDesktopSvc" & sc config "DispBrokerDesktopSvc" start=disabled
	sc stop "DisplayEnhancementService" & sc config "DisplayEnhancementService" start=disabled
	sc stop "dLauncherLoopback" & sc config "dLauncherLoopback" start=disabled
	sc stop "dmwappushservice" & sc config "dmwappushservice" start=disabled
	sc stop "DsSvc" & sc config "DsSvc" start=disabled
	sc stop "DusmSvc" & sc config "DusmSvc" start=disabled
	sc stop "edgeupdate" & sc config "edgeupdate" start=disabled
	sc stop "edgeupdatem" & sc config "edgeupdatem" start=disabled
	sc stop "EFS" & sc config "EFS" start=disabled
	sc stop "Fax" & sc config "Fax" start=disabled
	sc stop "fdPHost" & sc config "fdPHost" start=disabled
	sc stop "FDResPub" & sc config "FDResPub" start=disabled
	sc stop "FontCache" & sc config "FontCache" start=disabled
	sc stop "icssvc" & sc config "icssvc" start=disabled
	sc stop "IKEEXT" & sc config "IKEEXT" start=disabled
	sc stop "iphlpsvc" & sc config "iphlpsvc" start=disabled
	sc stop "LanmanServer" & sc config "LanmanServer" start=disabled
	sc stop "LanmanWorkstation" & sc config "LanmanWorkstation" start=disabled
	sc stop "lfsvc" & sc config "lfsvc" start=disabled
	sc stop "lmhosts" & sc config "lmhosts" start=disabled
	sc stop "MapsBroker" & sc config "MapsBroker" start=disabled
	sc stop "MessagingService_5f1ad" & sc config "MessagingService_5f1ad" start=disabled
	sc stop "MicrosoftEdgeElevationService" & sc config ""MicrosoftEdgeElevationService" start=disabled
	sc stop "MixedRealityOpenXRSvc" & sc config "MixedRealityOpenXRSvc" start=disabled
	sc stop "MsKeyboardFilter" & sc config "MsKeyboardFilter" start=disabled
	sc stop "ndu" & sc config "ndu" start=disabled
	sc stop "NetTcpPortSharing" & sc config "NetTcpPortSharing" start=disabled
	sc stop "NPSMSvc" & sc config "NPSMSvc" start=disabled
	sc stop "NVDisplay.ContainerLocalSystem" & sc config "NVDisplay.ContainerLocalSystem" start=disabled
	sc stop "OneSyncSvc" & sc config "OneSyncSvc" start=disabled
	sc stop "OneSyncSvc_5f1ad" & sc config "OneSyncSvc_5f1ad" start=disabled
	sc stop "PcaSvc" & sc config "PcaSvc" start=disabled
	sc stop "PhoneSvc" & sc config "PhoneSvc" start=disabled
	sc stop "PimIndexMaintenanceSvc_5f1ad" & sc config "PimIndexMaintenanceSvc_5f1ad" start=disabled
	sc stop "RasMan" & sc config "RasMan" start=disabled
	sc stop "RemoteAccess" & sc config "RemoteAccess" start=disabled
	sc stop "RemoteRegistry" & sc config "RemoteRegistry" start=disabled
	sc stop "RetailDemo" & sc config "RetailDemo" start=disabled
	sc stop "RmSvc" & sc config "RmSvc" start=disabled
	sc stop "SEMgrSvc" & sc config "SEMgrSvc" start=disabled
	sc stop "SensorDataService" & sc config "SensorDataService" start=disabled
	sc stop "SensorService" & sc config "SensorService" start=disabled
	sc stop "SensrSvc" & sc config "SensrSvc" start=disabled
	sc stop "SessionEnv" & sc config "SessionEnv" start=disabled
	sc stop "SharedAccess" & sc config "SharedAccess" start=disabled
	sc stop "ShellHWDetection" & sc config "ShellHWDetection" start=disabled
	sc stop "shpamsvc" & sc config "shpamsvc" start=disabled
	sc stop "Spooler" & sc config "Spooler" start=disabled
	sc stop "SSDPSRV" & sc config "SSDPSRV" start=disabled
	sc stop "ssh-agent" & sc config "ssh-agent" start=disabled
	sc stop "SstpSvc" & sc config "SstpSvc" start=disabled
	sc stop "stisvc" & sc config "stisvc" start=disabled
	sc stop "SysMain" & sc config "SysMain" start=disabled
	sc stop "TabletInputService" & sc config "TabletInputService" start=disabled
	sc stop "TapiSrv" & sc config "TapiSrv" start=disabled
	sc stop "TermService" & sc config "TermService" start=disabled
	sc stop "TokenBroker" & sc config "TokenBroker" start=disabled
	sc stop "TrkWks" & sc config "TrkWks" start=disabled
	sc stop "tzautoupdate" & sc config "tzautoupdate" start=disabled
	sc stop "UevAgentService" & sc config "UevAgentService" start=disabled
	sc stop "UnistoreSvc" & sc config "UnistoreSvc" start=disabled
	sc stop "UserDataSvc" & sc config "UserDataSvc" start=disabled
	sc stop "W32Time" & sc config "W32Time" start=disabled
	sc stop "WalletService" & sc config "WalletService" start=disabled
	sc stop "WbioSrvc" & sc config "WbioSrvc" start=disabled
	sc stop "Wcmsvc" & sc config "Wcmsvc" start=disabled
	sc stop "WebClient" & sc config "WebClient" start=disabled
	sc stop "Wecsvc" & sc config "Wecsvc" start=disabled
	sc stop "wercplsupport" & sc config "wercplsupport" start=disabled
	sc stop "WerSvc" & sc config "WerSvc" start=disabled
	sc stop "WinHttpAutoProxySvc" & sc config "WinHttpAutoProxySvc" start=disabled
	sc stop "WinRM" & sc config "WinRM" start=disabled
	sc stop "wlidsvc" & sc config "wlidsvc" start=disabled
	sc stop "WMPNetworkSvc" & sc config "WMPNetworkSvc" start=disabled
	sc stop "WpcMonSvc" & sc config "WpcMonSvc" start=disabled
	sc stop "WPDBusEnum" & sc config "WPDBusEnum" start=disabled
	sc stop "WpnUserService_5f1ad" & sc config "WpnUserService_5f1ad" start=disabled
	sc stop "XblAuthManager" & sc config "XblAuthManager" start=disabled
	sc stop "XblGameSave" & sc config "XblGameSave" start=disabled
	sc stop "XboxGipSvc" & sc config "XboxGipSvc" start=disabled
	sc stop "XboxNetApiSvc" & sc config "XboxNetApiSvc" start=disabled
)

echo Done&>nul pause


sc stop "wuauserv" & sc config "wuauserv" start=disabled

sc stop "" & sc config "" start=disabled
sc stop "" & sc config "" start=disabled
sc stop "" & sc config "" start=disabled
sc stop "" & sc config "" start=disabled
sc stop "" & sc config "" start=disabled
sc stop "" & sc config "" start=disabled
sc stop "" & sc config "" start=disabled
sc stop "" & sc config "" start=disabled
sc stop "" & sc config "" start=disabled
sc stop "" & sc config "" start=disabled
