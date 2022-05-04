# 1 - ACTIVATION
```
- Microsoft-Activation-Scripts > https://github.com/massgravel/Microsoft-Activation-Scripts/releases/latest
```

# 2 - DEBLOAT
```
- Sophia-Script-for-Windows    > https://github.com/farag2/Sophia-Script-for-Windows/releases/latest
- O&O ShutUp10++               > https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe
- privacy.sexy                 > https://privacy.sexy/
- Autoruns                     > https://docs.microsoft.com/en-us/sysinternals/downloads/autoruns
- 
```

# 3 - PRIVACY & SECURITY
```
Websites
- haveibeenpwned               > https://haveibeenpwned.com/
- VirusTotal                   > https://www.virustotal.com/gui/home/upload
- 

Extentions
- uBlock Origin
	FIREFOX > https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/
	CHOME   > https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm/

- Decentraleyes
	FIREFOX > https://addons.mozilla.org/en-US/firefox/addon/decentraleyes/
	CHOME   > https://chrome.google.com/webstore/detail/decentraleyes/ldpochfccmkkmhdbclfhpagapcfdljkj/

- User-Agent Switcher and Manager
	FIREFOX > https://addons.mozilla.org/en-US/firefox/addon/user-agent-string-switcher/
	CHOME   > https://chrome.google.com/webstore/detail/user-agent-switcher-and-m/bhchdcejhohfmigjafbampogmaanbfkg/

- HTTPS Everywhere
	FIREFOX > https://addons.mozilla.org/en-US/firefox/addon/https-everywhere/
	CHOME   > https://chrome.google.com/webstore/detail/https-everywhere/gcbommkclmclpchllfjekcdonpmejbdp/

- CanvasBlocker
	FIREFOX > https://addons.mozilla.org/en-US/firefox/addon/canvasblocker/
	CHOME   > https://chrome.google.com/webstore/detail/canvas-blocker-fingerprin/nomnklagbgmgghhjidfhnoelnjfndfpd/

- Tampermonkey
 	FIREFOX > https://addons.mozilla.org/en-US/firefox/addon/tampermonkey/
	CHOME   > https://chrome.google.com/webstore/detail/tampermonkey/dhdgffkkebhmkfjojejmpbldmpobfkfo/

School Extentions
- School Cheats   > https://chrome.google.com/webstore/detail/school-cheats/dcecjjjnjecoiehclollekjmfgblkkha
- Quizizz Rocks   > https://chrome.google.com/webstore/detail/quizizz-rocks/kmmibboliipddkiknfpkfnhblinocgog
- Quizlet Rocks   > https://chrome.google.com/webstore/detail/quizlet-rocks/pgbnfimhfgoibnimmfoeacjehkecgkmk
- Anti Testportal > https://chrome.google.com/webstore/detail/anti-testportal/dpgfbfopkfdfmlfdpmoanamopdnibhkl

AV's
- Malwarebytes                 > https://www.malwarebytes.com/mwb-download/thankyou
- webroot                      > https://anywhere.webrootcloudav.com/zerol/wsainstall.exe
- ESET                         > https://proxy.eset.com/li-handler/?transaction_id=odcm_download|esetgwsprod|us|oksgz9g0y9mica4ayzpw5dbixf3p53kaudw5tpwz1pff0un8lw096ozitly6heexp8wid&branch=us&prod=essp
- 

Mail Services
- tutanota                     > https://tutanota.com/
- Disroot                      > https://cloud.disroot.org/login
- ProtonMail                   > https://protonmail.com/
- mailbox.org                  > https://mailbox.org/
- CTemplar                     > https://ctemplar.com/
- StartMail                    > https://www.startmail.com/
- Cock.li                      > https://cock.li/
- RiseUp (invite only)         > https://riseup.net/

Recommended Instant Messengers
- XMPP                         > https://xmpp.org/
- Session                      > https://getsession.org/
- Briar                        > https://briarproject.org/
- Jami                         > https://jami.net/

VPN
- OpenVPN                      > https://openvpn.net/vpn-client/
- Courvix                      > https://courvix.com/vpn

Spoofing
- Windows-Spoofer              > https://github.com/Scrut1ny/Windows-Spoofer/releases/latest
- Windows-MAC-Address-Spoofer  > https://github.com/Scrut1ny/Windows-MAC-Address-Spoofer/releases/latest
- TMAC                         > https://download.technitium.com/tmac/TMACv6.0.7_Setup.zip
- VolumeID v2.1                > https://download.sysinternals.com/files/VolumeId.zip
```

