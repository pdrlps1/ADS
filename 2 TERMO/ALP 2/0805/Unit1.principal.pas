unit Unit1.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  Tfrmprincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    N1: TMenuItem;
    Cliente1: TMenuItem;
    Fornecedores1: TMenuItem;
    Fornecedor1: TMenuItem;
    N2: TMenuItem;
    Produto1: TMenuItem;
    Image1: TImage;
    pnstatus: TPanel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprincipal: Tfrmprincipal;

implementation

{$R *.dfm}

uses cadcliente;

procedure Tfrmprincipal.Cliente1Click(Sender: TObject);
begin
frmcadcliente.show
end;

procedure Tfrmprincipal.Timer1Timer(Sender: TObject);
begin
pnstatus.caption:=timetostr(time) + ' ' + datetostr(date);
end;

end.
