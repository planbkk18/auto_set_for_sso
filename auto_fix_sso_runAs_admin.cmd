@Echo Off


cd %systemroot%\system32
call :IsAdmin

REM ; ปิด browser
taskkill.exe /F /IM iexplore.exe /T
taskkill.exe /F /IM msedge.exe /T
taskkill.exe /F /IM jinetslssign.exe /T


REM ; ตั้ง Advance
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "CertificateRevocation" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "WarnonBadCertRecving" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "SecureProtocols" /t REG_DWORD /d "10912" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_LOCALMACHINE_LOCKDOWN" /v "iexplore.exe" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_LOCALMACHINE_LOCKDOWN" /v "ietabhelper.exe" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_LOCALMACHINE_LOCKDOWN\Settings" /v "LOCALMACHINE_CD_UNLOCK" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Internet Explorer\Download" /v "CheckExeSignatures" /t REG_SZ /d "yes" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Internet Explorer\Download" /v "RunInvalidSignatures" /t REG_DWORD /d "1" /f
REM ; เอาติ๊กถูกออกจากในคอมแพท
Reg.exe add "HKCU\Software\Microsoft\Internet Explorer\BrowserEmulation" /v "IntranetCompatibilityMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Internet Explorer\BrowserEmulation" /v "MSCompatibilityMode" /t REG_DWORD /d "0" /f

REM ;-----------------------------------------------------------------------------
REM ; ปิด popup blocker ใน tab pivacy
Reg.exe add "HKCU\SOFTWARE\Microsoft\Internet Explorer\New Windows" /v "PopupMgr" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Internet Explorer\New Windows\Allow" /v "*.rd.go.th" /t REG_BINARY /d "0000" /f
REM ;-----------------------------------------------------------------------------
REM ;การตั้งค่าใน trusted sites
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2001" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2004" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /ve /t REG_SZ /d "" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "DisplayName" /t REG_SZ /d "Trusted sites" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "PMDisplayName" /t REG_SZ /d "Trusted sites [Protected Mode]" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "Description" /t REG_SZ /d "This zone contains websites that you trust not to damage your computer or data." /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "Icon" /t REG_SZ /d "inetcpl.cpl#00004480" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "LowIcon" /t REG_SZ /d "inetcpl.cpl#005424" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "CurrentLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1200" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1400" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2007" /t REG_DWORD /d "65536" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1001" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1004" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1201" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1206" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1207" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1208" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1209" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "120A" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "120B" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1402" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1405" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1406" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1407" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1408" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1409" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1601" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1604" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1605" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1606" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1607" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1608" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1609" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "160A" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1802" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1803" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1804" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1809" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1A00" /t REG_DWORD /d "131072" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1A02" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1A03" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1A04" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1A05" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1A06" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1C00" /t REG_DWORD /d "65536" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2000" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2005" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2100" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2101" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2102" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2103" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2104" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2105" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2106" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2200" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2201" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2300" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2301" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2400" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2401" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2402" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2600" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2700" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2107" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2708" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2709" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1812" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "140A" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2302" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "270B" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "160B" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2701" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2702" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2703" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2704" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2108" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2500" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1806" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1800" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1805" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1807" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1808" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1A10" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "180A" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "180C" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "180D" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1810" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2707" /t REG_DWORD /d "3" /f

REM ; other Zone
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1" /v "CurrentLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1" /v "1406" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1" /v "1001" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1" /v "1004" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1" /v "1201" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1" /v "120A" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1" /v "1609" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1" /v "2702" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1" /v "270C" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1" /v "120B" /t REG_DWORD /d "3" /f

Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3" /v "CurrentLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3" /v "1004" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3" /v "1201" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3" /v "1208" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3" /v "1209" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3" /v "120A" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3" /v "1406" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3" /v "1609" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3" /v "2201" /t REG_DWORD /d "0" /f


