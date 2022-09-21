unit FShild;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, frxPreview;

type
  TfrmShild = class(TForm)
    prShild: TfrxPreview;
    rpShild: TfrxReport;
    db_Shild: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmShild: TfrmShild;

implementation

uses
  MacAdressIterator;

{$R *.dfm}

end.
