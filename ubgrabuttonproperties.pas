unit ubgrabuttonproperties;
{
     -ESCRITO UNICAMENTE PARA ALTERAR AS PROPRIEDADES DO BCBUTTON EM TEMPO DE
     EXECUÇÃO

     AUTOR: MARCELO R. TOSATTI

}
{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, BCButton, BCTypes, ExtCtrls, Dialogs, Forms;
const
  MAX_PADDING_SIZE = 10;
  FONT_NAME = 'calibri';



procedure Load(panel: TPanel);

implementation

procedure Load(panel: TPanel);
var
  i: integer;
begin
  for i := 0 to panel.ControlCount - 1 do
  begin
      if panel.Controls[i] is TBCButton then
      begin
        //TextAlignment
        TBCButton(panel.Controls[i]).StateNormal.FontEx.TextAlignment := bcaLeftCenter;
        TBCButton(panel.Controls[i]).StateHover.FontEx.TextAlignment := bcaLeftCenter;
        TBCButton(panel.Controls[i]).StateClicked.FontEx.TextAlignment := bcaLeftCenter;

        //PaddingLeft
        TBCButton(panel.Controls[i]).StateNormal.FontEx.PaddingLeft := MAX_PADDING_SIZE;
        TBCButton(panel.Controls[i]).StateHover.FontEx.PaddingLeft := MAX_PADDING_SIZE;
        TBCButton(panel.Controls[i]).StateClicked.FontEx.PaddingLeft := MAX_PADDING_SIZE;

        //StateNormal Color
        TBCButton(panel.Controls[i]).StateNormal.Background.Color := $F5D0A9;

        //Font
        TBCButton(panel.Controls[i]).StateNormal.FontEx.Name := FONT_NAME;
        TBCButton(panel.Controls[i]).StateHover.FontEx.Name := FONT_NAME;
        TBCButton(panel.Controls[i]).StateClicked.FontEx.Name := FONT_NAME;

        //Border Width
        TBCButton(panel.Controls[i]).StateNormal.Border.Width := 0;
        TBCButton(panel.Controls[i]).StateHover.Border.Width := 0;
        TBCButton(panel.Controls[i]).StateHover.Border.Width := 0;

        //Glyph Left
        TBCButton(panel.Controls[i]).GlyphAlignment := bcaLeftCenter;
      end;
  end;
end;

end.
