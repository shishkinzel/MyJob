unit formSheet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmSelectSheet = class(TForm)
    cbb_workbooks: TComboBox;
    btn1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelectSheet: TfrmSelectSheet;

implementation

{$R *.dfm}

end.
