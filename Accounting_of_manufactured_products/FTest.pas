unit FTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmTest = class(TForm)
    dsTest: TDataSource;
    dbgrdTest1: TDBGrid;
    dbgrdReport: TDBGrid;
    dsReport: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTest: TfrmTest;

implementation

uses
  FMain, FdbmPrintLabel, FShowSoft;

{$R *.dfm}

end.
