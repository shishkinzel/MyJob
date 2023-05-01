unit FGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, Data.DB, Vcl.DBCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls;

type
  TfrmGrid = class(TForm)
    pnlTop: TPanel;
    splTop: TSplitter;
    pnlDown: TPanel;
    splDown: TSplitter;
    pnlMain: TPanel;
    dbG_Dev: TDBGridEh;
    dbnav_Dev: TDBNavigator;
    ds_Dev: TDataSource;
    dbnav_DevAll: TDBNavigator;
    ds_DevAll: TDataSource;
    dbG_DevAll: TDBGridEh;
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
  dbG_DevAll.UseMultiTitle := True;
  with dbG_DevAll do
  begin
    Columns[0].Title.Caption := 'Наименование устройства';
    Columns[0].Title.Alignment := taCenter;
    Columns[0].Width := 400;

    Columns[1].Title.Caption := 'Серийный номер|Первый';
    Columns[1].Width := 100;


    Columns[2].Title.Caption := 'Серийный номер|Последний';
    Columns[2].Width := 100;


    Columns[3].Title.Caption := 'MAC-адрес|Первый';
    Columns[3].Width := 120;
    Columns[4].Title.Caption := 'MAC-адрес|Последний';
    Columns[4].Width := 120;


    Columns[5].Title.Caption := 'Дата';
    Columns[5].Width := 100;
  end;

    with dbG_Dev do
  begin
    Columns[0].Title.Caption := 'Наименование устройства';
    Columns[0].Title.Alignment := taCenter;
    Columns[0].Width := 400;

    Columns[1].Title.Caption := 'Серийный номер';
    Columns[1].Title.Alignment := taCenter;
    Columns[1].Width := 100;

    Columns[2].Title.Caption := 'MAC-адрес';
    Columns[2].Title.Alignment := taCenter;
    Columns[2].Width := 120;

  end;



end;

end.
