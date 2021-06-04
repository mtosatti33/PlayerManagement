unit ufrmstdform;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, Forms, Controls, Graphics, Dialogs, Menus, ActnList,
  UDM;

type

  { TfrmStdForm }

  TfrmStdForm = class(TForm)
    actions: TActionList;
    dsData: TDataSource;
    images: TImageList;
    options: TPopupMenu;
  private

  public

  protected
    Procedure Load; virtual;
  end;

var
  frmStdForm: TfrmStdForm;

implementation

{$R *.lfm}

{ TfrmStdForm }

procedure TfrmStdForm.Load;
begin

end;

end.

