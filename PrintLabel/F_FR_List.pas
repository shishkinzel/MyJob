unit F_FR_List;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxPreview, frxBarcode, frxBarcode2D;

type
  TfrmFR_List = class(TForm)
    frxPrV: TfrxPreview;
    frxRe: TfrxReport;
    frxBarCode: TfrxBarCodeObject;

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
 FShowSoft;
{$R *.dfm}

end.
