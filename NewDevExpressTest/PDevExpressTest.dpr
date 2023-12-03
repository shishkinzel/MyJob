program PDevExpressTest;

uses
  Vcl.Forms,
  FMain in 'FMain.pas' {frmDevExpressTest};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDevExpressTest, frmDevExpressTest);
  Application.Run;
end.
