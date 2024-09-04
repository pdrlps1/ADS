unit EX2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    y: TLabel;
    edtvenda: TEdit;
    edtporc: TEdit;
    lbl4: TLabel;
    lblfinal: TLabel;
    btncalcular: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    procedure btncalcularClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btncalcularClick(Sender: TObject);

var
valorvenda,porc,resultado:real;

begin
  valorvenda := strtofloat(edtvenda.Text);
  porc := strtofloat(edtporc.text);
if (checkbox1.checked = true) then
begin
  resultado:=valorvenda*(1-(porc/100));
  lblfinal.Caption := floattostr(resultado);
end;
if (checkbox2.Checked = true) then
  resultado:=valorvenda*(1+(porc/100));
  lblfinal.Caption := floattostr(resultado);
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
checkbox2.Checked:=false;
end;

procedure TForm2.CheckBox2Click(Sender: TObject);
begin
checkbox1.Checked:=false;
end;

end.
