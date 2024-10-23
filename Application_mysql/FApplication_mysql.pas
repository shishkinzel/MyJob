unit FApplication_mysql;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrm_app_mysql = class(TForm)
    pnl_up: TPanel;
    mm_app_mysql: TMainMenu;
    pnl_down: TPanel;
    pnl_Main: TPanel;
    mni_msql_File: TMenuItem;
    mni_msql_connect_db: TMenuItem;
    spl_up: TSplitter;
    spl_down: TSplitter;
    pgc_app_mysql: TPageControl;
    ts_one: TTabSheet;
    pnl_ts_one: TPanel;
    dbnav_ts_One: TDBNavigator;
    dbG_ts_one: TDBGrid;
    dtp_ts_ds_one_start: TDateTimePicker;
    dtp_ts_ds_one_end: TDateTimePicker;
    ts_two: TTabSheet;
    dbG_ts_two: TDBGrid;
    dbnav_ts_Two: TDBNavigator;
    Panel1: TPanel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    ts_three: TTabSheet;
    dbG_ts_three: TDBGrid;
    dbnav_ts_Three: TDBNavigator;
    Panel2: TPanel;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    ts_four: TTabSheet;
    dbG_ts_four: TDBGrid;
    dbnav_ts_Four: TDBNavigator;
    Panel3: TPanel;
    DateTimePicker5: TDateTimePicker;
    DateTimePicker6: TDateTimePicker;
    ds_ts_one: TDataSource;
    btn_ts_one: TBitBtn;
    btn_ts_Reset: TBitBtn;
    chk_id_key: TCheckBox;
    chk_device_name: TCheckBox;
    chk_device_selector: TCheckBox;
    chk_id_serial: TCheckBox;
    chk_ethaddr: TCheckBox;
    chk_device_version: TCheckBox;
    chk_attempt: TCheckBox;
    chk_request_date: TCheckBox;
    chk_original_version: TCheckBox;
    chk_proposed_version: TCheckBox;
    chk_All: TCheckBox;
    txt_part_tab: TStaticText;
    ds_ts_two: TDataSource;
    ds_ts_Three: TDataSource;
    ds_ts_Four: TDataSource;
    procedure dtp_ts_ds_one_startChange(Sender: TObject);
    procedure dtp_ts_ds_one_endChange(Sender: TObject);
    procedure btn_ts_oneClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_ts_ResetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      p_date_start, p_date_end: TDateTime;
  end;

var
  frm_app_mysql: Tfrm_app_mysql;

implementation

uses
  dm_connection;

{$R *.dfm}
  procedure Tfrm_app_mysql.FormCreate(Sender: TObject);
begin
 p_date_start := Now;
 p_date_end := Now;
end;

 // выбор начальной даты выборки
procedure Tfrm_app_mysql.dtp_ts_ds_one_startChange(Sender: TObject);
begin
  p_date_start := dtp_ts_ds_one_start.DateTime;
end;


// выбор конечной даты выборки

procedure Tfrm_app_mysql.dtp_ts_ds_one_endChange(Sender: TObject);
begin
  p_date_end := dtp_ts_ds_one_end.DateTime;
end;

// выполнить запрос
procedure Tfrm_app_mysql.btn_ts_oneClick(Sender: TObject);
var
  i: Integer;
begin

  dm_Application_mysql.fd_g_Date.Params.ParamByName('p_start').Value := p_date_start;
  dm_Application_mysql.fd_g_Date.Params.ParamByName('p_end').Value := p_date_end;
  dm_Application_mysql.fd_g_Date.Open;

end;

procedure Tfrm_app_mysql.btn_ts_ResetClick(Sender: TObject);
begin
  dm_Application_mysql.fd_g_Date.Close;
end;

end.



