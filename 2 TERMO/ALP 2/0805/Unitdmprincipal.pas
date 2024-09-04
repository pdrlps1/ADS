unit Unitdmprincipal;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  Tdmprincipal = class(TDataModule)
    ADOConnection1: TADOConnection;
    adoquerycliente: TADOQuery;
    adoqueryclientecpf: TFMTBCDField;
    adoqueryclienteendereco: TStringField;
    adoqueryclientenome: TStringField;
    adoqueryclientecidade: TStringField;
    adoqueryclienteuf: TStringField;
    adoqueryclientecep: TFMTBCDField;
    adoqueryclientetelefone: TFMTBCDField;
    adoqueryfornecedor: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmprincipal: Tdmprincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
