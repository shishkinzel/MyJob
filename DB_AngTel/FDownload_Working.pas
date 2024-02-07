unit FDownload_Working;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Menus;

type
  Tfrm_Download_Working = class(TForm)
    pnl_Up: TPanel;
    pnl_Main: TPanel;
    pnl_Down: TPanel;
    spl_Up: TSplitter;
    spl_Down: TSplitter;
    dbG_Working: TDBGrid;
    dbnav_Working: TDBNavigator;
    ds_Working: TDataSource;
    mm_Working: TMainMenu;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Download_Working: Tfrm_Download_Working;

implementation

uses
  FMain, FdbMain;

{$R *.dfm}

procedure Tfrm_Download_Working.FormCreate(Sender: TObject);
begin
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
