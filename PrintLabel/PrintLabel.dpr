program PrintLabel;

uses
  Vcl.Forms,
  FMain in 'FMain.pas' {frmMain},
  FdbmPrintLabel in 'FdbmPrintLabel.pas' {dbmPrintLabel: TDataModule},
  FSelection in 'FSelection.pas' {frmSelection},
  FPrintSection in 'FPrintSection.pas' {frmPrintSection};

{$R *.res}
begin
  ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdbmPrintLabel, dbmPrintLabel);
  Application.Run;
end.

