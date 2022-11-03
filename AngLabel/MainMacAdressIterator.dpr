program MainMacAdressIterator;

uses
  Vcl.Forms,
  MacAdressIterator in 'MacAdressIterator.pas' {frmMAC},
  dmMacIterator in 'dmMacIterator.pas' {DataModuleMacIterator: TDataModule},
  frmFastReportMac in 'frmFastReportMac.pas' {frmFReport},
  frmFastReportList in 'frmFastReportList.pas' {frmFRList},
  fTest in 'fTest.pas' {frmTestGrid},
  frmFReportBarCodeLong in 'frmFReportBarCodeLong.pas' {frmFRBarCodeLong},
  FShowSoft in 'FShowSoft.pas' {frmShowSoft},
  frmFReportIDandMAC in 'frmFReportIDandMAC.pas' {frmFR_IDandMAC},
  frmFReportGen_QR in 'frmFReportGen_QR.pas' {frmGen_OR},
  FFRBigLabel in 'FFRBigLabel.pas' {frmFRBigLabel},
  FFRSmallLabel in 'FFRSmallLabel.pas' {frmFRSmallLabel},
  FShild in 'FShild.pas' {frmShild},
  FListDevece in 'FListDevece.pas' {frmListDevice},
  FfrAdvacedLabel in 'FfrAdvacedLabel.pas' {frmAdvancedLabel};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMAC, frmMAC);
  Application.CreateForm(TDataModuleMacIterator, DataModuleMacIterator);
  Application.CreateForm(TfrmFReport, frmFReport);
  Application.CreateForm(TfrmFRList, frmFRList);
  Application.CreateForm(TfrmTestGrid, frmTestGrid);
  Application.CreateForm(TfrmFRBarCodeLong, frmFRBarCodeLong);
  Application.CreateForm(TfrmShowSoft, frmShowSoft);
  Application.CreateForm(TfrmFR_IDandMAC, frmFR_IDandMAC);
  Application.CreateForm(TfrmGen_OR, frmGen_OR);
  Application.CreateForm(TfrmFRBigLabel, frmFRBigLabel);
  Application.CreateForm(TfrmFRSmallLabel, frmFRSmallLabel);
  Application.CreateForm(TfrmShild, frmShild);
  Application.CreateForm(TfrmAdvancedLabel, frmAdvancedLabel);
  Application.Run;
end.
