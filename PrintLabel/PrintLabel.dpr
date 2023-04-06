program PrintLabel;

uses
  Vcl.Forms,
  FMain in 'FMain.pas' {frmMain},
  FdbmPrintLabel in 'FdbmPrintLabel.pas' {dbmPrintLabel: TDataModule},
  FSelection in 'FSelection.pas' {frmSelection},
  FPrintSection in 'FPrintSection.pas' {frmPrintSection},
  FTest in 'FTest.pas' {frmTest},
  F_FR_Label in 'F_FR_Label.pas' {frmFR_Label},
  FListDevece in 'FListDevece.pas' {frmListDevice},
  FShowSoft in 'FShowSoft.pas' {frmShowSoft},
  unit_ini in 'unit_ini.pas',
  F_FR_List in 'F_FR_List.pas' {frmFR_List};

{$R *.res}
begin
  ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdbmPrintLabel, dbmPrintLabel);
  Application.CreateForm(TfrmTest, frmTest);
  Application.CreateForm(TfrmFR_Label, frmFR_Label);
  Application.CreateForm(TfrmListDevice, frmListDevice);
  Application.CreateForm(TfrmFR_List, frmFR_List);
  Application.Run;
end.