REM ;-----------------------------------------------------------------------------
REM ;ใส่ complatibility list เป็น rd.go.th และ สารบัญอิเล็กทรอนิกส์ และ SSO WFH และ ภพ72.1
Reg.exe add "HKCU\SOFTWARE\Microsoft\Internet Explorer\BrowserEmulation" /v "LocalMachineCompatibilityMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Internet Explorer\BrowserEmulation\ClearableListData" /v "UserFilter" /t REG_BINARY /d "411f00005308adba04000000a600000001000000040000000c00000057314d4048d4d201010000000b00310030002e00320030002e00310032002e00310037000c000000be46c2594811d601010000000b00310030002e00320030002e00320039002e00310032000c00000084daa27890dbd701010000000b00310030002e00320030002e00310032002e00340031000c000000dea25b5514ddd701010000000800720064002e0067006f002e0074006800" /f
REM ;-----------------------------------------------------------------------------
REM ; ทำหน้าโฮมเป็น rdsrv.rd.go.th
Reg.exe add "HKLM\SOFTWARE\Microsoft\Internet Explorer\MAIN" /v "Default_Page_URL" /t REG_SZ /d "https://rdsrv.rd.go.th" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Internet Explorer\MAIN" /v "Start Page" /t REG_SZ /d "https://rdsrv.rd.go.th" /f
Reg.exe add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t REG_SZ /d "https://rdsrv.rd.go.th" /f
REM ;-----------------------------------------------------------------------------
REM ;ใส่ Trusted site (รุ่นใหม่)
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\*.itpc.sys" /v "http" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\*.itpp.sys" /v "http" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\*.itpx.sys" /v "http" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\app.c.itpc.sys" /v "http" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\app.c.itpx.sys" /v "http" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\bpm.c.itpx.sys" /v "http" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\rpt.c.itpx.sys" /v "http" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\app.c.itpp.sys" /v "http" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\rpt-c-itpx-sys" /v "https" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\app-c-itpp-sys" /v "https" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\app-c-itpx-sys" /v "https" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\app-c-itpc-sys" /v "https" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\bpm-c-itpx-sys" /v "https" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\onlinedoc" /v "http" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\ddc" /v "https" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\pkims" /v "https" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\securityportal" /v "https" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\edssa.sys" /v "http" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\edssa" /v "https" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\dmspos" /v "http" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\aps.nidpos.nid" /v "http" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\wbs.nidpos.nid" /v "http" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\wbs-nidpos-nid" /v "https" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\whtsys" /v "http" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\rd.go.th\wht00722" /v "https" /t REG_DWORD /d "2" /f

REM ; ตั้ง Cache ให้เป็น 1024
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\5.0\Cache" /v "ContentLimit" /t REG_DWORD /d "1024" /f

REM ;เพิ่ม Environment
Reg.exe add "HKCU\Environment" /v "AMI_HOST" /t REG_SZ /d "10.20.19.131" /f
Reg.exe add "HKCU\Environment" /v "AMI_SERVICE" /t REG_SZ /d "20000" /f


REM ; ie11 ปิด welcome ตอนเริ่ม กับ show เมนูตลอดเวลา
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /v "AlwaysShowMenus" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /v "DisableFirstRunCustomize" /t REG_DWORD /d "1" /f

