program PlayerManagement;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, zcomponent, UFrmMain, UDM, ufrmRoster, ufrmstdform,
  ubgrabuttonproperties, ufrmplayeredit
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmStdForm, frmStdForm);
  Application.Run;
end.

