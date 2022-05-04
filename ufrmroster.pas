unit ufrmRoster;

{$mode objfpc}{$H+}
//TODO: fazer uma pesquisa melhorada dos campos criando uma unit separada e chamando uma função retornando o nome do jogador e posição
interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBGrids,
  Menus, ActnList, ExtCtrls, BCButton, ufrmstdform, UDM, ufrmplayeredit, DB;

type

  { TfrmRoster }

  TfrmRoster = class(TfrmStdForm)
    actEditPlayer: TAction;
    actReviewContractPlayer: TAction;
    actPlacePlayer: TAction;
    actReleasePlayer: TAction;
    actTradePlayer: TAction;
    BCButton1: TBCButton;
    BCButton2: TBCButton;
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
    Splitter1: TSplitter;
    procedure actClearExecute(Sender: TObject);
    procedure actEditPlayerExecute(Sender: TObject);
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

procedure TfrmRoster.actClearExecute(Sender: TObject);
begin
  inherited;
  BCButton1Click(nil);
end;

procedure TfrmRoster.actEditPlayerExecute(Sender: TObject);
begin
  frmPlayerEdit:=TfrmPlayerEdit.create(Application);

  try
    frmPlayerEdit.ShowModal;
  finally
    frmPlayerEdit.Free;
  end;
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

