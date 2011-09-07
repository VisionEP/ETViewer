; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=ETViewer
AppVerName=ETViewer 0.8.5.1
AppPublisher=Javier Mart�n Garc�a
AppPublisherURL=http://code.msdn.microsoft.com/etviewer
AppSupportURL=http://code.msdn.microsoft.com/etviewer
AppUpdatesURL=http://code.msdn.microsoft.com/etviewer
DefaultDirName={pf}\ETViewer
DefaultGroupName=ETViewer
AllowNoIcons=yes
InfoAfterFile=D:\Desarrollo\EventTracing\ETViewer\ReadMe.txt
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\Desarrollo\EventTracing\ETViewer\Release\ETViewer.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Program Files\Debugging Tools for Windows\DBGHelp.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\ETViewer"; Filename: "{app}\ETViewer.exe"
Name: "{group}\{cm:ProgramOnTheWeb,ETViewer}"; Filename: "http://code.msdn.microsoft.com/etviewer"
Name: "{group}\{cm:UninstallProgram,ETViewer}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\ETViewer"; Filename: "{app}\ETViewer.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\ETViewer"; Filename: "{app}\ETViewer.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\ETViewer.exe"; Description: "{cm:LaunchProgram,ETViewer}"; Flags: nowait postinstall skipifsilent