REM ;-----------------------------------------------------------------------------
REM ; ปิด peep desktop
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DisablePreviewDesktop" /t REG_DWORD /d "1" /f
REM ;-----------------------------------------------------------------------------
REM ; ตั้งตัวหนอน เป็นเปลี่ยนภาษา
Reg.exe add "HKCU\Keyboard Layout\Toggle" /v "Language Hotkey" /t REG_SZ /d "4" /f
Reg.exe add "HKCU\Keyboard Layout\Toggle" /v "Hotkey" /t REG_SZ /d "4" /f
Reg.exe add "HKCU\Keyboard Layout\Toggle" /v "Layout Hotkey" /t REG_SZ /d "2" /f
REM ;-----------------------------------------------------------------------------
REM ; แสดงนามสกุลของไฟล์
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d "0" /f
REM ;-----------------------------------------------------------------------------
REM ; ป้องกันฟ้อง ActiveX หมดอายุ
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Ext\Domain" /v "rd.go.th" /t REG_SZ /d "" /f
REM ;-----------------------------------------------------------------------------
REM ; ไม่ให้ Java run update
REM ; ลบ ตัว update ไม่ให้ run (ไม่ได้ผล)
Reg.exe delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run" /v "SunJavaUpdateSched" /f
REM ;-----------------------------------------------------------------------------
REM ; ลบตัว notify ไม่ให้แสดง (ไม่ได้ผล)
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\JavaSoft\Java Update\Policy\jucheck" /v "NotifyDownload" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\JavaSoft\Java Update\Policy\jucheck" /v "NotifyInstall" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\JavaSoft\Java Update\Policy\jucheck" /v "EnableJavaUpdate" /t REG_DWORD /d "0" /f
REM ;-----------------------------------------------------------------------------
REM ; ไม่ให้โชว์ java security warning เลย (ไม่ได้ผล)
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\JavaSoft\Java Update\Policy" /v "EnableJavaUpdate" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\JavaSoft\Java Update\Policy" /v "EnableAutoUpdateCheck" /t REG_DWORD /d "0" /f
REM ;-----------------------------------------------------------------------------
REM ; ตั้ง page setup ของ internet explorer ให้กว้างขึ้น และไม่มี header footer
Reg.exe add "HKCU\Software\Microsoft\Internet Explorer\PageSetup" /v "header" /t REG_SZ /d "" /f
Reg.exe add "HKCU\Software\Microsoft\Internet Explorer\PageSetup" /v "footer" /t REG_SZ /d "" /f
Reg.exe add "HKCU\Software\Microsoft\Internet Explorer\PageSetup" /v "margin_bottom" /t REG_SZ /d "0.229920" /f
Reg.exe add "HKCU\Software\Microsoft\Internet Explorer\PageSetup" /v "margin_left" /t REG_SZ /d "0.350000" /f
Reg.exe add "HKCU\Software\Microsoft\Internet Explorer\PageSetup" /v "margin_right" /t REG_SZ /d "0.236220" /f
Reg.exe add "HKCU\Software\Microsoft\Internet Explorer\PageSetup" /v "margin_top" /t REG_SZ /d "0.229920" /f
Reg.exe add "HKCU\Software\Microsoft\Internet Explorer\PageSetup" /v "Print_Background" /t REG_SZ /d "no" /f
Reg.exe add "HKCU\Software\Microsoft\Internet Explorer\PageSetup" /v "Shrink_To_Fit" /t REG_SZ /d "yes" /f
Reg.exe add "HKCU\Software\Microsoft\Internet Explorer\PageSetup" /v "font" /t REG_SZ /d "font-family: Tahoma; font-size: 7pt; color: rgb(0,0,0);" /f
REM ;-----------------------------------------------------------------------------
REM ; เปลี่ยน Search engine เป็น google
Reg.exe add "HKCU\Software\Microsoft\Internet Explorer\SearchScopes\{0633EE93-D776-472f-A0FF-E1416B8B2E3A}" /v "DisplayName" /t REG_SZ /d "Google" /f
Reg.exe add "HKCU\Software\Microsoft\Internet Explorer\SearchScopes\{0633EE93-D776-472f-A0FF-E1416B8B2E3A}" /v "FaviconURL" /t REG_SZ /d "http://www.google.com/favicon.ico" /f
Reg.exe add "HKCU\Software\Microsoft\Internet Explorer\SearchScopes\{0633EE93-D776-472f-A0FF-E1416B8B2E3A}" /v "TopResultURL" /t REG_SZ /d "http://www.google.com/search?q={searchTerms}&src=IE-TopResult&FORM=IETR02&pc=UE10" /f
Reg.exe add "HKCU\Software\Microsoft\Internet Explorer\SearchScopes\{0633EE93-D776-472f-A0FF-E1416B8B2E3A}" /v "URL" /t REG_SZ /d "http://www.google.com/search?q={searchTerms}" /f
Reg.exe add "HKCU\Software\Microsoft\Internet Explorer\SearchScopes\{0633EE93-D776-472f-A0FF-E1416B8B2E3A}" /v "SuggestionsURL" /t REG_SZ /d "http://clients5.google.com/complete/search?q={searchTerms}&client=ie8&mw={ie:maxWidth}&sh={ie:sectionHeight}&rh={ie:rowHeight}&inputencoding={inputEncoding}&outputencoding={outputEncoding}" /f

REM ; แก้  ฟอน์ ใน Notepad 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Notepad" /v "lfFaceName" /t REG_SZ /d "Tahoma" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Notepad" /v "iPointSize" /t REG_DWORD /d "120" /f

rem ; ตั้ง powercfg ให้ high performance
powercfg /s SCHEME_MIN
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
powercfg /SETDCVALUEINDEX SCHEME_CURRENT SUB_NONE CONSOLELOCK 0
powercfg /SETACVALUEINDEX SCHEME_CURRENT SUB_NONE CONSOLELOCK 0

rem ; ให้สิทธิเขียนไฟล์กับ โปรแกรมอ่านบัตรประชาชน

icacls "C:\Program Files (x86)\RD_Apps" /grant administrators:F
icacls "C:\Program Files (x86)\RD_Apps" /grant users:M

icacls "C:\Program Files (x86)\RD_Apps" /grant erevenue:(OI)(CI)F
icacls "C:\Users\erevenue\AppData\Local\Temp" /grant erevenue:(OI)(CI)F
rem ; ให้สิทธิเขียนไฟล์ใน temp (แก้ 5201)
icacls "C:\Windows\Temp" /grant Everyone:(OI)(CI)F


REM ;-----------------------------------------------------------------------------
REM ; ตั้งค่า JAVA exception.sites (เขียนไฟล์ใหม่ทั้งไฟล์)
@echo off

