unit FFRBigLabel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, frxPreview;

type
  TfrmFRBigLabel = class(TForm)
    pvBigLabel: TfrxPreview;
    rpBigLabel: TfrxReport;
    dbBigLabel: TfrxDBDataset;
    rpBigLabel_mac: TfrxReport;
    rp_43_25: TfrxReport;
    rp_43_25_qr: TfrxReport;
    rp_43_25_shild: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFRBigLabel: TfrmFRBigLabel;

implementation

uses
  MacAdressIterator;

{$R *.dfm}

end.
