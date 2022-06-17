@echo off

fltmc >nul 2>&1 || (
    echo Administrator privileges are required.
    PowerShell Start -Verb RunAs '%0' 2> nul || (
        echo Right-click on the script and select "Run as administrator".
        pause & exit 1
    )
    exit 0
)

rem Windows Scheduled Tasks

>nul 2>&1 (
	rem Terminating all tasks specified.
	schtasks /end /TN "\Microsoft\Office\OfficeTelemetryAgentFallBack2016"
	schtasks /end /TN "\Microsoft\Office\OfficeTelemetryAgentFallBack"
	schtasks /end /TN "\Microsoft\Office\OfficeTelemetryAgentLogOn2016"
	schtasks /end /TN "\Microsoft\Office\OfficeTelemetryAgentLogOn"
	schtasks /end /TN "\Microsoft\Windows\AppID\SmartScreenSpecific"
	schtasks /end /TN "\Microsoft\Windows\Application Experience\AitAgent"
	schtasks /end /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser"
	schtasks /end /TN "\Microsoft\Windows\Application Experience\PcaPatchDbTask"
	schtasks /end /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater"
	schtasks /end /TN "\Microsoft\Windows\Application Experience\StartupAppTask""
	schtasks /end /TN "\Microsoft\Windows\Autochk\Proxy"
	schtasks /end /TN "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask"
	schtasks /end /TN "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM"
	schtasks /end /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator"
	schtasks /end /TN "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask"
	schtasks /end /TN "\Microsoft\Windows\Customer Experience Improvement Program\Uploader"
	schtasks /end /TN "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip"
	schtasks /end /TN "\Microsoft\Windows\Device Information\Device User"
	schtasks /end /TN "\Microsoft\Windows\Device Information\Device"
	schtasks /end /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector"
	schtasks /end /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver"
	schtasks /end /TN "\Microsoft\Windows\DiskFootprint\Diagnostics"
	schtasks /end /TN "\Microsoft\Windows\Feedback\Siuf\DmClient"
	schtasks /end /TN "\Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload"
	schtasks /end /TN "\Microsoft\Windows\FileHistory\File History (maintenance mode)"
	schtasks /end /TN "\Microsoft\Windows\HelloFace\FODCleanupTask"
	schtasks /end /TN "\Microsoft\Windows\Maintenance\WinSAT"
	schtasks /end /TN "\Microsoft\Windows\NetTrace\GatherNetworkInfo"
	schtasks /end /TN "\Microsoft\Windows\PI\Sqm-Tasks"
	schtasks /end /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
	schtasks /end /TN "\Microsoft\Windows\Shell\FamilySafetyMonitor"
	schtasks /end /TN "\Microsoft\Windows\Shell\FamilySafetyRefresh"
	schtasks /end /TN "\Microsoft\Windows\Shell\FamilySafetyUpload"
	schtasks /end /TN "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime"
	schtasks /end /TN "\Microsoft\Windows\Time Synchronization\SynchronizeTime"
	schtasks /end /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting"
	schtasks /end /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update"
	schtasks /end /TN "\Microsoft\XblGameSave\XblGameSaveTask"
	schtasks /end /TN "\Microsoft\XblGameSave\XblGameSaveTaskLogon"
	schtasks /end /TN "\Mozilla\Firefox Default Browser Agent 308046B0AF4A39CB"
	schtasks /end /TN "\Mozilla\Firefox Default Browser Agent D2CEEC440E2074BD"
	schtasks /end /TN "CreateExplorerShellUnelevatedTask"
	schtasks /end /TN "Microsoft\Office\Office 15 Subscription Heartbeat"
	schtasks /end /TN "Microsoft\Office\Office 16 Subscription Heartbeat"
	schtasks /end /TN "Microsoft\Office\OfficeTelemetryAgentFallBack2016"
	schtasks /end /TN "Microsoft\Office\OfficeTelemetryAgentFallBack"
	schtasks /end /TN "Microsoft\Office\OfficeTelemetryAgentLogOn2016"
	schtasks /end /TN "Microsoft\Office\OfficeTelemetryAgentLogOn"
	schtasks /end /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 64 Critical"
	schtasks /end /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 64"
	schtasks /end /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 Critical"
	schtasks /end /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319"
	schtasks /end /TN "Microsoft\Windows\AppID\SmartScreenSpecific"
	schtasks /end /TN "Microsoft\Windows\Application Experience\AitAgent"
	schtasks /end /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser"
	schtasks /end /TN "Microsoft\Windows\Application Experience\PcaPatchDbTask"
	schtasks /end /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater"
	schtasks /end /TN "Microsoft\Windows\Application Experience\StartupAppTask"
	schtasks /end /TN "Microsoft\Windows\ApplicationData\DsSvcCleanup"
	schtasks /end /TN "Microsoft\Windows\Autochk\Proxy"
	schtasks /end /TN "Microsoft\Windows\Clip\License Validation"
	schtasks /end /TN "Microsoft\Windows\CloudExperienceHost\CreateObjectTask"
	schtasks /end /TN "Microsoft\Windows\Customer Experience Improvement Program\BthSQM"
	schtasks /end /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator"
	schtasks /end /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask"
	schtasks /end /TN "Microsoft\Windows\Customer Experience Improvement Program\Uploader"
	schtasks /end /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip"
	schtasks /end /TN "Microsoft\Windows\Defrag\ScheduledDefrag"
	schtasks /end /TN "Microsoft\Windows\Device Information\Device User"
	schtasks /end /TN "Microsoft\Windows\Device Information\Device"
	schtasks /end /TN "Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner"
	schtasks /end /TN "Microsoft\Windows\Diagnosis\Scheduled"
	schtasks /end /TN "Microsoft\Windows\DiskCleanup\SilentCleanup"
	schtasks /end /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector"
	schtasks /end /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver"
	schtasks /end /TN "Microsoft\Windows\DiskFootprint\Diagnostics"
	schtasks /end /TN "Microsoft\Windows\DiskFootprint\StorageSense"
	schtasks /end /TN "Microsoft\Windows\DUSM\dusmtask"
	schtasks /end /TN "Microsoft\Windows\EnterpriseMgmt\MDMMaintenenceTask"
	schtasks /end /TN "Microsoft\Windows\ExploitGuard\ExploitGuard MDM policy Refresh"
	schtasks /end /TN "Microsoft\Windows\Feedback\Siuf\DmClient"
	schtasks /end /TN "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload"
	schtasks /end /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)"
	schtasks /end /TN "Microsoft\Windows\Flighting\FeatureConfig\ReconcileFeatures"
	schtasks /end /TN "Microsoft\Windows\Flighting\FeatureConfig\UsageDataFlushing"
	schtasks /end /TN "Microsoft\Windows\Flighting\FeatureConfig\UsageDataReporting"
	schtasks /end /TN "Microsoft\Windows\Flighting\OneSettings\RefreshCache"
	schtasks /end /TN "Microsoft\Windows\HelloFace\FODCleanupTask"
	schtasks /end /TN "Microsoft\Windows\Input\LocalUserSyncDataAvailable"
	schtasks /end /TN "Microsoft\Windows\Input\MouseSyncDataAvailable"
	schtasks /end /TN "Microsoft\Windows\Input\PenSyncDataAvailable"
	schtasks /end /TN "Microsoft\Windows\Input\TouchpadSyncDataAvailable"
	schtasks /end /TN "Microsoft\Windows\Input\TouchpadUserSyncDataAvailable"
	schtasks /end /TN "Microsoft\Windows\International\Synchronize Language Settings"
	schtasks /end /TN "Microsoft\Windows\LanguageComponentsInstaller\Installation"
	schtasks /end /TN "Microsoft\Windows\LanguageComponentsInstaller\ReconcileLanguageResources"
	schtasks /end /TN "Microsoft\Windows\LanguageComponentsInstaller\Uninstallation"
	schtasks /end /TN "Microsoft\Windows\License Manager\TempSignedLicenseExChange"
	schtasks /end /TN "Microsoft\Windows\Location\Notifications"
	schtasks /end /TN "Microsoft\Windows\Location\WindowsActionDialog"
	schtasks /end /TN "Microsoft\Windows\Maintenance\WinSAT"
	schtasks /end /TN "Microsoft\Windows\Management\Provisioning\Cellular"
	schtasks /end /TN "Microsoft\Windows\Management\Provisioning\Logon"
	schtasks /end /TN "Microsoft\Windows\Maps\MapsToastTask"
	schtasks /end /TN "Microsoft\Windows\Maps\MapsUpdateTask"
	schtasks /end /TN "Microsoft\Windows\Mobile Broadband Accounts\MNO Metadata Parser"
	schtasks /end /TN "Microsoft\Windows\MUI\LPRemove"
	schtasks /end /TN "Microsoft\Windows\Multimedia\SystemSoundsService"
	schtasks /end /TN "Microsoft\Windows\NetTrace\GatherNetworkInfo"
	schtasks /end /TN "Microsoft\Windows\NlaSvc\WiFiTask"
	schtasks /end /TN "Microsoft\Windows\Offline Files\Background Synchronization"
	schtasks /end /TN "Microsoft\Windows\Offline Files\Logon Synchronization"
	schtasks /end /TN "Microsoft\Windows\PI\Sqm-Tasks"
	schtasks /end /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
	schtasks /end /TN "Microsoft\Windows\Printing\EduPrintProv"
	schtasks /end /TN "Microsoft\Windows\Printing\PrinterCleanupTask"
	schtasks /end /TN "Microsoft\Windows\PushToInstall\LoginCheck"
	schtasks /end /TN "Microsoft\Windows\PushToInstall\Registration"
	schtasks /end /TN "Microsoft\Windows\Ras\MobilityManager"
	schtasks /end /TN "Microsoft\Windows\RecoveryEnvironment\VerifyWinRE"
	schtasks /end /TN "Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask"
	schtasks /end /TN "Microsoft\Windows\remoteAssistance\remoteAssistanceTask"
	schtasks /end /TN "Microsoft\Windows\RetailDemo\CleanupOfflineContent"
	schtasks /end /TN "Microsoft\Windows\Servicing\StartComponentCleanup"
	schtasks /end /TN "Microsoft\Windows\SettingSync\NetworkStateChangeTask"
	schtasks /end /TN "Microsoft\Windows\Setup\SetupCleanupTask"
	schtasks /end /TN "Microsoft\Windows\Setup\SnapshotCleanupTask"
	schtasks /end /TN "Microsoft\Windows\Shell\FamilySafetyMonitor"
	schtasks /end /TN "Microsoft\Windows\Shell\FamilySafetyMonitorToastTask"
	schtasks /end /TN "Microsoft\Windows\Shell\FamilySafetyRefresh"
	schtasks /end /TN "Microsoft\Windows\Shell\FamilySafetyRefreshTask"
	schtasks /end /TN "Microsoft\Windows\Shell\FamilySafetyUpload"
	schtasks /end /TN "Microsoft\Windows\SpacePort\SpaceAgentTask"
	schtasks /end /TN "Microsoft\Windows\SpacePort\SpaceManagerTask"
	schtasks /end /TN "Microsoft\Windows\Speech\SpeechModelDownloadTask"
	schtasks /end /TN "Microsoft\Windows\Storage Tiers Management\Storage Tiers Management Initialization"
	schtasks /end /TN "Microsoft\Windows\Subscription\EnableLicenseAcquisition"
	schtasks /end /TN "Microsoft\Windows\Subscription\LicenseAcquisition"
	schtasks /end /TN "Microsoft\Windows\Sysmain\ResPriStaticDbSync"
	schtasks /end /TN "Microsoft\Windows\Sysmain\WsSwapAssessmentTask"
	schtasks /end /TN "Microsoft\Windows\Task Manager\Interactive"
	schtasks /end /TN "Microsoft\Windows\TextServicesFramework\MsCtfMonitor"
	schtasks /end /TN "Microsoft\Windows\Time Synchronization\ForceSynchronizeTime"
	schtasks /end /TN "Microsoft\Windows\Time Synchronization\SynchronizeTime"
	schtasks /end /TN "Microsoft\Windows\Time Zone\SynchronizeTimeZone"
	schtasks /end /TN "Microsoft\Windows\TPM\Tpm-HASCertRetr"
	schtasks /end /TN "Microsoft\Windows\TPM\Tpm-Maintenance"
	schtasks /end /TN "Microsoft\Windows\UPnP\UPnPHostConfig"
	schtasks /end /TN "Microsoft\Windows\User Profile Service\HiveUploadTask"
	schtasks /end /TN "Microsoft\Windows\WCM\WiFiTask"
	schtasks /end /TN "Microsoft\Windows\WDI\ResolutionHost"
	schtasks /end /TN "Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance"
	schtasks /end /TN "Microsoft\Windows\Windows Defender\Windows Defender Cleanup"
	schtasks /end /TN "Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan"
	schtasks /end /TN "Microsoft\Windows\Windows Defender\Windows Defender Verification"
	schtasks /end /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting"
	schtasks /end /TN "Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange"
	schtasks /end /TN "Microsoft\Windows\WindowsUpdate\Automatic App Update"
	schtasks /end /TN "Microsoft\Windows\WindowsUpdate\Scheduled Start"
	schtasks /end /TN "Microsoft\Windows\WlanSvc\CDSSync"
	schtasks /end /TN "Microsoft\Windows\WOF\WIM-Hash-Management"
	schtasks /end /TN "Microsoft\Windows\WOF\WIM-Hash-Validation"
	schtasks /end /TN "Microsoft\Windows\Work Folders\Work Folders Logon Synchronization"
	schtasks /end /TN "Microsoft\Windows\Work Folders\Work Folders Maintenance Work"
	schtasks /end /TN "Microsoft\Windows\Workplace Join\Automatic-Device-Join"
	schtasks /end /TN "Microsoft\Windows\Workplace Join\Device-Sync"
	schtasks /end /TN "Microsoft\Windows\Workplace Join\Recovery-Check"
	schtasks /end /TN "Microsoft\Windows\WwanSvc\NotificationTask"
	schtasks /end /TN "Microsoft\Windows\WwanSvc\OobeDiscovery"
	schtasks /end /TN "Microsoft\XblGameSave\XblGameSaveTask"
	rem Disabling all tasks specified.
	schtasks /change /TN "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" /disable
	schtasks /change /TN "\Microsoft\Office\OfficeTelemetryAgentFallBack" /disable
	schtasks /change /TN "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" /disable
	schtasks /change /TN "\Microsoft\Office\OfficeTelemetryAgentLogOn" /disable
	schtasks /change /TN "\Microsoft\Windows\AppID\SmartScreenSpecific" /disable
	schtasks /change /TN "\Microsoft\Windows\Application Experience\AitAgent" /disable
	schtasks /change /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable
	schtasks /change /TN "\Microsoft\Windows\Application Experience\PcaPatchDbTask" /disable
	schtasks /change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable
	schtasks /change /TN "\Microsoft\Windows\Application Experience\StartupAppTask" /disable"
	schtasks /change /TN "\Microsoft\Windows\Autochk\Proxy" /disable
	schtasks /change /TN "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /disable
	schtasks /change /TN "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /disable
	schtasks /change /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable
	schtasks /change /TN "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable
	schtasks /change /TN "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /disable
	schtasks /change /TN "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable
	schtasks /change /TN "\Microsoft\Windows\Device Information\Device User" /disable
	schtasks /change /TN "\Microsoft\Windows\Device Information\Device" /disable
	schtasks /change /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable
	schtasks /change /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /disable
	schtasks /change /TN "\Microsoft\Windows\DiskFootprint\Diagnostics" /disable
	schtasks /change /TN "\Microsoft\Windows\Feedback\Siuf\DmClient" /disable
	schtasks /change /TN "\Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /disable
	schtasks /change /TN "\Microsoft\Windows\FileHistory\File History (maintenance mode)" /disable
	schtasks /change /TN "\Microsoft\Windows\HelloFace\FODCleanupTask" /disable
	schtasks /change /TN "\Microsoft\Windows\Maintenance\WinSAT" /disable
	schtasks /change /TN "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /disable
	schtasks /change /TN "\Microsoft\Windows\PI\Sqm-Tasks" /disable
	schtasks /change /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable
	schtasks /change /TN "\Microsoft\Windows\Shell\FamilySafetyMonitor" /disable
	schtasks /change /TN "\Microsoft\Windows\Shell\FamilySafetyRefresh" /disable
	schtasks /change /TN "\Microsoft\Windows\Shell\FamilySafetyUpload" /disable
	schtasks /change /TN "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /disable
	schtasks /change /TN "\Microsoft\Windows\Time Synchronization\SynchronizeTime" /disable
	schtasks /change /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /disable
	schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /disable
	schtasks /change /TN "\Microsoft\XblGameSave\XblGameSaveTask" /disable
	schtasks /change /TN "\Microsoft\XblGameSave\XblGameSaveTaskLogon" /disable
	schtasks /change /TN "\Mozilla\Firefox Default Browser Agent 308046B0AF4A39CB" /disable
	schtasks /change /TN "\Mozilla\Firefox Default Browser Agent D2CEEC440E2074BD" /disable
	schtasks /change /TN "CreateExplorerShellUnelevatedTask" /disable
	schtasks /change /TN "Microsoft\Office\Office 15 Subscription Heartbeat" /disable
	schtasks /change /TN "Microsoft\Office\Office 16 Subscription Heartbeat" /disable
	schtasks /change /TN "Microsoft\Office\OfficeTelemetryAgentFallBack2016" /disable
	schtasks /change /TN "Microsoft\Office\OfficeTelemetryAgentFallBack" /disable
	schtasks /change /TN "Microsoft\Office\OfficeTelemetryAgentLogOn2016" /disable
	schtasks /change /TN "Microsoft\Office\OfficeTelemetryAgentLogOn" /disable
	schtasks /change /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 64 Critical" /disable
	schtasks /change /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 64" /disable
	schtasks /change /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 Critical" /disable
	schtasks /change /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319" /disable
	schtasks /change /TN "Microsoft\Windows\AppID\SmartScreenSpecific" /disable
	schtasks /change /TN "Microsoft\Windows\Application Experience\AitAgent" /disable
	schtasks /change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable
	schtasks /change /TN "Microsoft\Windows\Application Experience\PcaPatchDbTask" /disable
	schtasks /change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable
	schtasks /change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /disable
	schtasks /change /TN "Microsoft\Windows\ApplicationData\DsSvcCleanup" /disable
	schtasks /change /TN "Microsoft\Windows\Autochk\Proxy" /disable
	schtasks /change /TN "Microsoft\Windows\Clip\License Validation" /disable
	schtasks /change /TN "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /disable
	schtasks /change /TN "Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /disable
	schtasks /change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable
	schtasks /change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable
	schtasks /change /TN "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /disable
	schtasks /change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable
	schtasks /change /TN "Microsoft\Windows\Defrag\ScheduledDefrag" /disable
	schtasks /change /TN "Microsoft\Windows\Device Information\Device User" /disable
	schtasks /change /TN "Microsoft\Windows\Device Information\Device" /disable
	schtasks /change /TN "Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner" /disable
	schtasks /change /TN "Microsoft\Windows\Diagnosis\Scheduled" /disable
	schtasks /change /TN "Microsoft\Windows\DiskCleanup\SilentCleanup" /disable
	schtasks /change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable
	schtasks /change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /disable
	schtasks /change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /disable
	schtasks /change /TN "Microsoft\Windows\DiskFootprint\StorageSense" /disable
	schtasks /change /TN "Microsoft\Windows\DUSM\dusmtask" /disable
	schtasks /change /TN "Microsoft\Windows\EnterpriseMgmt\MDMMaintenenceTask" /disable
	schtasks /change /TN "Microsoft\Windows\ExploitGuard\ExploitGuard MDM policy Refresh" /disable
	schtasks /change /TN "Microsoft\Windows\Feedback\Siuf\DmClient" /disable
	schtasks /change /TN "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /disable
	schtasks /change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /disable
	schtasks /change /TN "Microsoft\Windows\Flighting\FeatureConfig\ReconcileFeatures" /disable
	schtasks /change /TN "Microsoft\Windows\Flighting\FeatureConfig\UsageDataFlushing" /disable
	schtasks /change /TN "Microsoft\Windows\Flighting\FeatureConfig\UsageDataReporting" /disable
	schtasks /change /TN "Microsoft\Windows\Flighting\OneSettings\RefreshCache" /disable
	schtasks /change /TN "Microsoft\Windows\HelloFace\FODCleanupTask" /disable
	schtasks /change /TN "Microsoft\Windows\Input\LocalUserSyncDataAvailable" /disable
	schtasks /change /TN "Microsoft\Windows\Input\MouseSyncDataAvailable" /disable
	schtasks /change /TN "Microsoft\Windows\Input\PenSyncDataAvailable" /disable
	schtasks /change /TN "Microsoft\Windows\Input\TouchpadSyncDataAvailable" /disable
	schtasks /change /TN "Microsoft\Windows\Input\TouchpadUserSyncDataAvailable" /disable
	schtasks /change /TN "Microsoft\Windows\International\Synchronize Language Settings" /disable
	schtasks /change /TN "Microsoft\Windows\LanguageComponentsInstaller\Installation" /disable
	schtasks /change /TN "Microsoft\Windows\LanguageComponentsInstaller\ReconcileLanguageResources" /disable
	schtasks /change /TN "Microsoft\Windows\LanguageComponentsInstaller\Uninstallation" /disable
	schtasks /change /TN "Microsoft\Windows\License Manager\TempSignedLicenseExChange" /disable
	schtasks /change /TN "Microsoft\Windows\Location\Notifications" /disable
	schtasks /change /TN "Microsoft\Windows\Location\WindowsActionDialog" /disable
	schtasks /change /TN "Microsoft\Windows\Maintenance\WinSAT" /disable
	schtasks /change /TN "Microsoft\Windows\Management\Provisioning\Cellular" /disable
	schtasks /change /TN "Microsoft\Windows\Management\Provisioning\Logon" /disable
	schtasks /change /TN "Microsoft\Windows\Maps\MapsToastTask" /disable
	schtasks /change /TN "Microsoft\Windows\Maps\MapsUpdateTask" /disable
	schtasks /change /TN "Microsoft\Windows\Mobile Broadband Accounts\MNO Metadata Parser" /disable
	schtasks /change /TN "Microsoft\Windows\MUI\LPRemove" /disable
	schtasks /change /TN "Microsoft\Windows\Multimedia\SystemSoundsService" /disable
	schtasks /change /TN "Microsoft\Windows\NetTrace\GatherNetworkInfo" /disable
	schtasks /change /TN "Microsoft\Windows\NlaSvc\WiFiTask" /disable
	schtasks /change /TN "Microsoft\Windows\Offline Files\Background Synchronization" /disable
	schtasks /change /TN "Microsoft\Windows\Offline Files\Logon Synchronization" /disable
	schtasks /change /TN "Microsoft\Windows\PI\Sqm-Tasks" /disable
	schtasks /change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable
	schtasks /change /TN "Microsoft\Windows\Printing\EduPrintProv" /disable
	schtasks /change /TN "Microsoft\Windows\Printing\PrinterCleanupTask" /disable
	schtasks /change /TN "Microsoft\Windows\PushToInstall\LoginCheck" /disable
	schtasks /change /TN "Microsoft\Windows\PushToInstall\Registration" /disable
	schtasks /change /TN "Microsoft\Windows\Ras\MobilityManager" /disable
	schtasks /change /TN "Microsoft\Windows\RecoveryEnvironment\VerifyWinRE" /disable
	schtasks /change /TN "Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /disable
	schtasks /change /TN "Microsoft\Windows\remoteAssistance\remoteAssistanceTask" /disable
	schtasks /change /TN "Microsoft\Windows\RetailDemo\CleanupOfflineContent" /disable
	schtasks /change /TN "Microsoft\Windows\Servicing\StartComponentCleanup" /disable
	schtasks /change /TN "Microsoft\Windows\SettingSync\NetworkStateChangeTask" /disable
	schtasks /change /TN "Microsoft\Windows\Setup\SetupCleanupTask" /disable
	schtasks /change /TN "Microsoft\Windows\Setup\SnapshotCleanupTask" /disable
	schtasks /change /TN "Microsoft\Windows\Shell\FamilySafetyMonitor" /disable
	schtasks /change /TN "Microsoft\Windows\Shell\FamilySafetyMonitorToastTask" /disable
	schtasks /change /TN "Microsoft\Windows\Shell\FamilySafetyRefresh" /disable
	schtasks /change /TN "Microsoft\Windows\Shell\FamilySafetyRefreshTask" /disable
	schtasks /change /TN "Microsoft\Windows\Shell\FamilySafetyUpload" /disable
	schtasks /change /TN "Microsoft\Windows\SpacePort\SpaceAgentTask" /disable
	schtasks /change /TN "Microsoft\Windows\SpacePort\SpaceManagerTask" /disable
	schtasks /change /TN "Microsoft\Windows\Speech\SpeechModelDownloadTask" /disable
	schtasks /change /TN "Microsoft\Windows\Storage Tiers Management\Storage Tiers Management Initialization" /disable
	schtasks /change /TN "Microsoft\Windows\Subscription\EnableLicenseAcquisition" /disable
	schtasks /change /TN "Microsoft\Windows\Subscription\LicenseAcquisition" /disable
	schtasks /change /TN "Microsoft\Windows\Sysmain\ResPriStaticDbSync" /disable
	schtasks /change /TN "Microsoft\Windows\Sysmain\WsSwapAssessmentTask" /disable
	schtasks /change /TN "Microsoft\Windows\Task Manager\Interactive" /disable
	schtasks /change /TN "Microsoft\Windows\TextServicesFramework\MsCtfMonitor" /disable
	schtasks /change /TN "Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /disable
	schtasks /change /TN "Microsoft\Windows\Time Synchronization\SynchronizeTime" /disable
	schtasks /change /TN "Microsoft\Windows\Time Zone\SynchronizeTimeZone" /disable
	schtasks /change /TN "Microsoft\Windows\TPM\Tpm-HASCertRetr" /disable
	schtasks /change /TN "Microsoft\Windows\TPM\Tpm-Maintenance" /disable
	schtasks /change /TN "Microsoft\Windows\UPnP\UPnPHostConfig" /disable
	schtasks /change /TN "Microsoft\Windows\User Profile Service\HiveUploadTask" /disable
	schtasks /change /TN "Microsoft\Windows\WCM\WiFiTask" /disable
	schtasks /change /TN "Microsoft\Windows\WDI\ResolutionHost" /disable
	schtasks /change /TN "Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /disable
	schtasks /change /TN "Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /disable
	schtasks /change /TN "Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /disable
	schtasks /change /TN "Microsoft\Windows\Windows Defender\Windows Defender Verification" /disable
	schtasks /change /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting" /disable
	schtasks /change /TN "Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange" /disable
	schtasks /change /TN "Microsoft\Windows\WindowsUpdate\Automatic App Update" /disable
	schtasks /change /TN "Microsoft\Windows\WindowsUpdate\Scheduled Start" /disable
	schtasks /change /TN "Microsoft\Windows\WlanSvc\CDSSync" /disable
	schtasks /change /TN "Microsoft\Windows\WOF\WIM-Hash-Management" /disable
	schtasks /change /TN "Microsoft\Windows\WOF\WIM-Hash-Validation" /disable
	schtasks /change /TN "Microsoft\Windows\Work Folders\Work Folders Logon Synchronization" /disable
	schtasks /change /TN "Microsoft\Windows\Work Folders\Work Folders Maintenance Work" /disable
	schtasks /change /TN "Microsoft\Windows\Workplace Join\Automatic-Device-Join" /disable
	schtasks /change /TN "Microsoft\Windows\Workplace Join\Device-Sync" /disable
	schtasks /change /TN "Microsoft\Windows\Workplace Join\Recovery-Check" /disable
	schtasks /change /TN "Microsoft\Windows\WwanSvc\NotificationTask" /disable
	schtasks /change /TN "Microsoft\Windows\WwanSvc\OobeDiscovery" /disable
	schtasks /change /TN "Microsoft\XblGameSave\XblGameSaveTask" /disable
	rem Deleting all tasks specified
	schtasks /delete /TN "AMDInstallLauncher" /f
	schtasks /delete /TN "AMDLinkUpdate" /f
	schtasks /delete /TN "AMDRyzenMasterSDKTask" /f
	schtasks /delete /TN "Driver Easy Scheduled Scan" /f
	schtasks /delete /TN "ModifyLinkUpdate" /f
	schtasks /delete /TN "SoftMakerUpdater" /f
	schtasks /delete /TN "StartCN" /f
	schtasks /delete /TN "StartDVR" /f
	rem Deleting all windows setting sync files.
	del /F /Q "C:\Windows\System32\Tasks\Microsoft\Windows\SettingSync\*"
)

echo Done&>nul pause