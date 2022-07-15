unit FFRSmallLabel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxPreview, frxDBSet;

type
  TfrmFRSmallLabel = class(TForm)
    pvSmallLabel: TfrxPreview;
    rpSmallLabel: TfrxReport;
    dbSmallLabel: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFRSmallLabel: TfrmFRSmallLabel;

implementation

uses
  MacAdressIterator;

{$R *.dfm}

end.
