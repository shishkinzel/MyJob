unit F_FR_Table;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FPrintSection, frxClass, frxDBSet,
  frxExportBaseDialog, frxExportPDF, frxBarcode, frxPreview;

type
  TfrmFR_Table = class(TForm)
    frxPrV: TfrxPreview;
    frxReCor: TfrxReport;
    frxBarCode: TfrxBarCodeObject;
    frxExPDF: TfrxPDFExport;
    frdbTable: TfrxDBDataset;
    frxReTopaz: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFR_Table: TfrmFR_Table;

implementation

uses
  FMain;
{$R *.dfm}

end.

