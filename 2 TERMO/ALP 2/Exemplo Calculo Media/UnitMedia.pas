unit UnitMedia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tfrmmedia = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    lbalunos: TListBox;
    Timer1: TTimer;
    lblhora: TLabel;
    lbldata: TLabel;
    Panel4: TPanel;
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    edtn1: TEdit;
    edtn2: TEdit;
    edtn3: TEdit;
    edtn4: TEdit;
    edtmedia: TEdit;
    edtstatus: TEdit;
    btncalcular: TButton;
    Label6: TLabel;
    Label5: TLabel;
    btnlimpar: TButton;
    edtnome: TEdit;
    procedure btncalcularClick(Sender: TObject);
    procedure btnlimparClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmedia: Tfrmmedia;

   nota1,nota2,nota3,nota4,media:real;
   status:string;

implementation

{$R *.dfm}

procedure Tfrmmedia.btncalcularClick(Sender: TObject);
begin

nota1:=strtofloat(edtn1.Text);
nota2:=strtofloat(edtn2.Text);
nota3:=strtofloat(edtn3.Text);
nota4:=strtofloat(edtn4.Text);
media:= (nota1+nota2+nota3+nota4)/4;

if media>=7 then
status:='Aprovado';
if media<7 then
status:='Reprovado';


edtmedia.Text:=floattostr (media);

edtstatus.Text:= status;
 lbalunos.Items.Add('---------------------------');
lbalunos.Items.Add(edtnome.Text);
lbalunos.Items.Add('Bimestre 1: '+ edtn1.Text);
lbalunos.Items.Add('Bimestre 2: '+ edtn2.Text);
lbalunos.Items.Add('Bimestre 3: ' + edtn3.Text);
lbalunos.Items.Add('Bimestre 4: ' + edtn4.Text);
lbalunos.Items.Add('Média' + edtmedia.Text);
lbalunos.Items.Add('Status' + edtstatus.Text);

lbalunos.Items.Add('---------------------------');


end;

procedure Tfrmmedia.btnlimparClick(Sender: TObject);
begin
edtn1.Clear;
edtn2.Clear;
edtn3.Clear;
edtn4.Clear;
edtmedia.Clear;
edtstatus.Clear;
lbalunos.Clear;
edtnome.Clear;



end;

procedure Tfrmmedia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
showmessage('Obrigado por utilizar meu cálculo de média! By Prof. José Carlos');
end;

procedure Tfrmmedia.Timer1Timer(Sender: TObject);
begin
lbldata.Caption:=datetostr(date);
lblhora.Caption:=timetostr(time);


end;

end.
