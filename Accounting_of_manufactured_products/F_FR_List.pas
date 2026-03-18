unit F_FR_List;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxPreview, frxBarcode, frxBarcode2D,
  frxDBSet;

type
  TfrmFR_List = class(TForm)
    frxPrV: TfrxPreview;
    frxRe: TfrxReport;
    frxBarCode: TfrxBarCodeObject;
    frxRe_adv: TfrxReport;
    frx_command: TfrxReport;
    frx_scripts: TfrxReport;
    frx_upg_soft: TfrxReport;
    fr_db_upg_soft: TfrxDBDataset;

//    memData : TfrxMemoView ;
  private
        { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFR_List: TfrmFR_List;

implementation
 uses
 FShowSoft, FPrintSection;
{$R *.dfm}

end.
