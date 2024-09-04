program ProjectSistemaComercial;

uses
  Vcl.Forms,
  Unit1.principal in 'Unit1.principal.pas' {frmprincipal},
  cadcliente in 'cadcliente.pas' {frmcadcliente},
  Unitdmprincipal in 'Unitdmprincipal.pas' {dmprincipal: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrmprincipal, frmprincipal);
  Application.CreateForm(Tfrmcadcliente, frmcadcliente);
  Application.CreateForm(Tdmprincipal, dmprincipal);
  Application.Run;
end.
