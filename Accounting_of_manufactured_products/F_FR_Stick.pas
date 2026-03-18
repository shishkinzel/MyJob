unit F_FR_Stick;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, frxPreview;

type
  TfrmFR_Stick = class(TForm)
    prLabel: TfrxPreview;
    frLabel_30_20: TfrxReport;
    rp_Label_58x40_servece: TfrxReport;
    rp_Label_58x40_stick: TfrxReport;
    frStic_id_40_12: TfrxReport;
    frStic_mac_40_12: TfrxReport;
    frdbLabel: TfrxDBDataset;
    rp_Label_43x25_stick: TfrxReport;
    frdbLabSimple: TfrxDBDataset;
    frdbLabSticker: TfrxDBDataset;
    frxLabel_30_10: TfrxReport;
    frp_LabService: TfrxReport;
    frp_LabDate: TfrxReport;
    fdb_LabService: TfrxDBDataset;
    rp_Label_40x12_stick: TfrxReport;
    frpStickCheck: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFR_Stick: TfrmFR_Stick;

implementation

uses
  FPrintSection, FdbmPrintLabel, FShowSoft;

{$R *.dfm}

end.
