unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  p, q, d, x1, x2: Real;
begin
  if (Edit1.Text = EmptyStr) or (Edit2.Text = EmptyStr) then
  begin
    Exit;
  end;
  p := StrToInt(Edit1.Text);
  q := StrToInt(Edit2.Text);

  d := (p / 2) * (p / 2) - q;

  Memo1.Lines.Clear;
  Memo1.Lines.Add('Berechnung für p = ' + FloatToStr(p) + ', q = ' +
    FloatToStr(q));
  if d > 0 then
  begin
    x1 := -(p / 2) + Sqrt(d);
    x2 := -(p / 2) - Sqrt(d);
    Memo1.Lines.Add('Zwei Lösungen:');
    Memo1.Lines.Add('x1 = ' + FloatToStrF(x1, ffFixed, 8, 4));
    Memo1.Lines.Add('x2 = ' + FloatToStrF(x2, ffFixed, 8, 4));
  end
  else if d = 0 then
  begin
    x1 := -(p / 2);
    Memo1.Lines.Add('Eine Lösung: x = ' + FloatToStrF(x1, ffFixed, 8, 4));
  end
  else
  begin
    Memo1.Lines.Add('Keine reellen Lösungen.');
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.Clear;
  Edit1.Clear;
  Edit2.Clear;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
