unit ufrmRoster;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBGrids,
  Menus, BCButton, ufrmstdform, UDM, DB;

type

  { TfrmRoster }

  TfrmRoster = class(TfrmStdForm)
    BCButton1: TBCButton;
    DBGrid1: TDBGrid;
    edtNo: TEdit;
    edtPlayer: TEdit;
    edtPos: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    PopupMenu1: TPopupMenu;
    procedure BCButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public
    procedure Load; override;

  end;

var
  frmRoster: TfrmRoster;

implementation

{$R *.lfm}

{ TfrmRoster }

procedure TfrmRoster.BCButton1Click(Sender: TObject);
begin
  Load;
end;

procedure TfrmRoster.FormShow(Sender: TObject);
begin
  Load;
end;

procedure TfrmRoster.Load;
begin
  inherited Load;
  with dm do
  begin
    qryRoster.Close;
    qryRoster.ParamByName('No').AsString := edtNo.Text;
    qryRoster.ParamByName('Player').AsString := '%' + edtPlayer.Text + '%';
    qryRoster.ParamByName('Pos').AsString := edtPos.Text;
    qryRoster.Open;
  end;
end;

end.

