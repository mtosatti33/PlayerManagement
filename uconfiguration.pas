unit UConfiguration;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, IniFiles;

const
  DB_CONFIG = 'database_config';
  INI_FILE = 'PlayerManagement.ini';


type
  TIniStrings = record
    database: string;
    lib: string;
    protocol: string;
  end;

function ReadIniFile: TIniStrings;

var
  ini: TIniFile;

implementation

function ReadIniFile: TIniStrings;
var
  iniStrings: TIniStrings;
begin
  ini := TIniFile.Create(INI_FILE);
  try
    iniStrings.database := ini.ReadString(DB_CONFIG, 'database', '');
    iniStrings.lib := ini.ReadString(DB_CONFIG, 'library', '');
    iniStrings.protocol := ini.ReadString(DB_CONFIG, 'protocol', '');
  finally
    ini.Free;
  end;

  Result := iniStrings;
end;

end.