# 4 - SYSTEM
```
Useful Windows Shortcuts
- System Properties Performance > SystemPropertiesPerformance.exe
- Group Policy Editor           > gpedit.msc
- Services                      > services.msc
- NIC                           > ncpa.cpl

WIN+R - SystemPropertiesPerformance.exe

Custom:
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

WIN+R - ncpa.cpl

Custom:
☐  Client for Microsoft Networks
☐  File and Printer Sharing for Microsoft Networks
☐  Npcap Packet Driver (NPCAP)
☐  QoS Packet Scheduler
☑  Internet Protocol Version 4 (TCP/IPv4)
☐  Microsoft Network Adapter Multiplexor Protocol
☐  Microsoft LLDP Protocol Driver
☑  Internet Protocol Version 6 (TCP/IPv6)
☐  Link-Layer Topology Discovery Responder
☐  Link-Layer Topology Discovery Mapper I/O Driver

WIN+R - mmsys.cpl

Playback/Recording Tabs
- Disable all unused.
☐ Show Disabled Devices
☐ Show Disconnected Devices

Sounds Tab
Sound Scheme:
- No Sounds

Communications Tab
☐ Do nothing

Installation Error Code 2502 & 2503 FIX

Open CMD as admin then paste these commands in.
===============================================
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
===============================================
```

# 5 - MISC
```
BIOS Keys by Manufacturer

ASRock                    : F2 or DEL
ASUS                      : F2 for all PCs, F2 or DEL for Motherboards
Acer                      : F2 or DEL
Dell                      : F2 or F12
ECS                       : DEL
Gigabyte / Aorus          : F2 or DEL
HP                        : F10
Lenovo (Consumer Laptops) : F2 or Fn + F2
Lenovo (Desktops)         : F1
Lenovo (ThinkPads)        : Enter then F1.
MSI                       : DEL for motherboards and PCs
Microsoft Surface Tablets : Press and hold volume up button.
Origin PC                 : F2
Samsung                   : F2
Toshiba                   : F2
Zotac                     : DEL

Free Games
- steamunlocked > https://steamunlocked.net/
- crohasit   > https://crohasit.net/
- igg-games  > https://igg-games.com/

Torrenting
- Pirate Bay > https://thepiratebay.org/index.html
	* Tor V3 > http://piratebayo3klnzokct3wt5yyxb2vpebbuyjl7m623iaxmqhsd52coid.onion/

Random
- SteamAchievementManager > https://github.com/gibbed/SteamAchievementManager/releases/latest

Game Mod Menu's

- Black Ops 2 GSC Studio > https://mega.nz/file/hDoGwAbR#j-9i3oIZyiAz13FULRTaxAiKQcSCOXo-44Lr977YfcQ

- Call of Duty: Black Ops
	* Multiplayer  > 
	============
	* Zombies      > https://cabconmodding.com/attachments/cabconmodding-com-encorev8-zombie-edition-0-9-rar.59/
	
- Call of Duty: Black Ops 2
	- Black Ops 2 GSC Studio > https://mega.nz/file/hDoGwAbR#j-9i3oIZyiAz13FULRTaxAiKQcSCOXo-44Lr977YfcQ

	* Multiplayer  > https://cabconmodding.com/attachments/cabconmodding-com-jiggy-4-3-compiled-pc-rar.1296/
	============
	* Zombies      > https://www.mediafire.com/?28un6sdd1wsdad6
	* Zombies      > https://cabconmodding.com/attachments/encore_9-7_beta_by_cabcon-rar.249/

- BO3/4 - t7-compiler > https://github.com/shiversoftdev/t7-compiler

- Call of Duty: Black Ops 3
	* Multiplayer  > 
	============
	* Zombies      > https://cabconmodding.com/attachments/zm_encorev14_release_1-rar.1103/
	* Zombies      > https://cabconmodding.com/attachments/zm_encorev12_alpha_1-rar.639/
```
