[Setup]
AppName=Velyro
AppVersion=1.0
DefaultDirName={autopf}\Velyro
DefaultGroupName=Velyro
OutputBaseFilename=Velyro_Instalator
Compression=lzma
SolidCompression=yes
SetupIconFile=velyro.ico
ArchitecturesInstallIn64BitMode=x64compatible

[Files]
Source: "dist\Velyro.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\Velyro"; Filename: "{app}\Velyro.exe"; IconFilename: "{app}\Velyro.exe"
Name: "{autodesktop}\Velyro"; Filename: "{app}\Velyro.exe"; IconFilename: "{app}\Velyro.exe"

[Run]
Filename: "{app}\Velyro.exe"; Description: "Uruchom Velyro"; Flags: nowait postinstall skipifsilent
