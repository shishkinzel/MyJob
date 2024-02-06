program PMain;

uses
  Vcl.Forms,
  FMain in 'FMain.pas' {frmMain},
  FdbMain in 'FdbMain.pas' {dbMain: TDataModule},
  FListDevece in 'FListDevece.pas' {frmListDevice},
  FGrid in 'FGrid.pas' {frmGrid},
  FTest in 'FTest.pas' {frmTest};

{$R *.res}
begin
  ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdbMain, dbMain);
  Application.CreateForm(TfrmTest, frmTest);
  Application.CreateForm(TfrmGrid, frmGrid);
  Application.Run;
end.

