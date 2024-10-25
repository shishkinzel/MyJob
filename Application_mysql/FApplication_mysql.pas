unit FApplication_mysql;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Samples.Spin, Vcl.Mask;

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
    ts_three: TTabSheet;
    dbG_ts_three: TDBGrid;
    dbnav_ts_Three: TDBNavigator;
    Panel2: TPanel;
    ts_four: TTabSheet;
    dbG_ts_four: TDBGrid;
    dbnav_ts_Four: TDBNavigator;
    Panel3: TPanel;
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
    cbb_app_mysql: TComboBox;
    txt_Title_attempt: TStaticText;
    se_startAttempt: TSpinEdit;
    se_endAttempt: TSpinEdit;
    lbl_start_attempt: TLabel;
    lbl_end_attempt: TLabel;
    btn_ts_two_Reset: TBitBtn;
    btn_ts_three_Reset: TBitBtn;
    btn_ts_three_start: TBitBtn;
    txt_Title_device: TStaticText;
    txt_Title_date: TStaticText;
    lbl_start_date: TLabel;
    lbl_end_date: TLabel;
    txt_Title_id: TStaticText;
    btn_ts_four_Reset: TBitBtn;
    btn_ts_four_start: TBitBtn;
    medt_four_start: TMaskEdit;
    medt_four_end: TMaskEdit;
    lbl_end_id: TLabel;
    lbl_start_id: TLabel;
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
    procedure btn_ts_four_startClick(Sender: TObject);
    procedure btn_ts_four_ResetClick(Sender: TObject);
    procedure btn_ts_three_startClick(Sender: TObject);
    procedure btn_ts_three_ResetClick(Sender: TObject);
  private
    { Private declarations }
    var
    f_operation : Boolean;  // задание режима работы false - с удаленной БД true - автономный
  public
    { Public declarations }
    var
      p_date_start, p_date_end: TDateTime;  // параметры для даты
      p_id_start, p_id_end : string;        // параметры для серийного номера
      f_streem_name : TMemoryStream;

  end;

var
  frm_app_mysql: Tfrm_app_mysql;

implementation

uses
  IdGlobal, dm_connection, FireDAC.Comp.Client, FireDAC.Comp.BatchMove,
  FireDAC.Comp.BatchMove.Text;

var
  f_table: TFDMemTable;
  f_move: TFDBatchMove;
  f_con_root : TFDConnection;
  f_con_shishkinzel : TFDConnection;
  f_writer_name : TFDBatchMoveTextWriter;

{$R *.dfm}
procedure Tfrm_app_mysql.FormCreate(Sender: TObject);
begin
  f_operation := False;
  p_date_start := Now;
  p_date_end := Now;
  f_streem_name := TMemoryStream.Create;
end;
// показ формы

procedure Tfrm_app_mysql.FormShow(Sender: TObject);
var
  i: Integer;
  f_file: TextFile;
  f_min_att, f_max_att: string;
begin
  if f_operation then
  begin
    txt_Title_operationWork.Caption := 'Автономный режим работы с БД';
  end
  else
  begin
    txt_Title_operationWork.Caption := 'Режим работы с удаленной БД';
  end;
  dm_Application_mysql.fd_move_name.Execute;
   // чтение из потока список устройств в БД
  f_streem_name.Position := 0;
  cbb_app_mysql.Items.LoadFromStream(f_streem_name);
  dm_Application_mysql.fd_move_name.Execute;
  f_streem_name.Free;
  // запрос на чтение значений min и max попыток
  dm_Application_mysql.fd_g_attempt.Open();
  f_min_att := dm_Application_mysql.fd_g_attempt.FieldByName('att_min').AsString;
  f_max_att := dm_Application_mysql.fd_g_attempt.FieldByName('att_max').AsString;
  dm_Application_mysql.fd_g_attempt.Close();
  // устанавливаем max и min значения в компонент spinEdit
  se_startAttempt.MinValue := StrToIntDef(f_min_att, -1);
  se_startAttempt.MaxValue := StrToIntDef(f_max_att, -1);
  se_endAttempt.MinValue := StrToIntDef(f_min_att, -1);
  se_endAttempt.MaxValue := StrToIntDef(f_max_att, -1);
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

// выборка по количеству попыток
procedure Tfrm_app_mysql.btn_ts_three_startClick(Sender: TObject);
var
  p_att_start, p_att_end: Integer;
begin
 // формирования запроса
  dm_Application_mysql.fd_g_range_attempt.Params.ParamByName('p_start').Value := se_startAttempt.Value;
  dm_Application_mysql.fd_g_range_attempt.Params.ParamByName('p_end').Value := se_endAttempt.Value;
  dm_Application_mysql.fd_g_range_attempt.Open;
end;

procedure Tfrm_app_mysql.btn_ts_three_ResetClick(Sender: TObject);
begin
  dm_Application_mysql.fd_g_range_attempt.Close;
end;






// выборка по серийному номеру

procedure Tfrm_app_mysql.btn_ts_four_startClick(Sender: TObject);
var
  i: integer;
  tmp, tmp1: string;
begin
 // вытаскиваем первый сериный номер
  tmp := medt_four_start.Text;
  tmp1 := '';
  for i := 0 to 2 do
  begin
    tmp1 := tmp1 + Trim(Fetch(tmp, '_'));
  end;
  p_id_start := tmp1 + tmp;
   // вытаскиваем второй сериный номер
  tmp := medt_four_end.Text;
  tmp1 := '';
  for i := 0 to 2 do
  begin
    tmp1 := tmp1 + Trim(Fetch(tmp, '_'));
  end;
  p_id_end := tmp1 + tmp;
  if p_id_end < p_id_start then
  begin
     p_id_end := p_id_start;
  end;
 // формирования запроса
  dm_Application_mysql.fd_g_ID.Params.ParamByName('p_start').Value := p_id_start;
  dm_Application_mysql.fd_g_ID.Params.ParamByName('p_end').Value := p_id_end;
  dm_Application_mysql.fd_g_ID.Open;

end;

procedure Tfrm_app_mysql.btn_ts_four_ResetClick(Sender: TObject);
begin
   dm_Application_mysql.fd_g_ID.Close;
end;



procedure Tfrm_app_mysql.mni_conn_DB_internalClick(Sender: TObject);
var
  i: Integer;
begin

  f_table := dm_Application_mysql.db_memTab_app_mysql;
  f_move := dm_Application_mysql.fd_move_db_composite_tb;
 // запись в таблицу памяти БД
//  f_table.Open;
//  f_move.Execute;
 // Активация режима Работы с БД
  mni_conn_DB_internal.Enabled := False;
  mni_msql_OperationWork.Visible := True;
end;

// Закрытие формы
procedure Tfrm_app_mysql.FormClose(Sender: TObject; var Action: TCloseAction);
var
i : Integer;
begin
// f_streem_name.Free;
end;

end.

