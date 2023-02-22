unit FStickCheck;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxPreview, frxDBSet;

type
  TfrmStickCheck = class(TForm)
    fpStickCheck: TfrxPreview;
    frpStickCheck: TfrxReport;
    rpLabService: TfrxReport;
    frdbService: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStickCheck: TfrmStickCheck;

implementation

uses
  MacAdressIterator;

{$R *.dfm}

end.
