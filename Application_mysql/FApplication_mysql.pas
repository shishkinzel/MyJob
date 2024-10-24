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
    mni_conn_connect_db: TMenuItem;
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
    btn_ts_one_Start: TBitBtn;
    btn_ts_one_Reset: TBitBtn;
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
    mni_msql_MainOpen: TMenuItem;
    mni_msql_MainSave: TMenuItem;
    mni_msql_OperationWork: TMenuItem;
    mni_msql_internal: TMenuItem;
    mni_msql_DB_server: TMenuItem;
    txt_Title_operationWork: TStaticText;
    mni_conn_Connection: TMenuItem;
    mni_conn_SeparatorOne: TMenuItem;
    mni_conn_DB_internal: TMenuItem;
    btn_ts_two_Start: TBitBtn;
    procedure dtp_ts_ds_one_startChange(Sender: TObject);
    procedure dtp_ts_ds_one_endChange(Sender: TObject);
    procedure btn_ts_one_StartClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_ts_one_ResetClick(Sender: TObject);
    procedure mni_msql_DB_serverClick(Sender: TObject);
    procedure mni_msql_internalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mni_conn_DB_internalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mni_conn_ConnectionClick(Sender: TObject);
  private
    { Private declarations }
    var
    f_operation : Boolean;  // задание режима работы false - с удаленной БД true - автономный
  public
    { Public declarations }
    var
      p_date_start, p_date_end: TDateTime;
  end;

var
  frm_app_mysql: Tfrm_app_mysql;

implementation

uses
  dm_connection, FireDAC.Comp.Client, FireDAC.Comp.BatchMove;

var
  f_table: TFDMemTable;
  f_move: TFDBatchMove;
  f_con_root : TFDConnection;
  f_con_shishkinzel : TFDConnection;

{$R *.dfm}

procedure Tfrm_app_mysql.FormCreate(Sender: TObject);
begin
  f_operation := False;
  p_date_start := Now;
  p_date_end := Now;
end;
// показ формы

procedure Tfrm_app_mysql.FormShow(Sender: TObject);
var
  i: Integer;
begin
  if f_operation then
  begin
    txt_Title_operationWork.Caption := 'Автономный режим работы с БД';
  end
  else
  begin
    txt_Title_operationWork.Caption := 'Режим работы с удаленной БД';
  end;
end;

// соединение с БД
procedure Tfrm_app_mysql.mni_conn_ConnectionClick(Sender: TObject);
var
  i: Integer;
begin
  f_con_root := dm_Application_mysql.con_app_mysql;
  f_con_shishkinzel := dm_Application_mysql.con_app_shishkinzel;
// соединение с БД


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
procedure Tfrm_app_mysql.btn_ts_one_StartClick(Sender: TObject);
var
  i: Integer;
begin
  dm_Application_mysql.fd_g_Date.Params.ParamByName('p_start').Value := p_date_start;
  dm_Application_mysql.fd_g_Date.Params.ParamByName('p_end').Value := p_date_end;
  dm_Application_mysql.fd_g_Date.Open;

end;

procedure Tfrm_app_mysql.btn_ts_one_ResetClick(Sender: TObject);
begin
  dm_Application_mysql.fd_g_Date.Close;
end;
// описание режима работы БД

procedure Tfrm_app_mysql.mni_msql_DB_serverClick(Sender: TObject);
begin
  mni_msql_DB_server.Enabled := False;
  mni_msql_internal.Enabled := True;
  txt_Title_operationWork.Caption := 'Режим работы с удаленной БД';
  f_operation := False;

end;

procedure Tfrm_app_mysql.mni_msql_internalClick(Sender: TObject);
begin
  mni_msql_DB_server.Enabled := True;
  mni_msql_internal.Enabled := False;
  txt_Title_operationWork.Caption := 'Автономный режим работы с БД';
  f_operation := True;
end;
// заполнение таблицы FDMemTable


procedure Tfrm_app_mysql.mni_conn_DB_internalClick(Sender: TObject);
var
  i: Integer;
begin

  f_table := dm_Application_mysql.db_memTab_app_mysql;
  f_move := dm_Application_mysql.fd_move_db_composite_tb;
 // запись в таблицу памяти БД
  f_table.Open;
  f_move.Execute;
 // Активация режима Работы с БД
  mni_conn_DB_internal.Enabled := False;
  mni_msql_OperationWork.Visible := True;
end;

// Закрытие формы
procedure Tfrm_app_mysql.FormClose(Sender: TObject; var Action: TCloseAction);
var
i : Integer;
begin

end;

end.

