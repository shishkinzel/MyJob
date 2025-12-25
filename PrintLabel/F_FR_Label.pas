unit F_FR_Label;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, frxPreview;

type
  TfrmFR_Label = class(TForm)
    prLabel: TfrxPreview;
    frLabel_30_20: TfrxReport;
    frLabel_58_40: TfrxReport;
    frLabel_58_40_adv: TfrxReport;
    frStic_id_40_12: TfrxReport;
    frStic_mac_40_12: TfrxReport;
    frLabel_58_60: TfrxReport;
    frLabel_100_72: TfrxReport;
    frLabel_100_150: TfrxReport;
    frdbLabel: TfrxDBDataset;
    frLabel_43_25: TfrxReport;
    frdbLabSimple: TfrxDBDataset;
    frdbLabSticker: TfrxDBDataset;
    frxLabel_30_10: TfrxReport;
    frp_LabService: TfrxReport;
    frp_LabDate: TfrxReport;
    fdb_LabService: TfrxDBDataset;
    frLabel_43_25_no_mac: TfrxReport;
    fdb_Modem: TfrxDBDataset;
    frp_Label_modem: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFR_Label: TfrmFR_Label;

implementation

uses
  FPrintSection, FdbmPrintLabel, FShowSoft;

{$R *.dfm}

end.
