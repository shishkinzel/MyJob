program PrintLabel;

uses
  Vcl.Forms,
  FMain in 'FMain.pas' {frmMain},
  FdbmPrintLabel in 'FdbmPrintLabel.pas' {dbmPrintLabel: TDataModule},
  FSelection in 'FSelection.pas' {frmSelection},
  FPrintSection in 'FPrintSection.pas' {frmPrintSection},
  FTest in 'FTest.pas' {frmTest},
  FListDevece in 'FListDevece.pas' {frmListDevice},
  FShowSoft in 'FShowSoft.pas' {frmShowSoft},
  unit_ini in 'unit_ini.pas',
  F_FR_List in 'F_FR_List.pas' {frmFR_List},
  F_FR_Table in 'F_FR_Table.pas' {frmFR_Table},
  F_FR_Stick in 'F_FR_Stick.pas' {frmFR_Stick},
  F_FR_Label in 'F_FR_Label.pas' {frmFR_Label},
  FCom_Scripts in 'FCom_Scripts.pas' {F_Command},
  FScr_Scripts in 'FScr_Scripts.pas' {F_Scripts};

{$R *.res}
begin
  ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdbmPrintLabel, dbmPrintLabel);
  Application.CreateForm(TfrmTest, frmTest);
  Application.CreateForm(TfrmFR_Stick, frmFR_Stick);
  Application.CreateForm(TfrmFR_List, frmFR_List);
  Application.CreateForm(TfrmFR_Table, frmFR_Table);
  Application.CreateForm(TfrmFR_Stick, frmFR_Stick);
  Application.CreateForm(TfrmFR_Label, frmFR_Label);
  Application.CreateForm(TF_Scripts, F_Scripts);
  Application.Run;
end.

