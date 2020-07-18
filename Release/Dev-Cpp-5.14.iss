; Dev-C++��װ�ű�����ʹ�� Inno Setup ���б༭�ʹ������

[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó��򡣲�ҪΪ������װ����ʹ����ͬ��AppIdֵ��
; (�����µ�GUID����� ����|����GUID��)
;�������ݿ��� Inno Setup ��װĿ¼�µ� Default.isl �����á�
AppId={{EED0431C-249C-4C72-8D3D-E92F3C8F4324}}
AppName=Dev-C++
AppVerName=Dev-C++ 5.14 TDM-GCC 9.2.0
AppPublisher= BanzhuSoft
AppPublisherURL= https://banzhusoft.github.io/devcpp-cn/
AppSupportURL=
AppUpdatesURL=
PrivilegesRequired=admin
DefaultDirName={commonpf}\Dev-Cpp
DefaultGroupName=Dev-C++
DisableProgramGroupPage=yes
InfoBeforeFile  = Readme.txt
LicenseFile = GPLv2.txt 
OutputDir= Setup-output
OutputBaseFilename=Dev-Cpp-5.14    
Compression=lzma
SolidCompression=no
SetupIconFile=devcpp.ico

LanguageDetectionMethod=uilanguage
ShowLanguageDialog=yes

[Languages]
;Ҫ���� inno setup �� default.isl �еĲ���������������ֺţ�
Name: "english"; MessagesFile: "compiler:Default.isl"; InfoBeforeFile: "Readme.txt"
Name: "chinesesimp"; MessagesFile: "compiler:Languages\ChineseSimp.isl"; InfoBeforeFile: "Readme-cn.txt"
Name: "ChineseTrad"; MessagesFile: "compiler:Languages\ChineseTrad.isl"; InfoBeforeFile: "Readme-cn.txt"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"; LicenseFile:GPLv2.txt; InfoBeforeFile: "Readme.txt"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"; LicenseFile:GPLv2.txt; InfoBeforeFile: "Readme.txt"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"; LicenseFile:GPLv2.txt; InfoBeforeFile: "Readme.txt"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"; LicenseFile:GPLv2.txt; InfoBeforeFile: "Readme.txt"
;Name: "Korea"; MessagesFile: "compiler:Languages\Korea.isl"; LicenseFile:GPLv2.txt; InfoBeforeFile: "Readme.txt"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"; LicenseFile:GPLv2.txt; InfoBeforeFile: "Readme.txt"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"; LicenseFile:GPLv2.txt; InfoBeforeFile: "Readme.txt"

[Dirs]
name: "{app}\AStyle"; Permissions: authusers-full

[Files]
Source: "*.iss"; DestDir: "{app}"; Flags: ignoreversion
Source: "*.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "*.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "*.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "*.manifest"; DestDir: "{app}"; Flags: ignoreversion

Source: "AStyle\*.*"; DestDir: "{app}\AStyle"; Flags: ignoreversion recursesubdirs createallsubdirs;
Source: "Help\*.*"; DestDir: "{app}\Help"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Lang\*.*"; DestDir: "{app}\Lang"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "TDM-GCC-64\*.*"; DestDir: "{app}\TDM-GCC-64"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Templates\*.*"; DestDir: "{app}\Templates"; Flags: ignoreversion recursesubdirs createallsubdirs

;������ӵ�ʾ����˵���ļ�
Source: "Examples\*.*"; DestDir: "{app}\Examples"; Flags: ignoreversion recursesubdirs createallsubdirs
;ע�⣺�����е� DevCpp.ini �ļ�����Ҫ�������ļ���Ϊ�հף��Ա��״�����ʱ�Զ���⡣
Source: "ini\*.*"; DestDir: "{app}\ini"; Flags: ignoreversion recursesubdirs createallsubdirsSource: "Icons\*.*"; DestDir: "{app}\Icons"; Flags: ignoreversion recursesubdirs createallsubdirs

;�����ļ���Ĭ��λ�ã�c:\Users\Administrator\AppData\Roaming\Dev-Cpp\
Source: "ini\codeinsertion.ini"; DestDir: "{userappdata}\Dev-Cpp"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "ini\defaultcode.ini"; DestDir: "{userappdata}\Dev-Cpp"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "ini\devcpp.ini"; DestDir: "{userappdata}\Dev-Cpp"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "ini\tools.ini"; DestDir: "{userappdata}\Dev-Cpp"; Flags: ignoreversion recursesubdirs createallsubdirs
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��

[UninstallDelete]
;��Ŀ¼�¿����ж�����ļ���ж��ʱӦ��ɾ����
Type: filesandordirs; Name: "{app}\AStyle"
Type: filesandordirs; Name: "{userappdata}\Dev-Cpp" 

[CustomMessages]
english.whatsnew = What's new
chinesesimp.whatsnew = ����˵��
ChineseTrad.whatsnew = �����f��
french.whatsnew = What's new
german.whatsnew = What's new
italian.whatsnew = What's new
japanese.whatsnew = What's new
;Korea.whatsnew = What's new
spanish.whatsnew = What's new
russian.whatsnew = What's new

english.uninstall = Uninstall
chinesesimp.uninstall = ж��
ChineseTrad.uninstall = ж�d
french.uninstall = D��sinstaller
german.uninstall = Deinstallieren
italian.uninstall = Disinstallare
japanese.uninstall = ���󥤥󥹥ȩ`��
;Korea.whatsnew = Uninstall
spanish.uninstall = Desinstalar
russian.uninstall = ���էѧݧڧ��

;english.project = Project
;chinesesimp.project = ��Ŀ
;ChineseTrad.project = ����
;french.project = Project
;german.project = Project
;italian.project = Project
;japanese.project = Project
;spanish.project = Project
;russian.project = Project

;english.source = Source file
;chinesesimp.source = Դ�ļ�
;ChineseTrad.source = ԭʼ�n��
;french.source = Source file
;german.source = Source file
;italian.source = Source file
;japanese.source = Source file
;spanish.source = Source file
;russian.source = Source file

;english.header = Head file
;chinesesimp.header = ͷ�ļ�
;ChineseTrad.header = �^�n
;french.header = Head file
;german.header = Head file
;italian.header = Head file
;japanese.header = Head file
;spanish.header = Head file
;russian.header = Head file

english.runnow = Run Dev-C++ now
chinesesimp.runnow = ���ھ����� Dev-C++
ChineseTrad.runnow = �F�ھ��\�� Dev-C++
french.runnow = Ex��cutez Dev-C++ maintenant
german.runnow = F��hren Sie jetzt Dev-C++ aus
italian.runnow = Esegui Dev-C++ ora
japanese.runnow = �񤹤� Dev-C++ ��g�Ф���
;Korea.runnow = Run Dev-C++ now
spanish.runnow = Ejecute Dev-C++ ahora
russian.runnow = ���ѧ����ڧ�� Dev-C++ ��֧ۧ�ѧ�

[Registry]
;�������������Ҫ����ԭ�е����ã��������ȱ��ݣ���ж�س���ʱ�ٻָ�ԭ��
;Root: HKCR; Subkey: ".dev"; ValueType: String; ValueData: "Dev-C++ {cm:project}"
;Root: HKCR; Subkey: ".c"; ValueType: String; ValueData: "C {cm:source}"
;Root: HKCR; Subkey: ".cpp"; ValueType: String; ValueData: "C++ {cm:source}"
;Root: HKCR; Subkey: ".h"; ValueType: String; ValueData: "C {cm:header}"
;Root: HKCR; Subkey: ".hpp"; ValueType: String; ValueData: "C++ {cm:header}"

;����ͼ��
;Root: HKCR; Subkey: "Dev-C++ {cm:project}\DefaultIcon"; ValueType: String; ValueData: "{app}\DevCpp.exe, 3"; Flags: uninsdeletekey
;Root: HKCR; Subkey: "C {cm:source}\DefaultIcon"; ValueType: String; ValueData: "{app}\DevCpp.exe, 4"; Flags: uninsdeletekey
;Root: HKCR; Subkey: "C++ {cm:source}\DefaultIcon"; ValueType: String; ValueData: "{app}\DevCpp.exe, 5"; Flags: uninsdeletekey
;Root: HKCR; Subkey: "C {cm:header}\DefaultIcon"; ValueType: String; ValueData: "{app}\DevCpp.exe, 6"; Flags: uninsdeletekey
;Root: HKCR; Subkey: "C++ {cm:header}\DefaultIcon"; ValueType: String; ValueData: "{app}\DevCpp.exe, 7"; Flags: uninsdeletekey

;����˫��ʱ��ʲô�����
;Root: HKCR; Subkey: "Dev-C++ {cm:project}\shell\open\command"; ValueType: String; ValueData: "{app}\DevCpp.exe ""%1"""; Flags: uninsdeletekey
;Root: HKCR; Subkey: "C {cm:source}\shell\open\command"; ValueType: String; ValueData: "{app}\DevCpp.exe ""%1"""; Flags: uninsdeletekey
;Root: HKCR; Subkey: "C++ {cm:source}\shell\open\command"; ValueType: String; ValueData: "{app}\DevCpp.exe ""%1"""; Flags: uninsdeletekey
;Root: HKCR; Subkey: "C {cm:header}\shell\open\command"; ValueType: String; ValueData: "{app}\DevCpp.exe ""%1"""; Flags: uninsdeletekey
;Root: HKCR; Subkey: "C++ {cm:header}\shell\open\command"; ValueType: String; ValueData: "{app}\DevCpp.exe ""%1"""; Flags: uninsdeletekey
 
;�����Ҽ��˵���
;Root: HKCR; Subkey: "C++ Դ�ļ�\shell\�� Dev-C++ ��(O)\command"; ValueType: String; ValueData: "{app}\DevCpp.exe %1"; Flags: uninsdeletekey

[Icons]
Name: "{commondesktop}\Dev-C++"; Filename: "{app}\DevCpp.exe"
Name: "{group}\Dev-C++"; Filename: "{app}\DevCpp.exe"
Name: "{group}\{cm:whatsnew}"; Filename: "{app}\whatsnew-cn.txt"
Name: "{group}\{cm:uninstall} Dev-C++"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\DevCpp.exe"; Description: {cm:runnow}; Flags: nowait postinstall skipifsilent





