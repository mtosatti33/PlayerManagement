unit ubgrabuttonproperties;

{
     -ESCRITO UNICAMENTE PARA ALTERAR AS PROPRIEDADES DO BCBUTTON EM TEMPO DE
     EXECUÇÃO

     AUTOR: MARCELO R. TOSATTI

}
{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, BCButton, BCTypes, ExtCtrls, Dialogs, Forms, Graphics;

const
  MAX_PADDING_SIZE = 10;
  BORDER_WIDTH = 0;
  TEXT_ALIGNMENT_TYPE = bcaLeftCenter;
  FONT_NAME = 'calibri';
  FORE_COLOR = clWhite;
  BACK_COLOR = $130C01;
  BACK_HOVER_COLOR = $675C55;
  BAR_BACK_COLOR = $8A4B08;  
  BAR_HOVER_BACK_COLOR = $C54B00;



procedure Load(panel: TPanel);

implementation

procedure Load(panel: TPanel);
var
  i: integer;
begin
  ///////////////////////////////////////////////////////////
  // pnlMenu Action
  ///////////////////////////////////////////////////////////
  if panel.Name = 'pnlMenu' then
  begin
    for i := 0 to panel.ControlCount - 1 do
    begin
      if panel.Controls[i] is TBCButton then
      begin
        //TextAlignment
        with TBCButton(panel.Controls[i]) do
        begin
          StateNormal.FontEx.TextAlignment := TEXT_ALIGNMENT_TYPE;
          StateHover.FontEx.TextAlignment := TEXT_ALIGNMENT_TYPE;
          StateClicked.FontEx.TextAlignment := TEXT_ALIGNMENT_TYPE;

          //PaddingLeft
          StateNormal.FontEx.PaddingLeft := MAX_PADDING_SIZE;
          StateHover.FontEx.PaddingLeft := MAX_PADDING_SIZE;
          StateClicked.FontEx.PaddingLeft := MAX_PADDING_SIZE;

          //Back Color
          StateNormal.Background.Color := BACK_COLOR;
          StateHover.Background.Color := BACK_HOVER_COLOR;
          StateClicked.Background.Color := BACK_HOVER_COLOR;

          //Fore Color
          StateNormal.FontEx.Color := FORE_COLOR;
          StateHover.FontEx.Color := FORE_COLOR;
          StateClicked.FontEx.Color := FORE_COLOR;


          //Font
          StateNormal.FontEx.Name := FONT_NAME;
          StateHover.FontEx.Name := FONT_NAME;
          StateClicked.FontEx.Name := FONT_NAME;

          //Border Width
          StateNormal.Border.Width := BORDER_WIDTH;
          StateHover.Border.Width := BORDER_WIDTH;
          StateHover.Border.Width := BORDER_WIDTH;

          //Glyph Left
          GlyphAlignment := bcaLeftCenter;
        end;

      end;
    end;
  end;
  ///////////////////////////////////////////////////////////
  // pnlTop Action
  ///////////////////////////////////////////////////////////
  if panel.Name = 'pnlTop' then
  begin
    for i := 0 to panel.ControlCount - 1 do
    begin
      if panel.Controls[i] is TBCButton then
      begin
        with TBCButton(panel.Controls[i]) do
        begin
          //COLOR
          StateNormal.Background.Color := BAR_BACK_COLOR;
          StateHover.Background.Color := BAR_HOVER_BACK_COLOR;
          StateClicked.Background.Color := BAR_HOVER_BACK_COLOR;

          //Border Width
          StateNormal.Border.Width := BORDER_WIDTH;
          StateHover.Border.Width := BORDER_WIDTH;
          StateHover.Border.Width := BORDER_WIDTH;
        end;
      end;
    end;
  end;
end;

end.
