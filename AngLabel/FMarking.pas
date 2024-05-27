unit FMarking;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, frxPreview;

type
  TfrmMarking = class(TForm)
    pr_Marking: TfrxPreview;
    db_Shild: TfrxDBDataset;
    rp_lab_58x40: TfrxReport;
    rp_lab_43_25: TfrxReport;
    rp_lab_40_12: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMarking: TfrmMarking;

implementation

uses
  MacAdressIterator;

{$R *.dfm}

end.
