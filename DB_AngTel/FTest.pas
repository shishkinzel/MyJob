unit FTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TfrmTest = class(TForm)
    dsTest: TDataSource;
    dbgrdTest1: TDBGrid;
    dbgrdReport: TDBGrid;
    dsReport: TDataSource;
    pnl1: TPanel;
    se1: TSpinEdit;
    edt_1: TEdit;
    btnEd1: TButtonedEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure pnl1KeyPress(Sender: TObject; var Key: Char);
  public
    { Public declarations }
  end;



//  TMyPanel = class(TPanel)
//  published
//    property OnKeyPress;
//    property OnKeyDown;
//    property OnKeyUp;
//  end;
var
  frmTest: TfrmTest;

implementation

uses
  FMain, FdbMain;
{$R *.dfm}
type
  TMyPanel = class(TPanel);

procedure TfrmTest.FormCreate(Sender: TObject);
begin
  TMyPanel(pnl1).OnKeyPress := pnl1KeyPress;
end;

procedure TfrmTest.pnl1KeyPress(Sender: TObject; var Key: Char);
begin
  ShowMessage(Key);
end;



type
  TMyEdit = class(TEdit)
  public
    procedure CreateParams(var Params: TCreateParams); override;
  end;
//

procedure TMyEdit.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.Style := Params.Style or ES_MULTILINE or ES_RIGHT;
end;



end.

