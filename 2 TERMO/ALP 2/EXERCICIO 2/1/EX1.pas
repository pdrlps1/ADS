unit EX1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    edtvenda: TEdit;
    lbl2: TLabel;
    edtcomissao: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    btncalcular: TButton;
    procedure btncalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btncalcularClick(Sender: TObject);
var
valorvenda,valorcomissao,finalcomissao:real;
begin
   valorvenda := strtofloat(edtvenda.Text);
   valorcomissao := strtofloat(edtcomissao.Text);

   finalcomissao := valorvenda*(valorcomissao/100);
   lbl4.Caption := floattostr(finalcomissao);
end;

end.
