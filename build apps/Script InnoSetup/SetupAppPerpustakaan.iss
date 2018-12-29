; mendefinisikan const
#define ReleasedYear GetDateTimeString('yyyy', '', '');
#define AppName 'Aplikasi Perpustakaan'
#define AppDir 'AppPerpustakaan'
#define AppExeName 'LatihanCRUDMVC.exe'
#define AppVendorName 'Kamarudin'
#define AppEmail 'kamarudin@amikom.ac.id'
#define AppCopyright 'Copyright © 2017-' + ReleasedYear + ' ' + AppVendorName
#define AppVersion GetFileVersionString(AppExeName)
#define AppIcon 'icon-aplikasi.ico'

[Setup]
AppName={#AppName}
AppVerName={#AppName} Version {#AppVersion}
AppPublisher={#AppVendorName} ({#AppEmail})
AppVersion={#AppVersion}
AllowCancelDuringInstall = yes
DefaultDirName={pf}\{#AppDir}
DefaultGroupName={#AppName}
Compression = lzma
SolidCompression = yes
OutputDir=output
OutputBaseFilename=AppPerpustakaan-v{#AppVersion}-Setup
AllowNoIcons = yes
AlwaysRestart = no
AlwaysShowComponentsList = no
DisableWelcomePage = no
DisableProgramGroupPage = yes
AppendDefaultDirName = yes
CreateUninstallRegKey = yes
DisableStartupPrompt = yes
LanguageDetectionMethod=none
ShowLanguageDialog=no
UsePreviousLanguage=no
Uninstallable = yes
UninstallFilesDir={app}\uninst
UninstallDisplayIcon={app}\{#AppExeName},0
UninstallDisplayName={#AppName}
WindowVisible = no
AppCopyright={#AppCopyright}
FlatComponentsList = yes
PrivilegesRequired = admin
VersionInfoVersion={#AppVersion}

[Languages]
Name: ina; MessagesFile: Indonesian.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: checkedonce

[Files]
; file aplikasi
Source: *.*; DestDir: {app}; Flags: ignoreversion

; icon
Source: {#AppIcon}; DestDir: {app}; Flags: ignoreversion

[Icons]
Name: {group}\{#AppName}; Filename: {app}\{#AppExeName}; WorkingDir: {app}; IconFilename: {app}\{#AppIcon}
Name: {userdesktop}\{#AppName}; Filename: {app}\{#AppExeName}; WorkingDir: {app}; IconFilename: {app}\{#AppIcon}; Tasks: desktopicon