echo http://10.20.1.95> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites
echo http://10.20.1.95:7023>> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites
echo http://10.84.11.110>> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites
echo http://10.52.11.139>> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites
echo http://app.c.itpc.sys.rd.go.th>> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites
echo http://app.c.itpp.sys.rd.go.th>> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites
echo http://app.c.itpx.sys.rd.go.th>> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites
echo http://app.r03.itpc.sys.rd.go.th>> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites
echo http://app.r03.itpp.sys.rd.go.th>> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites
echo http://bpm.c.itpx.sys.rd.go.th>> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites
echo http://docrecovery.rd.go.th>> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites
echo http://edssa.sys.rd.go.th>> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites
echo http://img.r03.itpx.sys.rd.go.th>> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites
echo http://onlinedoc.rd.go.th>> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites
echo http://rpt.c.itpx.sys.rd.go.th>> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites
echo http://wecho htsys.rd.go.th>> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites
echo https://ddc.rd.go.th>> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites
echo https://pkims.rd.go.th>> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites
echo https://edssa.rd.go.th>> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites
echo https://app-c-itpx-sys.rd.go.th>> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites
echo https://app-c-itpc-sys.rd.go.th>> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites
echo https://app-c-itpp-sys.rd.go.th>> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites
echo https://bpm-c-itpx-sys.rd.go.th>> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites
echo https://rpt-c-itpx-sys.rd.go.th>> %userprofile%\appdata\LocalLow\Sun\Java\Deployment\security\exception.sites

REM ;-----------------------------------------------------------------------------
REM ; เขียน deployment.properties ใหม่ ทั้งไฟล์ แล้วเรียก config java เพื่อ update 1 ที

echo deployment.security.clientauth.keystore.auto=false> %userprofile%\appdata\locallow\sun\java\deployment\deployment.properties
echo deployment.security.revocation.check=NO_CHECK>> %userprofile%\appdata\locallow\sun\java\deployment\deployment.properties
echo deployment.expiration.decision.timestamp.11.121.2=1559792971>> %userprofile%\appdata\locallow\sun\java\deployment\deployment.properties
echo deployment.javaws.viewer.bounds=440,111,720,360>> %userprofile%\appdata\locallow\sun\java\deployment\deployment.properties
echo deployment.expiration.decision.suppression.11.121.2=true>> %userprofile%\appdata\locallow\sun\java\deployment\deployment.properties
echo deployment.version=8>>  %userprofile%\appdata\locallow\sun\java\deployment\deployment.properties
echo deployment.browser.path=C\:\\Program Files\\Internet Explorer\\iexplore.exe>> %userprofile%\appdata\locallow\sun\java\deployment\deployment.properties
echo deployment.security.mixcode=DISABLE>> %userprofile%\appdata\locallow\sun\java\deployment\deployment.properties
echo deployment.modified.timestamp=1563935491999>> %userprofile%\appdata\locallow\sun\java\deployment\deployment.properties
echo deployment.security.jsse.hostmismatch.warning=false>> %userprofile%\appdata\locallow\sun\java\deployment\deployment.properties
echo deployment.roaming.profile=false>> %userprofile%\appdata\locallow\sun\java\deployment\deployment.properties
echo deployment.expiration.decision.11.121.2=later>> %userprofile%\appdata\locallow\sun\java\deployment\deployment.properties
echo deployment.security.tls.revocation.check=NO_CHECK>> %userprofile%\appdata\locallow\sun\java\deployment\deployment.properties
echo deployment.javaws.jre.0.registered=true>> %userprofile%\appdata\locallow\sun\java\deployment\deployment.properties
echo deployment.javaws.jre.0.platform=1.8>> %userprofile%\appdata\locallow\sun\java\deployment\deployment.properties
echo deployment.javaws.jre.0.osname=Windows>> %userprofile%\appdata\locallow\sun\java\deployment\deployment.properties
echo deployment.javaws.jre.0.path=C\:\\Program Files\\Java\\jre1.8.0_121\\bin\\javaw.exe>> %userprofile%\appdata\locallow\sun\java\deployment\deployment.properties
echo deployment.javaws.jre.0.product=1.8.0_121>> %userprofile%\appdata\locallow\sun\java\deployment\deployment.properties
echo deployment.javaws.jre.0.osarch=x86>> %userprofile%\appdata\locallow\sun\java\deployment\deployment.properties
echo deployment.javaws.jre.0.location=http\://java.sun.com/products/autodl/j2se>> %userprofile%\appdata\locallow\sun\java\deployment\deployment.properties
echo deployment.javaws.jre.0.enabled=true>> %userprofile%\appdata\locallow\sun\java\deployment\deployment.properties
echo deployment.javaws.jre.0.args=>> %userprofile%\appdata\locallow\sun\java\deployment\deployment.properties

start C:\ProgramData\Microsoft\Windows\"Start Menu"\Programs\Java\"Configure Java".lnk"
timeout /t 3
taskkill /im javaw.exe /F


Exit

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
 Cls & Echo You must have administrator rights to continue ... 
 msg %username% Script ไม่ run นะครับ เอาใหม่ อย่าดับเบิ้ลคลิ๊กครับ  ต้อง Click ขวา แล้วเลือก Run as administrator
 Pause & Exit
)
Cls
goto:eof
REM ;--------------------จบไฟล์---------------------------------------------------------