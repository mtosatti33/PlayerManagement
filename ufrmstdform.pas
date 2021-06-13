unit ufrmstdform;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, Menus, ActnList,
  UDM, StdCtrls;

type

  { TfrmStdForm }

  TfrmStdForm = class(TForm)
    actClear: TAction;
    actions: TActionList;
    dsData: TDataSource;
    images: TImageList;
    options: TPopupMenu;
    procedure actClearExecute(Sender: TObject);
  private

  public

  protected
    procedure Load; virtual;
  end;

var
  frmStdForm: TfrmStdForm;

implementation

{$R *.lfm}

{ TfrmStdForm }

procedure TfrmStdForm.actClearExecute(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to self.ComponentCount - 1 do
  begin
    if self.Components[i] is TCustomEdit then
    begin
      TCustomEdit(self.Components[i]).Clear;
    end;
  end;
end;

procedure TfrmStdForm.Load;
begin

end;

end.

