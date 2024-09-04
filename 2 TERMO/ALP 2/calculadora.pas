unit calculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtn1: TEdit;
    edtn2: TEdit;
    lbln1: TLabel;
    lbln2: TLabel;
    btncalcular: TButton;
    lblresultado: TLabel;
    lblresult: TLabel;
    btnlimpar: TButton;
    btnsoma: TButton;
    btnsubtracao: TButton;
    btnmultiplicacao: TButton;
    btndivisao: TButton;
    procedure btncalcularClick(Sender: TObject);
    procedure btnlimparClick(Sender: TObject);
    procedure btnsomaClick(Sender: TObject);
    procedure btnsubtracaoClick(Sender: TObject);
    procedure btnmultiplicacaoClick(Sender: TObject);
    procedure btndivisaoClick(Sender: TObject);
    procedure edtn1Click(Sender: TObject);
    procedure edtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  operador:string;
implementation

{$R *.dfm}

procedure TForm1.btncalcularClick(Sender: TObject);
var
n1, n2, resultado:real;
begin
if edtn1.Text = '' then
begin
showmessage('Insira um valor 1');
edtn1.SetFocus;
edtn1.Text:='Digite aqui';
end;
if edtn2.Text = '' then
begin
showmessage('Insira um valor 2');
edtn2.SetFocus;
edtn2.text := 'Digite aqui';
end;
n1:= strtofloat (edtn1.Text);
n2:= strtofloat (edtn2.Text);
if operador = '+' then
resultado := n1 + n2;
if operador = '-' then
resultado := n1 - n2;
if operador = '*' then
resultado := n1 * n2;
if operador = '/' then
resultado := n1 / n2;

showmessage('O resultado é: '+floattostr(resultado));
lblresult.caption:=floattostr(resultado);
btncalcular.enabled:=false
end;

procedure TForm1.btndivisaoClick(Sender: TObject);
begin
  operador:=btndivisao.Caption;
  btndivisao.Enabled:=false;
  btnsoma.Enabled:=true;
  btnsubtracao.Enabled:=true;
  btnmultiplicacao.Enabled:=true;
end;

procedure TForm1.btnlimparClick(Sender: TObject);
begin
edtn1.clear;
edtn2.clear;
lblresult.caption:='0';
btnsoma.Enabled:=true;
btnsubtracao.Enabled:=true;
btnmultiplicacao.Enabled:=true;
btndivisao.enabled:=true;
btncalcular.Enabled:=true;
showmessage('Registro limpo com sucesso!')
end;

procedure TForm1.btnmultiplicacaoClick(Sender: TObject);
begin
  operador:=btnmultiplicacao.Caption;
  btnmultiplicacao.Enabled:=false;
  btnsoma.Enabled:=true;
  btnsubtracao.Enabled:=true;
  btndivisao.Enabled:=true;
end;

procedure TForm1.btnsomaClick(Sender: TObject);

begin
  operador:=btnsoma.caption;
  btnsoma.Enabled:=false;
  btnsubtracao.Enabled:=true;
  btndivisao.Enabled:=true;
  btnmultiplicacao.Enabled:=true;
end;

procedure TForm1.btnsubtracaoClick(Sender: TObject);
begin
  operador:=btnsubtracao.Caption;
  btnsubtracao.Enabled:=false;
  btnsoma.Enabled:=true;
  btndivisao.Enabled:=true;
  btnmultiplicacao.Enabled:=true;
end;

procedure TForm1.edtn1Click(Sender: TObject);
begin
edtn1.Clear;
end;

procedure TForm1.edtn2Click(Sender: TObject);
begin
edtn2.Clear;
end;

end.
