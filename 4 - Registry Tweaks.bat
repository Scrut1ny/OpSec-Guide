@echo off

fltmc >nul 2>&1 || (
    echo Administrator privileges are required.
    PowerShell Start -Verb RunAs '%0' 2> nul || (
        echo Right-click on the script and select "Run as administrator".
        pause & exit 1
    )
    exit 0
)

rem Registry Tweaks

>nul 2>&1 (
	reg add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "506" /f
	reg add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
	reg add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "2000" /f
	reg add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "2000" /f
	reg add "HKCU\SOFTWARE\Microsoft\Command Processor" /v "AutoRun" /t REG_SZ /d "prompt $E[38;5;220m$S$S_$_$E[38;5;208m$G$E[38;5;220m$C$E[0m.$E[38;5;220m$F__$_$S$C___/$S$E[0m$P$G" /f
	reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "0" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "ContentDeliveryAllowed" /t REG_DWORD /d "0" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "FeaturemanagementEnabled" /t REG_DWORD /d "0" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d "0" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEnabled" /t REG_DWORD /d "0" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEverEnabled" /t REG_DWORD /d "0" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenEnabled" /t REG_DWORD /d "0" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenOverlayEnabled" /t REG_DWORD /d "0" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SlideshowEnabled" /t REG_DWORD /d "0" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SoftLandingEnabled" /t REG_DWORD /d "0" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338388Enabled" /t REG_DWORD /d "0" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-88000326Enabled" /t REG_DWORD /d "0" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContentEnabled" /t REG_DWORD /d "0" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d "0" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DesktopLivePreviewHoverTime" /t REG_DWORD /d "00000064" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ExtendedUIHoverTime" /t REG_DWORD /d "00000064" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d "1" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d "0" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSecondsInSystemClock" /t REG_DWORD /d "1" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSuperHidden" /t REG_DWORD /d "1" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ThumbnailLivePreviewHoverTime" /t REG_DWORD /d "00000064" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AltTab" /v "LivePreview_ms" /t REG_DWORD /d "00000064" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.txt\OpenWithProgids" /v "Notepad++_file" /t REG_NONE /d "" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d "0" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "CursorCaptureEnabled" /t REG_DWORD /d "0" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "MicrophoneCaptureEnabled" /t REG_DWORD /d "0" /f
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "SystemUsesLightTheme" /t REG_DWORD /d "0" /f
	reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
	reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f
	reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "2" /f
	reg add "HKLM\SOFTWARE\AMD\CN" /t REG_DWORD /v "CollectGIData" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Assistance\Client\"1"."0"\Settings" /t REG_DWORD /v "GlobalOnlineAssist" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Clipboard" /t REG_DWORD /v "IsClipboardSignalProducingFeatureAvailable" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Clipboard" /t REG_DWORD /v "IsCloudAndHistoryFeatureAvailable" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\COM3" /t REG_DWORD /v RemoteAccessEnabled /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\DataCollection\Default\WifiAutoConnectConfig" /t REG_DWORD /v "AutoConnectEnabled" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Input" /t REG_DWORD /v "InputServiceEnabled" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Input" /t REG_DWORD /v "InputServiceEnabledForCCI" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Internet Explorer" /t REG_DWORD /v "IntegratedBrowser" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\AboveLock" /t REG_DWORD /v "AllowCortanaAboveLock" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\DataProtection" /t REG_DWORD /v "AllowDirectMemoryAccess" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Experience" /t REG_DWORD /v "AllowCortana" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /t REG_DWORD /v "EnableWebContentEvaluation" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing" /t REG_DWORD /v "EnableLog" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ConnectedSearch" /t REG_DWORD /v "ConnectedSearchUseWeb" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v PreventDeviceMetadataFromNetwork /t REG_DWORD /d "1" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /t REG_DWORD /v "ActiveSetupDisabled" /d "1" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /t REG_DWORD /v "DisableAppInstallsOnFirstLogon" /d "1" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /t REG_DWORD /v "MachineOobeUpdates" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v "Start_TrackDocs" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "UseOLEDTaskbarTransparency" /t REG_DWORD /d "1" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\FlightedFeatures" /t REG_DWORD /v "ComponentUIForWinRTPicker" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /t REG_DWORD /v "AllowOnlineTips" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /t REG_DWORD /v "NoWebServices" /d "1" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\MobilityCenter" /t REG_DWORD /v "NoMobilityCenter" /d "1" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\SYSTEM\CredSSP\Parameters" /t REG_DWORD /v "AllowEncryptionOracle" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\PrecisionTouchPad" /t REG_DWORD /v "AAPDisabled" /d "1" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /t REG_DWORD /v "TailoredExperiencesWithDiagnosticDataEnabled" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Spectrum" /t REG_DWORD /v "SharedExperiencesEnabled" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Syncmgr" /t REG_DWORD /v "Installed" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-Windows Defender/Operational" /v "Enabled" /t Reg_DWORD /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-Windows Defender/WHC" /v "Enabled" /t Reg_DWORD /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics" /t REG_DWORD /v "EnabledExecution /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy" /t REG_DWORD /v "EnableQueryRemoteServer" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\BrokerUp" /t REG_DWORD /v "WWAJSE" /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Wisp\MultiTouch" /t REG_DWORD /v "MultiTouchEnabled" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\AppHVSI" /v "AuditApplicationGuard" /t REG_DWORD /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v DontOfferThroughWUAU /t REG_DWORD /d "1" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\PushToInstall" /v "DisablePushToInstall" /t REG_DWORD /d "1" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRawWriteNotification" /t REG_DWORD /d "1" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "DisableGenericRePorts" /t REG_DWORD /d "1" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d "1" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /t REG_DWORD /v "DisableCloudOptimizedContent" /d "1" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /t REG_DWORD /v "DisableSoftLanding" /d "1" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /t REG_DWORD /v "DisableWindowsConsumerFeatures" /d "1" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Connect" /t REG_DWORD /v "AllowProjectionToPC" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /t REG_DWORD /v "AllowCommercialDataPipeline" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /t REG_DWORD /v "AllowDesktopAnalyticsProcessing" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /t REG_DWORD /v "AllowTelemetry" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\FileHistory" /t REG_DWORD /v "Disabled" /d "1" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /t REG_DWORD /v "AllowGameDVR" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /t REG_DWORD /v "DisableLocation" /d "1" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /t REG_DWORD /v "DisableLocationScripting" /d "1" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /t REG_DWORD /v "DisableSensors" /d "1" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /t REG_DWORD /v "DisableWindowsLocationProvider" /d "1" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps" /t REG_DWORD /v "AutoDownloadAndUpdateMapData" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Messaging" /t REG_DWORD /v "AllowMessageSync" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\NetCache" /t REG_DWORD /v "BackgroundSyncEnabled" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\NetCache" /t REG_DWORD /v "BackgroundSyncEnabledForForcedOffline" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\NetCache" /t REG_DWORD /v "Enabled" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\NvCache" /t REG_DWORD /v "EnableNvCache" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\NvCache" /t REG_DWORD /v "EnablePowerModeState" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\NvCache" /t REG_DWORD /v "EnableSolidStateMode" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\NvCache" /t REG_DWORD /v "OptimizeBootAndResume" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /t REG_DWORD /v "DisableFileSync" /d "1" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /t REG_DWORD /v "DisableFileSyncNGSC" /d "1" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /t REG_DWORD /v "DisableLibrariesDefaultSaveToOneDrive" /d "1" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /t REG_DWORD /v "DisableMeteredNetworkFileSync" /d "1" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OOBE" /t REG_DWORD /v "DisablePrivacyExperience" /d "1" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /t REG_DWORD /v "NoLockScreenCamera" /d "1" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /t REG_DWORD /v "NoLockScreenSlideshow" /d "1" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds" /t REG_DWORD /v "AllowBuildPreview" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\registration Wizard Control" /t REG_DWORD /v "Noregistration" /d "1" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\ScheduledDiagnostics" /t REG_DWORD /v "EnabledExecution" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\ScriptedDiagnostics" /t REG_DWORD /v "EnableDiagnostics" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /t REG_DWORD /v "EnableBackupForWin8Apps" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /t REG_DWORD /v "AllowCloudSearch" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /t REG_DWORD /v "AllowCortana" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /t REG_DWORD /v "AllowCortanaAboveLock" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /t REG_DWORD /v "AllowSearchToUseLocation" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /t REG_DWORD /v "ConnectedSearchUseWeb" /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /t REG_DWORD /v "DisableWebSearch" /d "1" /f
	reg add "HKLM\SYSTEM\ControlSet001\Control\Diagnostics\Performance" /t REG_DWORD /v "DisableDiagnosticTracing" /d "1" /f
	reg add "HKLM\SYSTEM\ControlSet001\Control\SCMConfig" /t REG_DWORD /v "EnableSvchostMitigationPolicy" /d "1" /f
	reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "2000" /f
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /t REG_DWORD /v "NtfsEncryptPagingFile" /d "1" /f
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /t REG_DWORD /v "PlatformSupportMiracast" /d "0" /f
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /t REG_DWORD /v "fAllowFullControl" /d "0" /f
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /t REG_DWORD /v "fAllowToGetHelp" /d "0" /f
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /t REG_DWORD /v "fEnableChatControl" /d "0" /f
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d "1" /f
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /t REG_DWORD /v "RDPVGCInstalled" /d "0" /f
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /t REG_DWORD /v "RDPVGSInstalled" /d "0" /f
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d "0" /f
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t REG_DWORD /d "0" /f
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t REG_DWORD /d "0" /f
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\SQMLogger" /v "Start" /t REG_DWORD /d "0" /f
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\BcastDVRUserService" /v "Start" /t REG_DWORD /d "4" /f
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "IRPStackSize" /t REG_DWORD /d "32" /f
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v "Start" /t REG_DWORD /d "4" /f
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d "4" /f
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\xbgm" /v "Start" /t REG_DWORD /d "4" /f
	reg delete "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\SendTo" /f
	reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager\Subscriptions" /f
	reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager\SuggestedApps" /f
	reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "MicrosoftEdgeAutoLaunch_62BE886DE5E24961BABED44FEE1F0CF1" /f
	reg delete "HKLM\SOFTWARE\Classes\*\shellex\ContextMenuHandlers\ModernSharing" /f
	reg delete "HKLM\SOFTWARE\Classes\*\shellex\ContextMenuHandlers\Sharing" /f
	reg delete "HKLM\SOFTWARE\Classes\Directory\background\shellex\ContextMenuHandlers\Sharing" /f
	reg delete "HKLM\SOFTWARE\Classes\Directory\shellex\ContextMenuHandlers\Sharing" /f
	reg delete "HKLM\SOFTWARE\Classes\Directory\shellex\CopyHookHandlers\Sharing" /f
	reg delete "HKLM\SOFTWARE\Classes\Directory\shellex\PropertySheetHandlers\Sharing" /f
	reg delete "HKLM\SOFTWARE\Classes\Drive\shellex\ContextMenuHandlers\Sharing" /f
	reg delete "HKLM\SOFTWARE\Classes\Drive\shellex\PropertySheetHandlers\Sharing" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SecurityHealth" /f
)

echo Done&>nul pause

rem If creating new .txt by right clicking context menu option dissapears run these commands to fix.
rem reg delete "HKCR\.txt\ShellNew" /f
rem reg add "HKCR\.txt\ShellNew" /v "ItemName" /t REG_EXPAND_SZ /d "@%%SystemRoot%%\system32\notepad.exe,-470" /f
rem reg add "HKCR\.txt\ShellNew" /v "NullFile" /t REG_SZ /d "" /f
