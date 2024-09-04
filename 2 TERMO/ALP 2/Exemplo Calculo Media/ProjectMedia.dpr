program ProjectMedia;

uses
  Vcl.Forms,
  UnitMedia in 'UnitMedia.pas' {frmmedia};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrmmedia, frmmedia);
  Application.Run;
end.
