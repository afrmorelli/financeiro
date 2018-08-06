program pClient;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form2},
  uCC in 'uCC.pas',
  uCM in 'uCM.pas' {cm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(Tcm, cm);
  Application.Run;
end.
