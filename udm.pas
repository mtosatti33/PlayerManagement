unit UDM;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, ZConnection, ZDataset, ZSqlUpdate, UConfiguration,
  UDatasetConstants, Dialogs;

type

  { Tdm }

  Tdm = class(TDataModule)
    conn: TZConnection;
    qryRoster: TZQuery;
    qryRosterUpdate: TZQuery;
    procedure DataModuleCreate(Sender: TObject);
  private

  public

  end;

var
  dm: Tdm;  
  iniStrings: TIniStrings;

implementation

{$R *.lfm}

{ Tdm }

procedure Tdm.DataModuleCreate(Sender: TObject);
var
  arch: string;
begin
  iniStrings:=ReadIniFile;

  {$IfDef WIN32}
  arch := ARCH_X86;
  {$EndIf}

  {$IfDef WIN64}
  arch := ARCH_X64;
  {$EndIf}

  conn.LibraryLocation := arch + iniStrings.lib;
  conn.Database := iniStrings.database;
  conn.Protocol := iniStrings.protocol;

  try
    conn.Connected := True;
  except
    on E: Exception do
      ShowMessage('A error ocurred: ' + E.Message);
  end;
end;

end.

