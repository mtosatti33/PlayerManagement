unit UFrmMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBGrids, ExtCtrls,
  ActnList, StdCtrls, BCButton, UDM, uextendcomponents, ufrmRoster,
  ubgrabuttonproperties;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    actCloseApplication: TAction;
    actCallRosterForm: TAction;
    actCallDepthChartForm: TAction;
    actCallInjuriesForm: TAction;
    actCallTradesForm: TAction;
    actMinimize: TAction;
    actMenu: TAction;
    actions: TActionList;
    btnClose: TBCButton;
    BCButton2: TBCButton;
    BCButton3: TBCButton;
    BCButton4: TBCButton;
    BCButton5: TBCButton;
    BCButton6: TBCButton;
    btnMinimize: TBCButton;
    images: TImageList;
    pnlTop: TPanel;
    pnlParent: TPanel;
    pnlStatus: TPanel;
    pnlMenu: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    procedure actCallDepthChartFormExecute(Sender: TObject);
    procedure actCallInjuriesFormExecute(Sender: TObject);
    procedure actCallRosterFormExecute(Sender: TObject);
    procedure actCallTradesFormExecute(Sender: TObject);
    procedure actCloseApplicationExecute(Sender: TObject);
    procedure actMenuExecute(Sender: TObject);
    procedure actMinimizeExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FWidth: byte;
  public

  end;

var
  frmMain: TfrmMain;

implementation

{$R *.lfm}

{ TfrmMain }

procedure TfrmMain.actCloseApplicationExecute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMain.actCallRosterFormExecute(Sender: TObject);
begin
  if not Assigned(frmRoster) then
  begin
    frmRoster := TfrmRoster.Create(Self);
    frmRoster.Align := alClient;
    frmRoster.Parent := pnlParent;
    frmRoster.Visible := True;
  end;
end;

procedure TfrmMain.actCallTradesFormExecute(Sender: TObject);
begin
  //TODO: Fazer o form de Trades (se houver)
  ShowMessage('In Future');
end;

procedure TfrmMain.actCallDepthChartFormExecute(Sender: TObject);
begin
  //TODO: Fazer o form de Depth Chart(Jogadores nas suas posições)
  ShowMessage('In Future');
end;

procedure TfrmMain.actCallInjuriesFormExecute(Sender: TObject);
begin
  //TODO: Fazer o form de Injuries (Lesões do FA)
  ShowMessage('In Future');
end;

procedure TfrmMain.actMenuExecute(Sender: TObject);
begin
  if pnlMenu.Width = FWidth then
    pnlMenu.Width := 0
  else
    pnlMenu.Width := FWidth;
end;

procedure TfrmMain.actMinimizeExecute(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  actCallRosterForm.Execute;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  pnlTop.MoveMousePanel := True;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  FWidth := pnlMenu.Width;
  Load(pnlMenu);
  Load(pnlTop);
end;

end.
