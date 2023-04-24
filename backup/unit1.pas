unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    But1: TButton;
    But0: TButton;
    Butplus: TButton;
    But-: TButton;
    But*: TButton;
    Butdiv: TButton;
    Butmod: TButton;
    But=: TButton;
    Butc: TButton;
    But2: TButton;
    But3: TButton;
    But4: TButton;
    But5: TButton;
    But6: TButton;
    But7: TButton;
    But8: TButton;
    But9: TButton;
    window_with_result: TEdit;

    procedure But17Click(Sender: TObject);
    procedure But18Click(Sender: TObject);
    procedure ClickBut(Sender: TObject);
    procedure ClickZnak(Sender: TObject);
    procedure window_with_resultChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  a, b, c: integer; //a- первое число, b- второе число, c- ровно
  znak: string;

implementation

{$R *.lfm}
{TForm1}

procedure TForm1.ClickZnak(Sender: TObject);
begin
  if not(window_with_result.Text ='') then
  begin
  a:= StrToInt (window_with_result.Text);
  window_with_result.Clear;

  znak:=(Sender as TButton). Caption ;
  end;
end;

procedure TForm1.window_with_resultChange(Sender: TObject);
begin

end;


procedure TForm1.ClickBut(Sender: TObject);
begin
  window_with_result.Text:=window_with_result.Text + (Sender as TButton). Caption;
end;

 procedure TForm1.But18Click(Sender: TObject);
 begin
 window_with_result.Clear;


end;

procedure TForm1.But17Click(Sender: TObject);
begin
  if not(window_with_result.text = '') then
  begin
  b:= StrToInt (window_with_result.Text);
  window_with_result.Clear;
  case znak of
'+' : c:=a+b;
'-' : c:=a-b;
'*' : c:=a*b;
'DIV' : begin
  if b=0 then
  else

  c:=a div b; end;
'MOD' : begin
  if b=0 then
  else

  c:=a mod b; end;
  end;
  end;

  window_with_result.Text:= FloatToStr(c);

end;

end.

