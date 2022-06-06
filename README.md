# 1 - ACTIVATION
- Microsoft-Activation-Scripts > [Link](https://github.com/massgravel/Microsoft-Activation-Scripts/releases/latest)  

# 2 - DEBLOAT
- Sophia-Script-for-Windows    > [Link](https://github.com/farag2/Sophia-Script-for-Windows/releases/latest)
- O&O ShutUp10++               > [Link](https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe)
- privacy.sexy                 > [Link](https://privacy.sexy/)
- Autoruns                     > [Link](https://docs.microsoft.com/en-us/sysinternals/downloads/autoruns)
- WindowsSpyBlocker            > [Link](https://github.com/crazy-max/WindowsSpyBlocker/)
- wpd                          > [Link](https://wpd.app/)
- Blackbird                    > [Link](https://www.getblackbird.net/)

# 3 - PRIVACY & SECURITY

### Privacy solutions
- privacytools                 > [Link](https://www.privacytools.io/)
- CHEF-KOCH                    > [Link](https://chef-koch.bearblog.dev/privacy-tools-list-by-chef-koch/)
- nomoregoogle                 > [Link](https://nomoregoogle.com/)
- ssd.eff                      > [Link](https://ssd.eff.org)
- haveibeenpwned               > [Link](https://haveibeenpwned.com)
- stallman                     > [Link](https://stallman.org/facebook.html)
- madaidans-insecurities       > [Link](https://madaidans-insecurities.github.io)
- sizeof.cat                   > [Link](https://sizeof.cat/links)
- ryf.fsf                      > [Link](https://ryf.fsf.org/products)
- privacyspy                   > [Link](https://privacyspy.org)
- techlore                     > [Link](https://techlore.tech)
- thenewoil                    > [Link](https://thenewoil.org)

### WLAN-SSID: Opt-Out

Rename your network WiFi SSID to `<SSID>_optout_nomap` to opt-out of [global maps](https://wigle.net/).

[Mozilla Location Services and How to Opt-Out.](https://location.services.mozilla.com/optout)

### Firefox about:config
| `Option` | `Setting` | `Descriptions` |
| - | - | - |
| media.peerconnection.enabled | false | WebRTC 
| media.navigator.enabled | false | Prevent websites from knowing if a microphone or a video camera is available on your device. |
| privacy.resistFingerprinting | true | More resistant to fingerprinting |
| geo.enabled | false | Disable geolocation tracking. |
| dom.battery.enabled | false | It prevents websites from knowing whether you are using your laptop on battery or AC power. |
| webgl.disabled | true | prevent your device to be fingerprinted and any potential security risks from using WebGL. |
| dom.event.clipboardevents.enabled | false | With this option disabled, websites won't know if you copy/paste something from their web page and which part of the page had been selected. |
| network.ttr.mode | 2 | DNS-over-HTTPS (DoH) |
| browser.cache.offline.enable | false | If TRUE, it allows websites to store data on your computer for when you would be offline. |
```
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "DisableDefaultBrowserAgent" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "DisableTelemetry" /t REG_DWORD /d "1" /f
```

### Websites
- haveibeenpwned               > [Link](https://haveibeenpwned.com/)
- VirusTotal                   > [Link](https://www.virustotal.com/gui/home/upload)

### FF Extentions
|`Name`|`Link`|`Desc.`|
|-|-|-|
|>> Important|||
|uBlock Origin|[Link](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)|Finally, an efficient wide-spectrum content blocker. Easy on CPU and memory.|
|Decentraleyes|[Link](https://addons.mozilla.org/en-US/firefox/addon/decentraleyes/)|Protects you against tracking through "free", centralized, content delivery. It prevents a lot of requests from reaching networks like Google Hosted Libraries, and serves local files to keep sites from breaking. Complements regular content blockers.|
|User-Agent Switcher and Manager|[Link](https://addons.mozilla.org/en-US/firefox/addon/user-agent-string-switcher/)|Spoof websites trying to gather information about your web navigation—like your browser type and operating system—to deliver distinct content you may not want.|
|CanvasBlocker|[Link](https://addons.mozilla.org/en-US/firefox/addon/canvasblocker/)|Alters some JS APIs to prevent fingerprinting.|
|>> Useful|||
|Tampermonkey|[Link](https://addons.mozilla.org/en-US/firefox/addon/tampermonkey/)|Tampermonkey is the world's most popular userscript manager.|
|Spoof Geolocation|[Link](https://addons.mozilla.org/en-US/firefox/addon/spoof-geolocation/)|This extension alters browser Geolocation latitude and longitude to user-defined values|
|Spoof Timezone|[Link](https://addons.mozilla.org/en-US/firefox/addon/spoof-timezone/)|This extension alters browser timezone to a random or user-defined value.|
|Flagfox|[Link](https://addons.mozilla.org/en-US/firefox/addon/flagfox/)|Displays a country flag depicting the location of the current website's server and provides a multitude of tools such as site safety checks, whois, translation, similar sites, validation, URL shortening, and more...|
|ClearURLs|[Link](https://addons.mozilla.org/en-US/firefox/addon/clearurls/)|Removes tracking elements from URLs|
|Cookie AutoDelete|[Link](https://addons.mozilla.org/en-US/firefox/addon/cookie-autodelete/)|Control your cookies! This WebExtension is inspired by Self Destructing Cookies. When a tab closes, any cookies not being used are automatically deleted. Keep the ones you trust (forever/until restart) while deleting the rest. Containers Supported|
|SponsorBlock|[Link](https://addons.mozilla.org/en-US/firefox/addon/sponsorblock/)|Easily skip YouTube video sponsors. When you visit a YouTube video, the extension will check the database for reported sponsors and automatically skip known sponsors. You can also report sponsors in videos.|
|KeePassXC-Browser|[Link](https://addons.mozilla.org/en-US/firefox/addon/keepassxc-browser/)|Official browser plugin for the KeePassXC password manager|

### School Extentions
- School Cheats                > [Link](https://chrome.google.com/webstore/detail/school-cheats/dcecjjjnjecoiehclollekjmfgblkkha)
- Quizizz Rocks                > [Link](https://chrome.google.com/webstore/detail/quizizz-rocks/kmmibboliipddkiknfpkfnhblinocgog)
- Quizlet Rocks                > [Link](https://chrome.google.com/webstore/detail/quizlet-rocks/pgbnfimhfgoibnimmfoeacjehkecgkmk)
- Anti Testportal              > [Link](https://chrome.google.com/webstore/detail/anti-testportal/dpgfbfopkfdfmlfdpmoanamopdnibhkl)

### AV's
- ClamAV                       > [Link](https://www.clamav.net/)
- Malwarebytes                 > [Link](https://www.malwarebytes.com/mwb-download/thankyou)
- webroot                      > [Link](https://anywhere.webrootcloudav.com/zerol/wsainstall.exe)
- ESET                         > [Link](https://proxy.eset.com/li-handler/?transaction_id=odcm_download|esetgwsprod|us|oksgz9g0y9mica4ayzpw5dbixf3p53kaudw5tpwz1pff0un8lw096ozitly6heexp8wid&branch=us&prod=essp)

### Mail Services
- tutanota                     > [Link](https://tutanota.com/)
- Disroot (invite only)        > [Link](https://cloud.disroot.org/login)
- ProtonMail                   > [Link](https://protonmail.com/)
- mailbox.org                  > [Link](https://mailbox.org/)
- CTemplar                     > [Link](https://ctemplar.com/)
- StartMail                    > [Link](https://www.startmail.com/)
- Cock.li (invite only)        > [Link](https://cock.li/)
- RiseUp (invite only)         > [Link](https://riseup.net/)

### Recommended Instant Messengers
- XMPP                         > [Link](https://xmpp.org/)
- Session                      > [Link](https://getsession.org/)
- Status                       > [Link](https://status.im/)
- Briar                        > [Link](https://briarproject.org/)
- Jami                         > [Link](https://jami.net/)
- signal                       > [Link](https://signal.org/)

### Privacy oriented DNS
- NextDNS                      > [Link](https://nextdns.io)
- Quad9                        > [Link](https://www.quad9.net)
- AdGuard                      > [Link](https://adguard.com/en/adguard-dns/overview.html)
- 1.1.1.1                      > [Link](https://1.1.1.1/)
- blackbird                    > [Link](https://www.getblackbird.net/)
- blokada                      > [Link](https://blokada.org/)
- rethinkdns                   > [Link](https://rethinkdns.com/)
- orencloud                    > [Link](https://www.orencloud.com/orencloud-dns/)
- ahadns                       > [Link](https://ahadns.com/#dns-servers)
- yogadns                      > [Link](https://yogadns.com/)
- uncensoreddns                > [Link](https://blog.uncensoreddns.org/)
- constellix                   > [Link](https://constellix.com/)
- blahdns                      > [Link](https://blahdns.com/)

### Recommended search engines
- Brave Search                 > [Link](https://search.brave.com/)
- DuckDuckGo                   > [Link](https://duckduckgo.com/)
- SearX                        > [Link](https://searx.space/#)
- Startpage                    > [Link](https://www.startpage.com/)

### VPN
- Mullvad                      > [Link](https://mullvad.net/) - [Download](https://mullvad.net/download/app/exe/latest/) | [Onion Link](http://o54hon2e2vj6c7m3aqqu6uyece65by3vgoxxhlqlsvkmacw6a7m7kiad.onion/) - [Download](http://o54hon2e2vj6c7m3aqqu6uyece65by3vgoxxhlqlsvkmacw6a7m7kiad.onion/download/app/exe/latest/)
- IVPN                         > [Link](https://www.ivpn.net/)
- OpenVPN                      > [Link](https://openvpn.net/vpn-client/) - [Download](https://openvpn.net/downloads/openvpn-connect-v3-windows.msi)
- Courvix                      > [Link](https://courvix.com/vpn) - [Download](https://cdn.courvix.com/vpn/CourvixVPN.exe)

### Leaks & Tests
- dnsleaktest                  > [Link](https://www.dnsleaktest.com/)
- ipleak                       > [Link](https://ipleak.net/)
- browserleaks                 > [Link](https://browserleaks.com)
- coveryourtracks.eff          > [Link](https://coveryourtracks.eff.org/)
- privacytests                 > [Link](https://privacytests.org)
- deviceinfo                   > [Link](https://www.deviceinfo.me/)
- adblock                      > [Link](https://d3ward.github.io/toolz/adblock.html)
- canyoublockit                > [Link](https://canyoublockit.com/)

### Spoofing
- Windows-Spoofer              > [Link](https://github.com/Scrut1ny/Windows-Spoofer/releases/latest)
- Windows-MAC-Address-Spoofer  > [Link](https://github.com/Scrut1ny/Windows-MAC-Address-Spoofer/releases/latest)
- TMAC                         > [Link](https://download.technitium.com/tmac/TMACv6.0.7_Setup.zip)
- VolumeID v2.1                > [Link](https://download.sysinternals.com/files/VolumeId.zip)

### EXIF Tool
- exiftool                     > [Link](https://exiftool.org/)
- exifcleaner                  > [Link](https://github.com/szTheory/exifcleaner/releases/latest)
- Exif Pilot                   > [Link](https://www.colorpilot.com/exif.html)

### 4 - SYSTEM

Useful Windows Shortcuts
- System Properties Performance > SystemPropertiesPerformance.exe
- Group Policy Editor           > gpedit.msc
- Services                      > services.msc
- NIC                           > ncpa.cpl
- UAC                           > UserAccountControlSettings.exe

```
WIN + R - UserAccountControlSettings.exe

 --|--
   |
 -===-  <---- Select this option!
   |
 --|--
   |
 --|--
```
```
WIN + R - SystemPropertiesPerformance.exe

☐  Animate controls and elements inside windows
☐  Animate widnows when minimzing and maximizing
☐  Animations in the taskbar
☐  Enable Peek
☐  Fade or slide menus into view
☐  Fade or slide ToolTips into view
☐  Fade out menu items after clicking
☐  Save taskbar thumbnail previews
☐  Show shadows under mouse pointer
☐  Show shadows under windows
☐  Show thumbnails instead of icons
☑  Show translucent selection rectangle
☑  Show window contents while dragging
☐  Slide open combo boxes
☑  Smooth edges of screen fonts
☐  Smooth-scroll list boxes
☐  Use drop shadows for icons labels on the desktop
```
```
WIN + R - ncpa.cpl - Select NIC, then select Properties.

☐  Client for Microsoft Networks
☐  File and Printer Sharing for Microsoft Networks
☑  Npcap Packet Driver (NPCAP)  <-- Wireshark
☐  QoS Packet Scheduler
☑  Internet Protocol Version 4 (TCP/IPv4)
☐  Microsoft Network Adapter Multiplexor Protocol
☐  Microsoft LLDP Protocol Driver
☑  Internet Protocol Version 6 (TCP/IPv6)
☐  Link-Layer Topology Discovery Responder
☐  Link-Layer Topology Discovery Mapper I/O Driver
```
```
WIN + R - mmsys.cpl

Playback | WIN + R - control mmsys.cpl,,0
☐ Show Disabled Devices
☐ Show Disconnected Devices

Recording Tabs | WIN + R - control mmsys.cpl,,1
☐ Show Disabled Devices
☐ Show Disconnected Devices

Sounds Tab | WIN + R - control mmsys.cpl,,2
Sound Scheme:
- No Sounds

Communications Tab | WIN + R - control mmsys.cpl,,3
☐ Do nothing
```
### Enable *Ultimate Performance* Mode
```batch
powercfg.cpl
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
powercfg /L | find "Ultimate"
powercfg /S *Ultimate Performance GUID*
```
### Disable unwanted tasks
```batch
schtasks /Change /TN "Microsoft\Windows\ApplicationData\DsSvcCleanup" /disable
schtasks /Change /TN "Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner" /disable
schtasks /Change /TN "Microsoft\Windows\Diagnosis\Scheduled" /disable
schtasks /Change /TN "Microsoft\Windows\NetTrace\GatherNetworkInfo" /disable
schtasks /Change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable
schtasks /Change /TN "Microsoft\Windows\PushToInstall\LoginCheck" /disable
schtasks /Change /TN "Microsoft\Windows\PushToInstall\Registration" /disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyMonitor" /disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyMonitorToastTask" /disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyRefreshTask" /disable
schtasks /Change /TN "Microsoft\Windows\Subscription\EnableLicenseAcquisition" /disable
schtasks /Change /TN "Microsoft\Windows\Subscription\LicenseAcquisition" /disable
schtasks /Change /TN "Microsoft\Windows\AppID\SmartScreenSpecific" /disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\AitAgent" /disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /disable
schtasks /Change /TN "Microsoft\Windows\ApplicationData\DsSvcCleanup" /disable
schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /disable
schtasks /Change /TN "Microsoft\Windows\Clip\License Validation" /disable
schtasks /Change /TN "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable
schtasks /Change /TN "Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner" /disable
schtasks /Change /TN "Microsoft\Windows\Diagnosis\Scheduled" /disable
schtasks /Change /TN "Microsoft\Windows\DiskCleanup\SilentCleanup" /disable
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /disable
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /disable
schtasks /Change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /disable
schtasks /Change /TN "Microsoft\Windows\HelloFace\FODCleanupTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Input\LocalUserSyncDataAvailable" /disable
schtasks /Change /TN "Microsoft\Windows\Input\MouseSyncDataAvailable" /disable
schtasks /Change /TN "Microsoft\Windows\Input\PenSyncDataAvailable" /disable
schtasks /Change /TN "Microsoft\Windows\Input\TouchpadUserSyncDataAvailable" /disable
schtasks /Change /TN "Microsoft\Windows\International\Synchronize Language Settings" /disable
schtasks /Change /TN "Microsoft\Windows\License Manager\TempSignedLicenseExchange" /disable
schtasks /Change /TN "Microsoft\Windows\Location\Notifications" /disable
schtasks /Change /TN "Microsoft\Windows\Location\WindowsActionDialog" /disable
schtasks /Change /TN "Microsoft\Windows\Maintenance\WinSAT" /disable
schtasks /Change /TN "Microsoft\Windows\Mobile Broadband Accounts\MNO Metadata Parser" /disable
schtasks /Change /TN "Microsoft\Windows\NetTrace\GatherNetworkInfo" /disable
schtasks /Change /TN "Microsoft\Windows\Offline Files\Background Synchronization" /disable
schtasks /Change /TN "Microsoft\Windows\Offline Files\Logon Synchronization" /disable
schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /disable
schtasks /Change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable
schtasks /Change /TN "Microsoft\Windows\Ras\MobilityManager" /disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyMonitor" /disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyRefresh" /disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyUpload" /disable
schtasks /Change /TN "Microsoft\Windows\SpacePort\SpaceAgentTask" /disable
schtasks /Change /TN "Microsoft\Windows\SpacePort\SpaceManagerTask" /disable
schtasks /Change /TN "Microsoft\Windows\Speech\SpeechModelDownloadTask" /disable
schtasks /Change /TN "Microsoft\Windows\Subscription\EnableLicenseAcquisition" /disable
schtasks /Change /TN "Microsoft\Windows\Subscription\LicenseAcquisition" /disable
schtasks /Change /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting" /disable
schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Automatic App Update" /disable
schtasks /Change /TN "Microsoft\Windows\Workplace Join\Automatic-Device-Join" /disable
schtasks /Change /TN "Microsoft\Windows\Workplace Join\Device-Sync" /disable
schtasks /Change /TN "Microsoft\Windows\Workplace Join\Recovery-Check" /disable
schtasks /change /TN "Microsoft\Office\Office 15 Subscription Heartbeat" /disable
schtasks /change /TN "Microsoft\Office\Office 16 Subscription Heartbeat" /disable
del /F /Q "C:\Windows\System32\Tasks\Microsoft\Windows\SettingSync\*"
```
### Registry *Fixes*
```batch
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /t REG_DWORD /v "RDPVGCInstalled" /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /t REG_DWORD /v "RDPVGSInstalled" /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /t REG_DWORD /v "NtfsEncryptPagingFile" /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /t REG_DWORD /v "PlatformSupportMiracast" /d "0" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /t REG_DWORD /v "fAllowFullControl" /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /t REG_DWORD /v "fAllowToGetHelp" /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /t REG_DWORD /v "fEnableChatControl" /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Assistance\Client\"1"."0"\Settings" /t REG_DWORD /v "GlobalOnlineAssist" /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\COM3" /t REG_DWORD /v RemoteAccessEnabled /d "0" /f

reg add "HKLM\SOFTWARE\Microsoft\Input" /t REG_DWORD /v "InputServiceEnabledForCCI" /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input" /t REG_DWORD /v "InputServiceEnabled" /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Clipboard" /t REG_DWORD /v "IsClipboardSignalProducingFeatureAvailable" /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Clipboard" /t REG_DWORD /v "IsCloudAndHistoryFeatureAvailable" /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Internet Explorer" /t REG_DWORD /v "IntegratedBrowser" /d "0" /f

reg add "HKLM\SOFTWARE\Microsoft\Wisp\MultiTouch" /t REG_DWORD /v "MultiTouchEnabled" /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\AboveLock" /t REG_DWORD /v "AllowCortanaAboveLock" /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\DataProtection" /t REG_DWORD /v "AllowDirectMemoryAccess" /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Experience" /t REG_DWORD /v "AllowCortana" /d "0" /f

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing" /t REG_DWORD /v "EnableLog" /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ConnectedSearch" /t REG_DWORD /v "ConnectedSearchUseWeb" /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Spectrum" /t REG_DWORD /v "SharedExperiencesEnabled" /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\PrecisionTouchPad" /t REG_DWORD /v "AAPDisabled" /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /t REG_DWORD /v "EnableWebContentEvaluation" /d "0" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Diagnostics\Performance" /t REG_DWORD /v "DisableDiagnosticTracing" /d "1" /f

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\MobilityCenter" /t REG_DWORD /v "NoMobilityCenter" /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\CredSSP\Parameters" /t REG_DWORD /v "AllowEncryptionOracle" /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\PrecisionTouchPad" /t REG_DWORD /v "AAPDisabled" /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /t REG_DWORD /v "TailoredExperiencesWithDiagnosticDataEnabled" /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Syncmgr" /t REG_DWORD /v "Installed" /d "0" /f

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /t REG_DWORD /v "AllowOnlineTips" /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /t REG_DWORD /v "NoWebServices" /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /t REG_DWORD /v "DisableAppInstallsOnFirstLogon" /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /t REG_DWORD /v "MachineOobeUpdates" /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /t REG_DWORD /v "ActiveSetupDisabled" /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v "Start_TrackDocs" /d "0" /f

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\FlightedFeatures" /t REG_DWORD /v "ComponentUIForWinRTPicker" /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics" /t REG_DWORD /v "EnabledExecution /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\ScheduledDiagnostics" /t REG_DWORD /v "EnabledExecution" /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy" /t REG_DWORD /v "EnableQueryRemoteServer" /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\ScriptedDiagnostics" /t REG_DWORD /v "EnableDiagnostics" /d "0" /f

reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\BrokerUp" /t REG_DWORD /v "WWAJSE" /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Clipboard" /t REG_DWORD /v "IsClipboardSignalProducingFeatureAvailable" /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Clipboard" /t REG_DWORD /v "IsCloudAndHistoryFeatureAvailable" /d "0" /f

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps" /t REG_DWORD /v "AutoDownloadAndUpdateMapData" /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Messaging" /t REG_DWORD /v "AllowMessageSync" /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /t REG_DWORD /v "AllowGameDVR" /d "0" /f

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /t REG_DWORD /v "DisableCloudOptimizedContent" /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /t REG_DWORD /v "DisableSoftLanding" /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /t REG_DWORD /v "DisableWindowsConsumerFeatures" /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Connect" /t REG_DWORD /v "AllowProjectionToPC" /d "0" /f

reg add "HKLM\SOFTWARE\Microsoft\DataCollection\Default\WifiAutoConnectConfig" /t REG_DWORD /v "AutoConnectEnabled" /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /t REG_DWORD /v "AllowCommercialDataPipeline" /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /t REG_DWORD /v "AllowDesktopAnalyticsProcessing" /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /t REG_DWORD /v "AllowTelemetry" /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\FileHistory" /t REG_DWORD /v "Disabled" /d "1" /f

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /t REG_DWORD /v "DisableLocation" /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /t REG_DWORD /v "DisableLocationScripting" /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /t REG_DWORD /v "DisableSensors" /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /t REG_DWORD /v "DisableWindowsLocationProvider" /d "1" /f

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
reg add "HKLM\SYSTEM\ControlSet001\Control\SCMConfig" /t REG_DWORD /v "EnableSvchostMitigationPolicy" /d "1" /f
reg add "HKLM\SOFTWARE\AMD\CN" /t REG_DWORD /v "CollectGIData" /d "0" /f

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /t REG_DWORD /v "EnableBackupForWin8Apps" /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /t REG_DWORD /v "ConnectedSearchUseWeb" /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /t REG_DWORD /v "DisableWebSearch" /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /t REG_DWORD /v "AllowCortana" /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /t REG_DWORD /v "AllowCortanaAboveLock" /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /t REG_DWORD /v "AllowSearchToUseLocation" /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /t REG_DWORD /v "AllowCloudSearch" /d "0" /f

reg add "HKCU\SOFTWARE\Microsoft\Command Processor" /v "AutoRun" /t REG_SZ /d "prompt $E[38;5;220m$S$S_$_$E[38;5;208m$G$E[38;5;220m$C$E[0m.$E[38;5;220m$F__$_$S$C___/$S$E[0m$P$G" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "UseOLEDTaskbarTransparency" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSecondsInSystemClock" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "SystemUsesLightTheme" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "2000" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "IRPStackSize" /t REG_DWORD /d "32" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f
reg add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "2000" /f
reg add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "2000" /f
reg add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AltTab" /v "LivePreview_ms" /t REG_DWORD /d "00000064" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ExtendedUIHoverTime" /t REG_DWORD /d "00000064" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ThumbnailLivePreviewHoverTime" /t REG_DWORD /d "00000064" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DesktopLivePreviewHoverTime" /t REG_DWORD /d "00000064" /f

reg add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-Windows Defender/Operational" /v "Enabled" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-Windows Defender/WHC" /v "Enabled" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "DisableGenericRePorts" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\AppHVSI" /v "AuditApplicationGuard" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRawWriteNotification" /t REG_DWORD /d "1" /f

rem Prefetch & Superfetch Termination
sc stop “SysMain” & sc config “SysMain” start=disabled
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
del /F /Q "C:\Windows\Prefetch\*"
```
### Random *fixes* 
```batch
sc stop DiagTrack
sc stop dmwappushservice
sc config DiagTrack start=disabled
sc config dmwappushservice start=disabled
sc stop “SysMain” & sc config “SysMain” start=disabled
```

# 5 - MISC

### BIOS Keys by Manufacturer
|Manufacturer|Key/Sequence|
|-|-|
|ASRock|`F2` or `DEL`|
|ASUS|`F2` for all PCs, `F2` or `DEL` for Motherboards|
|Acer|`F2` or `DEL`|
|Dell|`F2` or `F12`|
|ECS |`DEL`|
|Gigabyte / Aorus|`F2` or `DEL`|
|HP|`F10`|
|Lenovo (Consumer Laptops)|`F2` or `Fn` + `F2`|
|Lenovo (Desktops)|`F1`|
|Lenovo (ThinkPads)|Enter then `F1`.|
|MSI|`DEL` for motherboards and PCs|
|Microsoft Surface Tablets|Press and hold `volume up` button.|
|Origin PC|`F2`|
|Samsung|`F2`|
|Toshiba|`F2`|
|Zotac|`DEL`|

### Installation Error Code 2502 & 2503 FIX
Open CMD as admin then paste these commands in:
```batch
takeown /f “%systemroot%\Temp” /R /A /D Y
icacls “%systemroot%\Temp” /inheritance:r /grant:r Users:(OI)(CI)F /T
icacls “%systemroot%\Temp” /inheritance:r /grant:r Everyone:(OI)(CI)F /T
icacls “%systemroot%\Temp” /grant Administrators:F /T
icacls “%systemroot%\Temp” /grant Users:F /T
icacls “%systemroot%\Temp” /grant SYSTEM:F /T
icacls “%systemroot%\Temp” /grant Everyone:F /T
takeown /f “%temp%” /R /A /D Y
icacls “%temp%” /inheritance:r /grant:r Users:(OI)(CI)F /T
icacls “%temp%” /inheritance:r /grant:r Everyone:(OI)(CI)F /T
icacls “%temp%” /grant Administrators:F /T
icacls “%temp%” /grant Users:F /T
icacls “%temp%” /grant SYSTEM:F /T
icacls “%temp%” /grant Everyone:F /T
```

Free Games
- steamunlocked                 > [Link](https://steamunlocked.net/)
- crohasit                      > [Link](https://crohasit.net/)
- igg-games                     > [Link](https://igg-games.com/)

Torrenting
- Pirate Bay                    > [Link](https://thepiratebay.org/index.html)
    * Tor V3                    > [Link](http://piratebayo3klnzokct3wt5yyxb2vpebbuyjl7m623iaxmqhsd52coid.onion/)

Random
- SteamAchievementManager       > [Link](https://github.com/gibbed/SteamAchievementManager/releases/latest)

Game Mod Menu's

- Black Ops 2 GSC Studio        > [Link](https://mega.nz/file/hDoGwAbR#j-9i3oIZyiAz13FULRTaxAiKQcSCOXo-44Lr977YfcQ)

- Call of Duty: Black Ops
	* Multiplayer  > 
	* Zombies               > [Link](https://cabconmodding.com/attachments/cabconmodding-com-encorev8-zombie-edition-0-9-rar.59/)
	
- Call of Duty: Black Ops 2
	- plutonium    > [Link](https://plutonium.pw/)
	- Black Ops 2 GSC Studio > [Link](https://mega.nz/file/hDoGwAbR#j-9i3oIZyiAz13FULRTaxAiKQcSCOXo-44Lr977YfcQ)
	* Multiplayer  > [Link](https://cabconmodding.com/attachments/cabconmodding-com-jiggy-4-3-compiled-pc-rar.1296/)
	* Zombies      > [Link](https://www.mediafire.com/?28un6sdd1wsdad6)
	* Zombies      > [Link](https://cabconmodding.com/attachments/encore_9-7_beta_by_cabcon-rar.249/)

- BO3/4 - t7-compiler > [Link](https://github.com/shiversoftdev/t7-compiler)

- Call of Duty: Black Ops 3
	* Multiplayer  > 
	* Zombies      > [Link](https://cabconmodding.com/attachments/zm_encorev14_release_1-rar.1103/)
	* Zombies      > [Link](https://cabconmodding.com/attachments/zm_encorev12_alpha_1-rar.639/)
- cod4x                > [Link](https://cod4x.ovh/)

# 6 - Tor V3 Onion Links
| Name | Link |
| - | - |
| Dread | [Link](http://dreadytofatroptsdj6io7l3xptbet6onoyno2yv7jicoxknyazubrad.onion/) |
| Raddle | [Link](http://c32zjeghcp5tj3kb72pltz56piei66drc63vkhn5yixiyk4cmerrjtid.onion/) |
| Pornhub | [Link](http://pornhubvybmsymdol4iibwgwtkpwmeyd6luq2gxajgjzfjvotyt5zhyd.onion/) |
| elfqrin | [Link](http://elfqv3zjfegus3bgg5d7pv62eqght4h6sl6yjjhe7kjpi2s56bzgk2yd.onion/fakeid.php) |
|  | [Link]() |
|  | [Link]() |
|  | [Link]() |
|  | [Link]() |
|  | [Link]() |
|  | [Link]() |
|  | [Link]() |
