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
    frStic_id40_12: TfrxReport;
    frStic_mac40_12: TfrxReport;
    frLabel58_60: TfrxReport;
    frLabel100_72: TfrxReport;
    frLabel100_150: TfrxReport;
    frdbLabel: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFR_Label: TfrmFR_Label;

implementation

uses
  FPrintSection, FdbmPrintLabel;

{$R *.dfm}

end.
