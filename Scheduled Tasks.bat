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
	schtasks /Change /TN "CreateExplorerShellUnelevatedTask" /Enable
	schtasks /Change /TN "Microsoft\Office\Office 15 Subscription Heartbeat" /Disable
	schtasks /change /TN "Microsoft\Office\Office 15 Subscription Heartbeat" /disable
	schtasks /change /TN "Microsoft\Office\Office 16 Subscription Heartbeat" /disable
	schtasks /Change /TN "Microsoft\Office\OfficeTelemetryAgentFallBack" /Disable
	schtasks /Change /TN "Microsoft\Office\OfficeTelemetryAgentLogOn" /Disable
	schtasks /Change /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 64 Critical" /Disable
	schtasks /Change /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 64" /Disable
	schtasks /Change /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 Critical" /Disable
	schtasks /Change /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319" /Disable
	schtasks /Change /TN "Microsoft\Windows\AppID\SmartScreenSpecific" /Disable
	schtasks /Change /TN "Microsoft\Windows\AppID\SmartScreenSpecific" /disable
	schtasks /Change /TN "Microsoft\Windows\Application Experience\AitAgent" /disable
	schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable
	schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable
	schtasks /Change /TN "Microsoft\Windows\Application Experience\PcaPatchDbTask" /Disable
	schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable
	schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable
	schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /Disable
	schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /disable
	schtasks /Change /TN "Microsoft\Windows\ApplicationData\DsSvcCleanup" /disable
	schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /Disable
	schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /disable
	schtasks /Change /TN "Microsoft\Windows\Clip\License Validation" /disable
	schtasks /Change /TN "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /disable
	schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /disable
	schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
	schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable
	schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable
	schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable
	schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /Disable
	schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /disable
	schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable
	schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable
	schtasks /Change /TN "Microsoft\Windows\Defrag\ScheduledDefrag" /Disable
	schtasks /Change /TN "Microsoft\Windows\Device Information\Device User" /Disable
	schtasks /Change /TN "Microsoft\Windows\Device Information\Device" /Disable
	schtasks /Change /TN "Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner" /Disable
	schtasks /Change /TN "Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner" /disable
	schtasks /Change /TN "Microsoft\Windows\Diagnosis\Scheduled" /Disable
	schtasks /Change /TN "Microsoft\Windows\Diagnosis\Scheduled" /disable
	schtasks /Change /TN "Microsoft\Windows\DiskCleanup\SilentCleanup" /Disable
	schtasks /Change /TN "Microsoft\Windows\DiskCleanup\SilentCleanup" /disable
	schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable
	schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable
	schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /disable
	schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /Disable
	schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /disable
	schtasks /Change /TN "Microsoft\Windows\DiskFootprint\StorageSense" /Disable
	schtasks /Change /TN "Microsoft\Windows\DUSM\dusmtask" /Disable
	schtasks /Change /TN "Microsoft\Windows\EnterpriseMgmt\MDMMaintenenceTask" /Disable
	schtasks /Change /TN "Microsoft\Windows\Feedback\Siuf\DmClient" /Disable
	schtasks /Change /TN "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /Disable
	schtasks /Change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /Disable
	schtasks /Change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /disable
	schtasks /Change /TN "Microsoft\Windows\Flighting\FeatureConfig\ReconcileFeatures" /Disable
	schtasks /Change /TN "Microsoft\Windows\Flighting\FeatureConfig\UsageDataFlushing" /Disable
	schtasks /Change /TN "Microsoft\Windows\Flighting\FeatureConfig\UsageDataReporting" /Disable
	schtasks /Change /TN "Microsoft\Windows\Flighting\OneSettings\RefreshCache" /Disable
	schtasks /Change /TN "Microsoft\Windows\HelloFace\FODCleanupTask" /Disable
	schtasks /Change /TN "Microsoft\Windows\Input\LocalUserSyncDataAvailable" /Disable
	schtasks /Change /TN "Microsoft\Windows\Input\LocalUserSyncDataAvailable" /disable
	schtasks /Change /TN "Microsoft\Windows\Input\MouseSyncDataAvailable" /Disable
	schtasks /Change /TN "Microsoft\Windows\Input\MouseSyncDataAvailable" /disable
	schtasks /Change /TN "Microsoft\Windows\Input\PenSyncDataAvailable" /Disable
	schtasks /Change /TN "Microsoft\Windows\Input\PenSyncDataAvailable" /disable
	schtasks /Change /TN "Microsoft\Windows\Input\TouchpadSyncDataAvailable" /Disable
	schtasks /Change /TN "Microsoft\Windows\Input\TouchpadUserSyncDataAvailable" /disable
	schtasks /Change /TN "Microsoft\Windows\International\Synchronize Language Settings" /Disable
	schtasks /Change /TN "Microsoft\Windows\International\Synchronize Language Settings" /disable
	schtasks /Change /TN "Microsoft\Windows\LanguageComponentsInstaller\Installation" /Disable
	schtasks /Change /TN "Microsoft\Windows\LanguageComponentsInstaller\ReconcileLanguageResources" /Disable
	schtasks /Change /TN "Microsoft\Windows\LanguageComponentsInstaller\Uninstallation" /Disable
	schtasks /Change /TN "Microsoft\Windows\License Manager\TempSignedLicenseExchange" /Disable
	schtasks /Change /TN "Microsoft\Windows\License Manager\TempSignedLicenseExchange" /disable
	schtasks /Change /TN "Microsoft\Windows\Location\Notifications" /disable
	schtasks /Change /TN "Microsoft\Windows\Location\WindowsActionDialog" /disable
	schtasks /Change /TN "Microsoft\Windows\Maintenance\WinSAT" /Disable
	schtasks /Change /TN "Microsoft\Windows\Maintenance\WinSAT" /disable
	schtasks /Change /TN "Microsoft\Windows\Management\Provisioning\Cellular" /Disable
	schtasks /Change /TN "Microsoft\Windows\Management\Provisioning\Logon" /Disable
	schtasks /Change /TN "Microsoft\Windows\Maps\MapsToastTask" /Disable
	schtasks /Change /TN "Microsoft\Windows\Maps\MapsUpdateTask" /Disable
	schtasks /Change /TN "Microsoft\Windows\Mobile Broadband Accounts\MNO Metadata Parser" /Disable
	schtasks /Change /TN "Microsoft\Windows\Mobile Broadband Accounts\MNO Metadata Parser" /disable
	schtasks /Change /TN "Microsoft\Windows\MUI\LPRemove" /Disable
	schtasks /Change /TN "Microsoft\Windows\Multimedia\SystemSoundsService" /Disable
	schtasks /Change /TN "Microsoft\Windows\NetTrace\GatherNetworkInfo" /Disable
	schtasks /Change /TN "Microsoft\Windows\NetTrace\GatherNetworkInfo" /disable
	schtasks /Change /TN "Microsoft\Windows\NlaSvc\WiFiTask" /Disable
	schtasks /Change /TN "Microsoft\Windows\Offline Files\Background Synchronization" /disable
	schtasks /Change /TN "Microsoft\Windows\Offline Files\Logon Synchronization" /disable
	schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /Disable
	schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /disable
	schtasks /Change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Disable
	schtasks /Change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable
	schtasks /Change /TN "Microsoft\Windows\Printing\EduPrintProv" /Disable
	schtasks /Change /TN "Microsoft\Windows\Printing\PrinterCleanupTask" /Disable
	schtasks /Change /TN "Microsoft\Windows\PushToInstall\LoginCheck" /disable
	schtasks /Change /TN "Microsoft\Windows\PushToInstall\Registration" /Disable
	schtasks /Change /TN "Microsoft\Windows\PushToInstall\Registration" /disable
	schtasks /Change /TN "Microsoft\Windows\Ras\MobilityManager" /Disable
	schtasks /Change /TN "Microsoft\Windows\Ras\MobilityManager" /disable
	schtasks /Change /TN "Microsoft\Windows\RecoveryEnvironment\VerifyWinRE" /Disable
	schtasks /Change /TN "Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /Disable
	schtasks /Change /TN "Microsoft\Windows\remoteAssistance\remoteAssistanceTask" /Disable
	schtasks /Change /TN "Microsoft\Windows\RetailDemo\CleanupOfflineContent" /Disable
	schtasks /Change /TN "Microsoft\Windows\Servicing\StartComponentCleanup" /Disable
	schtasks /Change /TN "Microsoft\Windows\SettingSync\NetworkStateChangeTask" /Disable
	schtasks /Change /TN "Microsoft\Windows\Setup\SetupCleanupTask" /Disable
	schtasks /Change /TN "Microsoft\Windows\Setup\SnapshotCleanupTask" /Disable
	schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyMonitor" /disable
	schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyMonitorToastTask" /disable
	schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyRefresh" /disable
	schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyRefreshTask" /disable
	schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyUpload" /Disable
	schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyUpload" /disable
	schtasks /Change /TN "Microsoft\Windows\SpacePort\SpaceAgentTask" /Disable
	schtasks /Change /TN "Microsoft\Windows\SpacePort\SpaceAgentTask" /disable
	schtasks /Change /TN "Microsoft\Windows\SpacePort\SpaceManagerTask" /Disable
	schtasks /Change /TN "Microsoft\Windows\SpacePort\SpaceManagerTask" /disable
	schtasks /Change /TN "Microsoft\Windows\Speech\SpeechModelDownloadTask" /Disable
	schtasks /Change /TN "Microsoft\Windows\Speech\SpeechModelDownloadTask" /disable
	schtasks /Change /TN "Microsoft\Windows\Storage Tiers Management\Storage Tiers Management Initialization" /Disable
	schtasks /Change /TN "Microsoft\Windows\Subscription\EnableLicenseAcquisition" /disable
	schtasks /Change /TN "Microsoft\Windows\Subscription\LicenseAcquisition" /disable
	schtasks /Change /TN "Microsoft\Windows\Sysmain\ResPriStaticDbSync" /Disable
	schtasks /Change /TN "Microsoft\Windows\Sysmain\WsSwapAssessmentTask" /Disable
	schtasks /Change /TN "Microsoft\Windows\Task Manager\Interactive" /Disable
	schtasks /Change /TN "Microsoft\Windows\TextServicesFramework\MsCtfMonitor" /Disable
	schtasks /Change /TN "Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /Disable
	schtasks /Change /TN "Microsoft\Windows\Time Synchronization\SynchronizeTime" /Disable
	schtasks /Change /TN "Microsoft\Windows\Time Zone\SynchronizeTimeZone" /Disable
	schtasks /Change /TN "Microsoft\Windows\TPM\Tpm-HASCertRetr" /Disable
	schtasks /Change /TN "Microsoft\Windows\TPM\Tpm-Maintenance" /Disable
	schtasks /Change /TN "Microsoft\Windows\UPnP\UPnPHostConfig" /Disable
	schtasks /Change /TN "Microsoft\Windows\User Profile Service\HiveUploadTask" /Disable
	schtasks /Change /TN "Microsoft\Windows\WCM\WiFiTask" /Disable
	schtasks /Change /TN "Microsoft\Windows\WDI\ResolutionHost" /Disable
	schtasks /Change /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting" /disable
	schtasks /Change /TN "Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange" /Disable
	schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Automatic App Update" /disable
	schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Scheduled Start" /Disable
	schtasks /Change /TN "Microsoft\Windows\WlanSvc\CDSSync" /Disable
	schtasks /Change /TN "Microsoft\Windows\WOF\WIM-Hash-Management" /Disable
	schtasks /Change /TN "Microsoft\Windows\WOF\WIM-Hash-Validation" /Disable
	schtasks /Change /TN "Microsoft\Windows\Work Folders\Work Folders Logon Synchronization" /Disable
	schtasks /Change /TN "Microsoft\Windows\Work Folders\Work Folders Maintenance Work" /Disable
	schtasks /Change /TN "Microsoft\Windows\Workplace Join\Automatic-Device-Join" /Disable
	schtasks /Change /TN "Microsoft\Windows\Workplace Join\Automatic-Device-Join" /disable
	schtasks /Change /TN "Microsoft\Windows\Workplace Join\Device-Sync" /disable
	schtasks /Change /TN "Microsoft\Windows\Workplace Join\Recovery-Check" /disable
	schtasks /Change /TN "Microsoft\Windows\WwanSvc\NotificationTask" /Disable
	schtasks /Change /TN "Microsoft\Windows\WwanSvc\OobeDiscovery" /Disable
	schtasks /Change /TN "Microsoft\XblGameSave\XblGameSaveTask" /Disable
	schtasks /DELETE /TN "AMDInstallLauncher" /f
	schtasks /DELETE /TN "AMDLinkUpdate" /f
	schtasks /DELETE /TN "AMDRyzenMasterSDKTask" /f
	schtasks /DELETE /TN "Driver Easy Scheduled Scan" /f
	schtasks /DELETE /TN "ModifyLinkUpdate" /f
	schtasks /DELETE /TN "SoftMakerUpdater" /f
	schtasks /DELETE /TN "StartCN" /f
	schtasks /DELETE /TN "StartDVR" /f
	del /F /Q "C:\Windows\System32\Tasks\Microsoft\Windows\SettingSync\*"
)

echo Done&>nul pause