unit FGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmGrid = class(TForm)
    pnlTop: TPanel;
    splTop: TSplitter;
    pnlDown: TPanel;
    splDown: TSplitter;
    pnlMain: TPanel;
    dbnav_Working: TDBNavigator;
    dbnav_Global: TDBNavigator;
    dbG_Global: TDBGrid;
    dbG_Working: TDBGrid;
    ds_Working: TDataSource;
    ds_Global: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrid: TfrmGrid;

implementation

uses
  FMain, FdbMain;

{$R *.dfm}

procedure TfrmGrid.FormShow(Sender: TObject);
var
i : Integer;
begin
  with dbG_Global do
  begin
    Columns[0].Title.Caption := 'Наименование устройства';
    Columns[0].Title.Alignment := taCenter;
    Columns[0].Width := 450;

    Columns[1].Title.Caption := 'Дата';
    Columns[1].Title.Alignment := taCenter;
    Columns[1].Width := 80;

    Columns[2].Title.Caption := 'Серийный номер';
    Columns[2].Title.Alignment := taCenter;
    Columns[2].Width := 180;

    Columns[3].Title.Caption := 'MAC-адрес';
    Columns[3].Title.Alignment := taCenter;
    Columns[3].Width := 180;

  end;

  with dbG_Working do
  begin
    Columns[0].Title.Caption := 'Наименование устройства';
    Columns[0].Title.Alignment := taCenter;
    Columns[0].Width := 450;

    Columns[1].Title.Caption := 'Дата';
    Columns[1].Title.Alignment := taCenter;
    Columns[1].Width := 80;

    Columns[2].Title.Caption := 'Серийный номер';
    Columns[2].Title.Alignment := taCenter;
    Columns[2].Width := 180;

    Columns[3].Title.Caption := 'MAC-адрес';
    Columns[3].Title.Alignment := taCenter;
    Columns[3].Width := 180;
  end;

end;

end.
