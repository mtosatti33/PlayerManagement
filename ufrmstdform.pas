unit ufrmstdform;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, Forms, Controls, Graphics, Dialogs, UDM;

type

  { TfrmStdForm }

  TfrmStdForm = class(TForm)
    dsData: TDataSource;
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

