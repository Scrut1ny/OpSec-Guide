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
	schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016"
	schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack"
	schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016"
	schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn"
	schtasks /end /tn "\Microsoft\Windows\AppID\SmartScreenSpecific"
	schtasks /end /tn "\Microsoft\Windows\Application Experience\AitAgent"
	schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser"
	schtasks /end /tn "\Microsoft\Windows\Application Experience\PcaPatchDbTask"
	schtasks /end /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater"
	schtasks /end /tn "\Microsoft\Windows\Application Experience\StartupAppTask""
	schtasks /end /tn "\Microsoft\Windows\Autochk\Proxy"
	schtasks /end /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask"
	schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM"
	schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator"
	schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask"
	schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader"
	schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip"
	schtasks /end /tn "\Microsoft\Windows\Device Information\Device User"
	schtasks /end /tn "\Microsoft\Windows\Device Information\Device"
	schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector"
	schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver"
	schtasks /end /tn "\Microsoft\Windows\DiskFootprint\Diagnostics"
	schtasks /end /tn "\Microsoft\Windows\Feedback\Siuf\DmClient"
	schtasks /end /tn "\Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload"
	schtasks /end /tn "\Microsoft\Windows\FileHistory\File History (maintenance mode)"
	schtasks /end /tn "\Microsoft\Windows\HelloFace\FODCleanupTask"
	schtasks /end /tn "\Microsoft\Windows\Maintenance\WinSAT"
	schtasks /end /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo"
	schtasks /end /tn "\Microsoft\Windows\PI\Sqm-Tasks"
	schtasks /end /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
	schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor"
	schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh"
	schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyUpload"
	schtasks /end /tn "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime"
	schtasks /end /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime"
	schtasks /end /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting"
	schtasks /end /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update"
	schtasks /end /tn "\Microsoft\XblGameSave\XblGameSaveTask"
	schtasks /end /tn "\Microsoft\XblGameSave\XblGameSaveTaskLogon"
	schtasks /end /tn "CreateExplorerShellUnelevatedTask" /Enable
	schtasks /end /tn "Microsoft\Office\Office 15 Subscription Heartbeat"
	schtasks /end /tn "Microsoft\Office\Office 16 Subscription Heartbeat"
	schtasks /end /tn "Microsoft\Office\OfficeTelemetryAgentFallBack"
	schtasks /end /tn "Microsoft\Office\OfficeTelemetryAgentLogOn"
	schtasks /end /tn "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 64 Critical"
	schtasks /end /tn "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 64"
	schtasks /end /tn "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 Critical"
	schtasks /end /tn "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319"
	schtasks /end /tn "Microsoft\Windows\AppID\SmartScreenSpecific"
	schtasks /end /tn "Microsoft\Windows\Application Experience\AitAgent"
	schtasks /end /tn "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser"
	schtasks /end /tn "Microsoft\Windows\Application Experience\PcaPatchDbTask"
	schtasks /end /tn "Microsoft\Windows\Application Experience\ProgramDataUpdater"
	schtasks /end /tn "Microsoft\Windows\Application Experience\StartupAppTask"
	schtasks /end /tn "Microsoft\Windows\ApplicationData\DsSvcCleanup"
	schtasks /end /tn "Microsoft\Windows\Autochk\Proxy"
	schtasks /end /tn "Microsoft\Windows\Clip\License Validation"
	schtasks /end /tn "Microsoft\Windows\CloudExperienceHost\CreateObjectTask"
	schtasks /end /tn "Microsoft\Windows\Customer Experience Improvement Program\BthSQM"
	schtasks /end /tn "Microsoft\Windows\Customer Experience Improvement Program\Consolidator"
	schtasks /end /tn "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask"
	schtasks /end /tn "Microsoft\Windows\Customer Experience Improvement Program\Uploader"
	schtasks /end /tn "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip"
	schtasks /end /tn "Microsoft\Windows\Defrag\ScheduledDefrag"
	schtasks /end /tn "Microsoft\Windows\Device Information\Device User"
	schtasks /end /tn "Microsoft\Windows\Device Information\Device"
	schtasks /end /tn "Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner"
	schtasks /end /tn "Microsoft\Windows\Diagnosis\Scheduled"
	schtasks /end /tn "Microsoft\Windows\DiskCleanup\SilentCleanup"
	schtasks /end /tn "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector"
	schtasks /end /tn "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver"
	schtasks /end /tn "Microsoft\Windows\DiskFootprint\Diagnostics"
	schtasks /end /tn "Microsoft\Windows\DiskFootprint\StorageSense"
	schtasks /end /tn "Microsoft\Windows\DUSM\dusmtask"
	schtasks /end /tn "Microsoft\Windows\EnterpriseMgmt\MDMMaintenenceTask"
	schtasks /end /tn "Microsoft\Windows\Feedback\Siuf\DmClient"
	schtasks /end /tn "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload"
	schtasks /end /tn "Microsoft\Windows\FileHistory\File History (maintenance mode)"
	schtasks /end /tn "Microsoft\Windows\Flighting\FeatureConfig\ReconcileFeatures"
	schtasks /end /tn "Microsoft\Windows\Flighting\FeatureConfig\UsageDataFlushing"
	schtasks /end /tn "Microsoft\Windows\Flighting\FeatureConfig\UsageDataReporting"
	schtasks /end /tn "Microsoft\Windows\Flighting\OneSettings\RefreshCache"
	schtasks /end /tn "Microsoft\Windows\HelloFace\FODCleanupTask"
	schtasks /end /tn "Microsoft\Windows\Input\LocalUserSyncDataAvailable"
	schtasks /end /tn "Microsoft\Windows\Input\MouseSyncDataAvailable"
	schtasks /end /tn "Microsoft\Windows\Input\PenSyncDataAvailable"
	schtasks /end /tn "Microsoft\Windows\Input\TouchpadSyncDataAvailable"
	schtasks /end /tn "Microsoft\Windows\Input\TouchpadUserSyncDataAvailable"
	schtasks /end /tn "Microsoft\Windows\International\Synchronize Language Settings"
	schtasks /end /tn "Microsoft\Windows\LanguageComponentsInstaller\Installation"
	schtasks /end /tn "Microsoft\Windows\LanguageComponentsInstaller\ReconcileLanguageResources"
	schtasks /end /tn "Microsoft\Windows\LanguageComponentsInstaller\Uninstallation"
	schtasks /end /tn "Microsoft\Windows\License Manager\TempSignedLicenseExChange"
	schtasks /end /tn "Microsoft\Windows\Location\Notifications"
	schtasks /end /tn "Microsoft\Windows\Location\WindowsActionDialog"
	schtasks /end /tn "Microsoft\Windows\Maintenance\WinSAT"
	schtasks /end /tn "Microsoft\Windows\Management\Provisioning\Cellular"
	schtasks /end /tn "Microsoft\Windows\Management\Provisioning\Logon"
	schtasks /end /tn "Microsoft\Windows\Maps\MapsToastTask"
	schtasks /end /tn "Microsoft\Windows\Maps\MapsUpdateTask"
	schtasks /end /tn "Microsoft\Windows\Mobile Broadband Accounts\MNO Metadata Parser"
	schtasks /end /tn "Microsoft\Windows\MUI\LPRemove"
	schtasks /end /tn "Microsoft\Windows\Multimedia\SystemSoundsService"
	schtasks /end /tn "Microsoft\Windows\NetTrace\GatherNetworkInfo"
	schtasks /end /tn "Microsoft\Windows\NlaSvc\WiFiTask"
	schtasks /end /tn "Microsoft\Windows\Offline Files\Background Synchronization"
	schtasks /end /tn "Microsoft\Windows\Offline Files\Logon Synchronization"
	schtasks /end /tn "Microsoft\Windows\PI\Sqm-Tasks"
	schtasks /end /tn "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
	schtasks /end /tn "Microsoft\Windows\Printing\EduPrintProv"
	schtasks /end /tn "Microsoft\Windows\Printing\PrinterCleanupTask"
	schtasks /end /tn "Microsoft\Windows\PushToInstall\LoginCheck"
	schtasks /end /tn "Microsoft\Windows\PushToInstall\Registration"
	schtasks /end /tn "Microsoft\Windows\Ras\MobilityManager"
	schtasks /end /tn "Microsoft\Windows\RecoveryEnvironment\VerifyWinRE"
	schtasks /end /tn "Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask"
	schtasks /end /tn "Microsoft\Windows\remoteAssistance\remoteAssistanceTask"
	schtasks /end /tn "Microsoft\Windows\RetailDemo\CleanupOfflineContent"
	schtasks /end /tn "Microsoft\Windows\Servicing\StartComponentCleanup"
	schtasks /end /tn "Microsoft\Windows\SettingSync\NetworkStateChangeTask"
	schtasks /end /tn "Microsoft\Windows\Setup\SetupCleanupTask"
	schtasks /end /tn "Microsoft\Windows\Setup\SnapshotCleanupTask"
	schtasks /end /tn "Microsoft\Windows\Shell\FamilySafetyMonitor"
	schtasks /end /tn "Microsoft\Windows\Shell\FamilySafetyMonitorToastTask"
	schtasks /end /tn "Microsoft\Windows\Shell\FamilySafetyRefresh"
	schtasks /end /tn "Microsoft\Windows\Shell\FamilySafetyRefreshTask"
	schtasks /end /tn "Microsoft\Windows\Shell\FamilySafetyUpload"
	schtasks /end /tn "Microsoft\Windows\SpacePort\SpaceAgentTask"
	schtasks /end /tn "Microsoft\Windows\SpacePort\SpaceManagerTask"
	schtasks /end /tn "Microsoft\Windows\Speech\SpeechModelDownloadTask"
	schtasks /end /tn "Microsoft\Windows\Storage Tiers Management\Storage Tiers Management Initialization"
	schtasks /end /tn "Microsoft\Windows\Subscription\EnableLicenseAcquisition"
	schtasks /end /tn "Microsoft\Windows\Subscription\LicenseAcquisition"
	schtasks /end /tn "Microsoft\Windows\Sysmain\ResPriStaticDbSync"
	schtasks /end /tn "Microsoft\Windows\Sysmain\WsSwapAssessmentTask"
	schtasks /end /tn "Microsoft\Windows\Task Manager\Interactive"
	schtasks /end /tn "Microsoft\Windows\TextServicesFramework\MsCtfMonitor"
	schtasks /end /tn "Microsoft\Windows\Time Synchronization\ForceSynchronizeTime"
	schtasks /end /tn "Microsoft\Windows\Time Synchronization\SynchronizeTime"
	schtasks /end /tn "Microsoft\Windows\Time Zone\SynchronizeTimeZone"
	schtasks /end /tn "Microsoft\Windows\TPM\Tpm-HASCertRetr"
	schtasks /end /tn "Microsoft\Windows\TPM\Tpm-Maintenance"
	schtasks /end /tn "Microsoft\Windows\UPnP\UPnPHostConfig"
	schtasks /end /tn "Microsoft\Windows\User Profile Service\HiveUploadTask"
	schtasks /end /tn "Microsoft\Windows\WCM\WiFiTask"
	schtasks /end /tn "Microsoft\Windows\WDI\ResolutionHost"
	schtasks /end /tn "Microsoft\Windows\Windows Error Reporting\QueueReporting"
	schtasks /end /tn "Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange"
	schtasks /end /tn "Microsoft\Windows\WindowsUpdate\Automatic App Update"
	schtasks /end /tn "Microsoft\Windows\WindowsUpdate\Scheduled Start"
	schtasks /end /tn "Microsoft\Windows\WlanSvc\CDSSync"
	schtasks /end /tn "Microsoft\Windows\WOF\WIM-Hash-Management"
	schtasks /end /tn "Microsoft\Windows\WOF\WIM-Hash-Validation"
	schtasks /end /tn "Microsoft\Windows\Work Folders\Work Folders Logon Synchronization"
	schtasks /end /tn "Microsoft\Windows\Work Folders\Work Folders Maintenance Work"
	schtasks /end /tn "Microsoft\Windows\Workplace Join\Automatic-Device-Join"
	schtasks /end /tn "Microsoft\Windows\Workplace Join\Device-Sync"
	schtasks /end /tn "Microsoft\Windows\Workplace Join\Recovery-Check"
	schtasks /end /tn "Microsoft\Windows\WwanSvc\NotificationTask"
	schtasks /end /tn "Microsoft\Windows\WwanSvc\OobeDiscovery"
	schtasks /end /tn "Microsoft\XblGameSave\XblGameSaveTask"
	rem Disabling all tasks specified.
	schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" /Disable
	schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack" /Disable
	schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" /Disable
	schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn" /Disable
	schtasks /change /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" /disable
	schtasks /change /tn "\Microsoft\Windows\Application Experience\AitAgent" /disable
	schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable
	schtasks /change /tn "\Microsoft\Windows\Application Experience\PcaPatchDbTask" /disable
	schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable
	schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /disable"
	schtasks /change /tn "\Microsoft\Windows\Autochk\Proxy" /disable
	schtasks /change /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /disable
	schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /disable
	schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable
	schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable
	schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /disable
	schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable
	schtasks /change /tn "\Microsoft\Windows\Device Information\Device User" /disable
	schtasks /change /tn "\Microsoft\Windows\Device Information\Device" /disable
	schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable
	schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /disable
	schtasks /change /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" /disable
	schtasks /change /tn "\Microsoft\Windows\Feedback\Siuf\DmClient" /disable
	schtasks /change /tn "\Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /disable
	schtasks /change /tn "\Microsoft\Windows\FileHistory\File History (maintenance mode)" /disable
	schtasks /change /tn "\Microsoft\Windows\HelloFace\FODCleanupTask" /disable
	schtasks /change /tn "\Microsoft\Windows\Maintenance\WinSAT" /disable
	schtasks /change /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /disable
	schtasks /change /tn "\Microsoft\Windows\PI\Sqm-Tasks" /disable
	schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable
	schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /disable
	schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /disable
	schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" /disable
	schtasks /change /tn "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /Disable
	schtasks /change /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime" /Disable
	schtasks /change /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /disable
	schtasks /change /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /Disable
	schtasks /change /tn "\Microsoft\XblGameSave\XblGameSaveTask" /disable
	schtasks /change /tn "\Microsoft\XblGameSave\XblGameSaveTaskLogon" /disable
	schtasks /change /tn "CreateExplorerShellUnelevatedTask" /Enable
	schtasks /change /tn "Microsoft\Office\Office 15 Subscription Heartbeat" /Disable
	schtasks /change /tn "Microsoft\Office\Office 16 Subscription Heartbeat" /Disable
	schtasks /change /tn "Microsoft\Office\OfficeTelemetryAgentFallBack" /Disable
	schtasks /change /tn "Microsoft\Office\OfficeTelemetryAgentLogOn" /Disable
	schtasks /change /tn "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 64 Critical" /Disable
	schtasks /change /tn "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 64" /Disable
	schtasks /change /tn "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 Critical" /Disable
	schtasks /change /tn "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319" /Disable
	schtasks /change /tn "Microsoft\Windows\AppID\SmartScreenSpecific" /Disable
	schtasks /change /tn "Microsoft\Windows\Application Experience\AitAgent" /Disable
	schtasks /change /tn "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable
	schtasks /change /tn "Microsoft\Windows\Application Experience\PcaPatchDbTask" /Disable
	schtasks /change /tn "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable
	schtasks /change /tn "Microsoft\Windows\Application Experience\StartupAppTask" /Disable
	schtasks /change /tn "Microsoft\Windows\ApplicationData\DsSvcCleanup" /Disable
	schtasks /change /tn "Microsoft\Windows\Autochk\Proxy" /Disable
	schtasks /change /tn "Microsoft\Windows\Clip\License Validation" /Disable
	schtasks /change /tn "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /Disable
	schtasks /change /tn "Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /Disable
	schtasks /change /tn "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
	schtasks /change /tn "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable
	schtasks /change /tn "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /Disable
	schtasks /change /tn "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable
	schtasks /change /tn "Microsoft\Windows\Defrag\ScheduledDefrag" /Disable
	schtasks /change /tn "Microsoft\Windows\Device Information\Device User" /Disable
	schtasks /change /tn "Microsoft\Windows\Device Information\Device" /Disable
	schtasks /change /tn "Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner" /Disable
	schtasks /change /tn "Microsoft\Windows\Diagnosis\Scheduled" /Disable
	schtasks /change /tn "Microsoft\Windows\DiskCleanup\SilentCleanup" /Disable
	schtasks /change /tn "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable
	schtasks /change /tn "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /Disable
	schtasks /change /tn "Microsoft\Windows\DiskFootprint\Diagnostics" /Disable
	schtasks /change /tn "Microsoft\Windows\DiskFootprint\StorageSense" /Disable
	schtasks /change /tn "Microsoft\Windows\DUSM\dusmtask" /Disable
	schtasks /change /tn "Microsoft\Windows\EnterpriseMgmt\MDMMaintenenceTask" /Disable
	schtasks /change /tn "Microsoft\Windows\Feedback\Siuf\DmClient" /Disable
	schtasks /change /tn "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /Disable
	schtasks /change /tn "Microsoft\Windows\FileHistory\File History (maintenance mode)" /Disable
	schtasks /change /tn "Microsoft\Windows\Flighting\FeatureConfig\ReconcileFeatures" /Disable
	schtasks /change /tn "Microsoft\Windows\Flighting\FeatureConfig\UsageDataFlushing" /Disable
	schtasks /change /tn "Microsoft\Windows\Flighting\FeatureConfig\UsageDataReporting" /Disable
	schtasks /change /tn "Microsoft\Windows\Flighting\OneSettings\RefreshCache" /Disable
	schtasks /change /tn "Microsoft\Windows\HelloFace\FODCleanupTask" /Disable
	schtasks /change /tn "Microsoft\Windows\Input\LocalUserSyncDataAvailable" /Disable
	schtasks /change /tn "Microsoft\Windows\Input\MouseSyncDataAvailable" /Disable
	schtasks /change /tn "Microsoft\Windows\Input\PenSyncDataAvailable" /Disable
	schtasks /change /tn "Microsoft\Windows\Input\TouchpadSyncDataAvailable" /Disable
	schtasks /change /tn "Microsoft\Windows\Input\TouchpadUserSyncDataAvailable" /Disable
	schtasks /change /tn "Microsoft\Windows\International\Synchronize Language Settings" /Disable
	schtasks /change /tn "Microsoft\Windows\LanguageComponentsInstaller\Installation" /Disable
	schtasks /change /tn "Microsoft\Windows\LanguageComponentsInstaller\ReconcileLanguageResources" /Disable
	schtasks /change /tn "Microsoft\Windows\LanguageComponentsInstaller\Uninstallation" /Disable
	schtasks /change /tn "Microsoft\Windows\License Manager\TempSignedLicenseExChange" /Disable
	schtasks /change /tn "Microsoft\Windows\Location\Notifications" /Disable
	schtasks /change /tn "Microsoft\Windows\Location\WindowsActionDialog" /Disable
	schtasks /change /tn "Microsoft\Windows\Maintenance\WinSAT" /Disable
	schtasks /change /tn "Microsoft\Windows\Management\Provisioning\Cellular" /Disable
	schtasks /change /tn "Microsoft\Windows\Management\Provisioning\Logon" /Disable
	schtasks /change /tn "Microsoft\Windows\Maps\MapsToastTask" /Disable
	schtasks /change /tn "Microsoft\Windows\Maps\MapsUpdateTask" /Disable
	schtasks /change /tn "Microsoft\Windows\Mobile Broadband Accounts\MNO Metadata Parser" /Disable
	schtasks /change /tn "Microsoft\Windows\MUI\LPRemove" /Disable
	schtasks /change /tn "Microsoft\Windows\Multimedia\SystemSoundsService" /Disable
	schtasks /change /tn "Microsoft\Windows\NetTrace\GatherNetworkInfo" /Disable
	schtasks /change /tn "Microsoft\Windows\NlaSvc\WiFiTask" /Disable
	schtasks /change /tn "Microsoft\Windows\Offline Files\Background Synchronization" /Disable
	schtasks /change /tn "Microsoft\Windows\Offline Files\Logon Synchronization" /Disable
	schtasks /change /tn "Microsoft\Windows\PI\Sqm-Tasks" /Disable
	schtasks /change /tn "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Disable
	schtasks /change /tn "Microsoft\Windows\Printing\EduPrintProv" /Disable
	schtasks /change /tn "Microsoft\Windows\Printing\PrinterCleanupTask" /Disable
	schtasks /change /tn "Microsoft\Windows\PushToInstall\LoginCheck" /Disable
	schtasks /change /tn "Microsoft\Windows\PushToInstall\Registration" /Disable
	schtasks /change /tn "Microsoft\Windows\Ras\MobilityManager" /Disable
	schtasks /change /tn "Microsoft\Windows\RecoveryEnvironment\VerifyWinRE" /Disable
	schtasks /change /tn "Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /Disable
	schtasks /change /tn "Microsoft\Windows\remoteAssistance\remoteAssistanceTask" /Disable
	schtasks /change /tn "Microsoft\Windows\RetailDemo\CleanupOfflineContent" /Disable
	schtasks /change /tn "Microsoft\Windows\Servicing\StartComponentCleanup" /Disable
	schtasks /change /tn "Microsoft\Windows\SettingSync\NetworkStateChangeTask" /Disable
	schtasks /change /tn "Microsoft\Windows\Setup\SetupCleanupTask" /Disable
	schtasks /change /tn "Microsoft\Windows\Setup\SnapshotCleanupTask" /Disable
	schtasks /change /tn "Microsoft\Windows\Shell\FamilySafetyMonitor" /Disable
	schtasks /change /tn "Microsoft\Windows\Shell\FamilySafetyMonitorToastTask" /Disable
	schtasks /change /tn "Microsoft\Windows\Shell\FamilySafetyRefresh" /Disable
	schtasks /change /tn "Microsoft\Windows\Shell\FamilySafetyRefreshTask" /Disable
	schtasks /change /tn "Microsoft\Windows\Shell\FamilySafetyUpload" /Disable
	schtasks /change /tn "Microsoft\Windows\SpacePort\SpaceAgentTask" /Disable
	schtasks /change /tn "Microsoft\Windows\SpacePort\SpaceManagerTask" /Disable
	schtasks /change /tn "Microsoft\Windows\Speech\SpeechModelDownloadTask" /Disable
	schtasks /change /tn "Microsoft\Windows\Storage Tiers Management\Storage Tiers Management Initialization" /Disable
	schtasks /change /tn "Microsoft\Windows\Subscription\EnableLicenseAcquisition" /Disable
	schtasks /change /tn "Microsoft\Windows\Subscription\LicenseAcquisition" /Disable
	schtasks /change /tn "Microsoft\Windows\Sysmain\ResPriStaticDbSync" /Disable
	schtasks /change /tn "Microsoft\Windows\Sysmain\WsSwapAssessmentTask" /Disable
	schtasks /change /tn "Microsoft\Windows\Task Manager\Interactive" /Disable
	schtasks /change /tn "Microsoft\Windows\TextServicesFramework\MsCtfMonitor" /Disable
	schtasks /change /tn "Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /Disable
	schtasks /change /tn "Microsoft\Windows\Time Synchronization\SynchronizeTime" /Disable
	schtasks /change /tn "Microsoft\Windows\Time Zone\SynchronizeTimeZone" /Disable
	schtasks /change /tn "Microsoft\Windows\TPM\Tpm-HASCertRetr" /Disable
	schtasks /change /tn "Microsoft\Windows\TPM\Tpm-Maintenance" /Disable
	schtasks /change /tn "Microsoft\Windows\UPnP\UPnPHostConfig" /Disable
	schtasks /change /tn "Microsoft\Windows\User Profile Service\HiveUploadTask" /Disable
	schtasks /change /tn "Microsoft\Windows\WCM\WiFiTask" /Disable
	schtasks /change /tn "Microsoft\Windows\WDI\ResolutionHost" /Disable
	schtasks /change /tn "Microsoft\Windows\Windows Error Reporting\QueueReporting" /Disable
	schtasks /change /tn "Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange" /Disable
	schtasks /change /tn "Microsoft\Windows\WindowsUpdate\Automatic App Update" /Disable
	schtasks /change /tn "Microsoft\Windows\WindowsUpdate\Scheduled Start" /Disable
	schtasks /change /tn "Microsoft\Windows\WlanSvc\CDSSync" /Disable
	schtasks /change /tn "Microsoft\Windows\WOF\WIM-Hash-Management" /Disable
	schtasks /change /tn "Microsoft\Windows\WOF\WIM-Hash-Validation" /Disable
	schtasks /change /tn "Microsoft\Windows\Work Folders\Work Folders Logon Synchronization" /Disable
	schtasks /change /tn "Microsoft\Windows\Work Folders\Work Folders Maintenance Work" /Disable
	schtasks /change /tn "Microsoft\Windows\Workplace Join\Automatic-Device-Join" /Disable
	schtasks /change /tn "Microsoft\Windows\Workplace Join\Device-Sync" /Disable
	schtasks /change /tn "Microsoft\Windows\Workplace Join\Recovery-Check" /Disable
	schtasks /change /tn "Microsoft\Windows\WwanSvc\NotificationTask" /Disable
	schtasks /change /tn "Microsoft\Windows\WwanSvc\OobeDiscovery" /Disable
	schtasks /change /tn "Microsoft\XblGameSave\XblGameSaveTask" /Disable
	rem Deleting all tasks specified
	schtasks /delete /tn "AMDInstallLauncher" /f
	schtasks /delete /tn "AMDLinkUpdate" /f
	schtasks /delete /tn "AMDRyzenMasterSDKTask" /f
	schtasks /delete /tn "Driver Easy Scheduled Scan" /f
	schtasks /delete /tn "ModifyLinkUpdate" /f
	schtasks /delete /tn "SoftMakerUpdater" /f
	schtasks /delete /tn "StartCN" /f
	schtasks /delete /tn "StartDVR" /f
	rem Deleting all windows setting sync files.
	del /F /Q "C:\Windows\System32\Tasks\Microsoft\Windows\SettingSync\*"
)

echo Done&>nul pause