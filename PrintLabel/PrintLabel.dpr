program PrintLabel;

uses
  Vcl.Forms,
  FMain in 'FMain.pas' {frmMain},
  FdbmPrintLabel in 'FdbmPrintLabel.pas' {dbmPrintLabel: TDataModule},
  FSelection in 'FSelection.pas' {frmSelection},
  FPrintSection in 'FPrintSection.pas' {frmPrintSection},
  FTest in 'FTest.pas' {frmTest},
  F_FR_Label in 'F_FR_Label.pas' {frmFR_Label};

{$R *.res}
begin
  ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdbmPrintLabel, dbmPrintLabel);
  Application.CreateForm(TfrmTest, frmTest);
  Application.CreateForm(TfrmFR_Label, frmFR_Label);
  Application.Run;
end.

