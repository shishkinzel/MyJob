unit FfrAdvacedLabel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, frxPreview;

type
  TfrmAdvancedLabel = class(TForm)
    prAdvancedLabel: TfrxPreview;
    frLab58x60: TfrxReport;
    frLab100x72: TfrxReport;
    frxPreview1: TfrxPreview;
    frLab100x150: TfrxReport;
    frdbAdvacedLabel: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdvancedLabel: TfrmAdvancedLabel;

implementation

uses
  MacAdressIterator;

{$R *.dfm}

end.
