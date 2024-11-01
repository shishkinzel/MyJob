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
    chk_device_name: TCheckBox;
    chk_id_serial: TCheckBox;
    chk_ethaddr: TCheckBox;
    chk_device_version: TCheckBox;
    chk_attempt: TCheckBox;
    chk_request_date: TCheckBox;
    chk_original_version: TCheckBox;
    chk_proposed_version: TCheckBox;
    chk_device_selector: TCheckBox;
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
    mni_msql_File_SeparatorOne: TMenuItem;
    mni_msql_File_Reset: TMenuItem;
    dlgOpen_File: TOpenDialog;
    dlgSave_File: TSaveDialog;
    ts_five: TTabSheet;
    pnl_ts_five: TPanel;
    StaticText1: TStaticText;
    btn_ts_five_reset: TBitBtn;
    btn_ts_five_start: TBitBtn;
    dbnav_ts_five: TDBNavigator;
    dbG_ts_five: TDBGrid;
    ds_ts_five: TDataSource;
    btn_down_select: TBitBtn;
    ts_six: TTabSheet;
    dbG_ts_six: TDBGrid;
    Panel4: TPanel;
    StaticText2: TStaticText;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dbnav_ts_six: TDBNavigator;
    ds_ts_six: TDataSource;
    Label1: TLabel;
    lbl_five: TLabel;
    medt_five_start: TMaskEdit;
    medt_five_end: TMaskEdit;
    btn_pn_up_reset: TBitBtn;
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
    procedure mni_msql_MainOpenClick(Sender: TObject);
    procedure mni_msql_MainSaveClick(Sender: TObject);
    procedure btn_ts_two_StartClick(Sender: TObject);
    procedure btn_ts_two_ResetClick(Sender: TObject);
    procedure btn_ts_five_startClick(Sender: TObject);
    procedure btn_ts_five_resetClick(Sender: TObject);
    procedure chk_AllClick(Sender: TObject);
    procedure btn_down_selectClick(Sender: TObject);
    procedure medt_five_startKeyPress(Sender: TObject; var Key: Char);
    procedure ts_fiveShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ts_fourShow(Sender: TObject);
    procedure btn_pn_up_resetClick(Sender: TObject);
    procedure ts_threeShow(Sender: TObject);
    procedure ts_twoShow(Sender: TObject);
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

  const
  csKey = 'id_key as № ';
  csDeviceName = 'device_name "Наименование устройства" ';
  csDeviceSelector = 'device_selector  "Состав модуля"';
  csIDSerial = 'id_serial "Серийный номер"';
  csethaddr = 'ethaddr as "Физический адрес"';
  csDeviceVersion = 'device_version "Начальная версия"';
  csAttempt = 'attempt "Номер попытки"';
  csRequestData = 'request_date "Дата"';
  csOriginalVersion = 'original_version "Текущая версия"';
  csProposedVersion = 'proposed_version "Предложеная версия"';

// константы для динамического запроса *************************************************************
  csSelect = 'SELECT (@cnt := @cnt + 1) "№",';
  csFrom_Cross = ' FROM db_angtel_composite.db_composite_tb CROSS JOIN (SELECT @cnt := 0) AS dummy ';
  // константы для сортировки
  csWhereBetween = 'WHERE request_date BETWEEN "';
  csWhereDeviceName = 'WHERE device_name =  "';
  csAnd = '" and "';
  csOrderDate = '" ORDER BY request_date ;';
{
--------------конец блока динамического запроса ----------------------------------------------------
}
var
  f_table: TFDMemTable;
  f_move: TFDBatchMove;
  f_con_root : TFDConnection;
  f_con_shishkinzel : TFDConnection;
  f_writer_name : TFDBatchMoveTextWriter;
  f_row_select : string;
  flag_selectRow : Boolean;    // выбрать все - True
{$R *.dfm}
procedure Tfrm_app_mysql.FormCreate(Sender: TObject);
begin
// начальные установки
  f_operation := False;
  flag_selectRow := True;
  f_row_select := '';
  p_date_start := Now;
  p_date_end := Now;
  dtp_ts_ds_one_start.Date := Now;
  dtp_ts_ds_one_end.Date := Now;
  f_streem_name := TMemoryStream.Create;
end;

// переход по нажатию кнопки "Ввод" - enter
procedure Tfrm_app_mysql.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
    FindNextControl(ActiveControl, True, True, false).SetFocus;
end;

// показ формы
procedure Tfrm_app_mysql.FormShow(Sender: TObject);
var
  i: Integer;
  f_file: TextFile;
  f_min_att, f_max_att: string;
begin
  // работаем с фокусом ввода
  if btn_down_select.CanFocus then
    btn_down_select.SetFocus;

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
  //  установка выбор наименование устройства в первую позицию
  cbb_app_mysql.ItemIndex := 1;
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
{     Выбор начальной и конечной даты выборки---------------------------------------------------------------------------
}
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
{***********************************************************************************************************************
}

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


 {
  Диалоги открытия и закрытия файла БД
 }
// *************************************************************************************************
procedure Tfrm_app_mysql.mni_msql_MainOpenClick(Sender: TObject);
begin
  if dlgOpen_File.Execute() then
  begin
    ShowMessage('Открываем диалог открытия файла');
  end;
end;

procedure Tfrm_app_mysql.mni_msql_MainSaveClick(Sender: TObject);
begin
  if dlgSave_File.Execute() then
  begin
    ShowMessage('Открываем диалог сохранения файла');
  end;
end;

//**************************************************************************************************

{
   СЕКЦИЯ ВЫБОРОК  #################################################################################
}
// 1. выборка по дате обновления  ------------------------------------------------------------------
procedure Tfrm_app_mysql.btn_ts_one_StartClick(Sender: TObject);
var
  p_start, p_end : string;
  f_sql : string;
begin
  // гасим и зажигаем необходимые кнопки
  btn_ts_one_Start.Enabled := False;
  btn_ts_one_Reset.Enabled := True;

  // формирования запроса
  if flag_selectRow then
  begin
    dm_Application_mysql.fd_g_Date.Params.ParamByName('p_start').Value := p_date_start;
    dm_Application_mysql.fd_g_Date.Params.ParamByName('p_end').Value := p_date_end;
    dm_Application_mysql.fd_g_Date.Open;
  end
  else     // формирование динамического запроса
  begin
    // передподключаем источник данных dateset
    ds_ts_one.DataSet := dm_Application_mysql.fd_g_All_row;
      p_start := FormatDateTime( 'YYYY-MM-DD', p_date_start);
      p_end   := FormatDateTime( 'YYYY-MM-DD', p_date_end);
    f_sql := csSelect + f_row_select + csFrom_Cross + csWhereBetween + p_start  + csAnd + p_end + csOrderDate;
  // формируем sql - запрос
     with dm_Application_mysql.fd_g_All_row do
     begin
       SQL.Clear;
       SQL.Add(f_sql);
       Prepare;
       Open();
     end;

  end;

end;

procedure Tfrm_app_mysql.btn_ts_one_ResetClick(Sender: TObject);
begin
  f_row_select := '';
   ds_ts_one.DataSet := dm_Application_mysql.fd_g_Date;
  dm_Application_mysql.fd_g_Date.Close;
  dm_Application_mysql.fd_g_All_row.Close;;
  // гасим и зажигаем необходимые кнопки
  btn_ts_one_Start.Enabled := True;
  btn_ts_one_Reset.Enabled := False;

    // активация панели выбора столбцов
  pnl_Main.Enabled := False;
  pnl_down.Enabled := True;
end;
//**************************************************************************************************

// 2. выборка по наименованию изделия --------------------------------------------------------------

    // установить фокус на выбор по наименованию устройства

procedure Tfrm_app_mysql.ts_twoShow(Sender: TObject);
begin

  if cbb_app_mysql.CanFocus then
  begin
    cbb_app_mysql.SetFocus;
  end;

end;

procedure Tfrm_app_mysql.btn_ts_two_StartClick(Sender: TObject);
var
  f_sql : string;
  f_name_device : string;
  f_name_device_row : string;
begin
   // гасим и зажигаем необходимые кнопки
  btn_ts_two_Start.Enabled := False;
  btn_ts_two_Reset.Enabled := True;


  f_name_device := cbb_app_mysql.Text;

  Fetch(f_name_device, '"');
  f_name_device := Fetch(f_name_device, '"');

  if f_name_device = '' then
  begin
    ShowMessage('Выберете наименование устройства');
    Abort;
  end;
  // формирования запроса
  if flag_selectRow then
  begin
  dm_Application_mysql.fd_g_device_name.ParamByName('p_name').Value := f_name_device;
  dm_Application_mysql.fd_g_device_name.Open;
  end
  else     // формирование динамического запроса
  begin
    // передподключаем источник данных dateset
    ds_ts_two.DataSet := dm_Application_mysql.fd_g_All_row;
    f_sql := csSelect + f_row_select + csFrom_Cross + csWhereDeviceName + f_name_device + csOrderDate;
   // формируем sql - запрос
    with dm_Application_mysql.fd_g_All_row do
    begin
      SQL.Clear;
      SQL.Add(f_sql);
      Prepare;
      Open();
    end;
  end;
end;

procedure Tfrm_app_mysql.btn_ts_two_ResetClick(Sender: TObject);
var
  i: Integer;
begin
  f_row_select := '';
  ds_ts_two.DataSet := dm_Application_mysql.fd_g_device_name;
  dm_Application_mysql.fd_g_device_name.Close;
  dm_Application_mysql.fd_g_All_row.Close;
  // гасим и зажигаем необходимые кнопки
  btn_ts_two_Start.Enabled := True;
  btn_ts_two_Reset.Enabled := False;


     // активация панели выбора столбцов
  pnl_Main.Enabled := False;
  pnl_down.Enabled := True;
end;
//**********************************************************************************************************************
// 3. выборка по количеству попыток ------------------------------------------------------------------------------------

  // установить фокус на выбор попыток
procedure Tfrm_app_mysql.ts_threeShow(Sender: TObject);
begin
  if se_startAttempt.CanFocus then
    se_startAttempt.SetFocus;
end;

procedure Tfrm_app_mysql.btn_ts_three_startClick(Sender: TObject);
var
  p_att_start, p_att_end: Integer;
begin
 // гасим и зажигаем необходимые кнопки
  btn_ts_three_start.Enabled := False;
  btn_ts_three_Reset.Enabled := True;
 // формирования запроса
  if flag_selectRow then
  begin
    dm_Application_mysql.fd_g_range_attempt.Params.ParamByName('p_start').Value := se_startAttempt.Value;
    dm_Application_mysql.fd_g_range_attempt.Params.ParamByName('p_end').Value := se_endAttempt.Value;
    dm_Application_mysql.fd_g_range_attempt.Open;
  end
  else     // формирование динамического запроса
  begin

  end;
end;

procedure Tfrm_app_mysql.btn_ts_three_ResetClick(Sender: TObject);
begin
  f_row_select := '';
  dm_Application_mysql.fd_g_range_attempt.Close;
   // гасим и зажигаем необходимые кнопки
  btn_ts_three_start.Enabled := True;
  btn_ts_three_Reset.Enabled := False;
    // активация панели выбора столбцов
  pnl_Main.Enabled := False;
  pnl_down.Enabled := True;
end;
//**********************************************************************************************************************
// 4. выборка по серийному номеру --------------------------------------------------------------------------------------

  // установить фокус на ввод серийного номера

procedure Tfrm_app_mysql.ts_fourShow(Sender: TObject);
begin
  begin
    if medt_four_start.CanFocus then
      medt_four_start.SetFocus;
  end;
end;

procedure Tfrm_app_mysql.btn_ts_four_startClick(Sender: TObject);
var
  i: integer;
  tmp, tmp1: string;
begin
 // гасим и зажигаем необходимые кнопки
  btn_ts_four_start.Enabled := False;
  btn_ts_four_Reset.Enabled := True;

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
  if flag_selectRow then
  begin
    dm_Application_mysql.fd_g_ID.Params.ParamByName('p_start').Value := p_id_start;
    dm_Application_mysql.fd_g_ID.Params.ParamByName('p_end').Value := p_id_end;
    dm_Application_mysql.fd_g_ID.Open;
  end
  else     // формирование динамического запроса
  begin

  end;

end;

procedure Tfrm_app_mysql.btn_ts_four_ResetClick(Sender: TObject);
begin
  f_row_select := '';
  dm_Application_mysql.fd_g_ID.Close;
    // гасим и зажигаем необходимые кнопки
  btn_ts_four_start.Enabled := True;
  btn_ts_four_Reset.Enabled := False;
    // активация панели выбора столбцов
  pnl_Main.Enabled := False;
  pnl_down.Enabled := True;
end;
//**********************************************************************************************************************

//**********************************************************************************************************************

// 5. выборка физического адреса---------------------------------------------------------------------------------------------
  // установить фокус на ввод физического адреса
procedure Tfrm_app_mysql.ts_fiveShow(Sender: TObject);
begin
   if medt_five_start.CanFocus then
  begin
    medt_five_start.SetFocus;
  end;
end;

procedure Tfrm_app_mysql.btn_ts_five_startClick(Sender: TObject);
var
  i: Integer;
  p_row, p_start, p_end : string;
  p_sql : string;

begin
 // гасим и зажигаем необходимые кнопки
  btn_ts_five_start.Enabled := False;
  btn_ts_five_reset.Enabled := True;
   // формирования запроса
  if flag_selectRow then
  begin
  dm_Application_mysql.fd_g_Date.Params.ParamByName('p_start').Value := p_date_start;
  dm_Application_mysql.fd_g_Date.Params.ParamByName('p_end').Value := p_date_end;
  dm_Application_mysql.fd_g_Date.Open;
  end
  else     // формирование динамического запроса
  begin

  end;

end;

procedure Tfrm_app_mysql.btn_ts_five_resetClick(Sender: TObject);
begin
  f_row_select := '';
  dm_Application_mysql.fd_g_select_row.Close;
  // гасим и зажигаем необходимые кнопки
  btn_ts_five_start.Enabled := True;
  btn_ts_five_reset.Enabled := False;
  // активация панели выбора столбцов
  pnl_Main.Enabled := False;
  pnl_down.Enabled := True;

end;
// ограничение ввода символов в mac-адрес
procedure Tfrm_app_mysql.medt_five_startKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', 'a'..'f', 'A'..'F']) then
    Key := #0;
end;


{
------------------------------------------------------------------------------------------------------------------------
}
//**********************************************************************************************************************

// 6. Вывод полной таблицы ---------------------------------------------------------------------------------------------
  // установить фокус на ввод физического адреса

//procedure Tfrm_app_mysql.btn_ts_five_startClick(Sender: TObject);
//var
//  i: Integer;
//  p_row, p_start, p_end : string;
//  p_sql : string;
//
//begin
// // гасим и зажигаем необходимые кнопки
//  btn_ts_five_start.Enabled := False;
//  btn_ts_five_reset.Enabled := True;
//   // формирования запроса
//  if flag_selectRow then
//  begin
//  dm_Application_mysql.fd_g_Date.Params.ParamByName('p_start').Value := p_date_start;
//  dm_Application_mysql.fd_g_Date.Params.ParamByName('p_end').Value := p_date_end;
//  dm_Application_mysql.fd_g_Date.Open;
//  end
//  else     // формирование динамического запроса
//  begin
//
//  end;
//
//end;

//procedure Tfrm_app_mysql.btn_ts_five_resetClick(Sender: TObject);
//begin
//  dm_Application_mysql.fd_g_select_row.Close;
//  // гасим и зажигаем необходимые кнопки
//  btn_ts_five_start.Enabled := True;
//  btn_ts_five_reset.Enabled := False;
//  // активация панели выбора столбцов
//  pnl_Main.Enabled := False;
//  pnl_down.Enabled := True;
//
//end;

{
------------------------------------------------------------------------------------------------------------------------
}
// Выборка стобцов таблицы
procedure Tfrm_app_mysql.chk_AllClick(Sender: TObject);
var
  i: Integer;
begin
  if chk_All.Checked then
  begin
// флаг работы со столбцами
   flag_selectRow := True;

  // деактивируем checkbox
    chk_device_name.Enabled := False;
    chk_id_serial.Enabled := False;
    chk_ethaddr.Enabled := False;
    chk_device_version.Enabled := False;
    chk_attempt.Enabled := False;
    chk_request_date.Enabled := False;
    chk_original_version.Enabled := False;
    chk_proposed_version.Enabled := False;
    chk_device_selector.Enabled := False;
    // установки
    chk_device_name.Checked := True;
    chk_id_serial.Checked := True;
    chk_ethaddr.Checked := True;
    chk_device_version.Checked := True;
    chk_attempt.Checked := True;
    chk_request_date.Checked := True;
    chk_original_version.Checked := True;
    chk_proposed_version.Checked := True;
    chk_device_selector.Checked := True;
  end
  else
  begin
  // флаг работы со столбцами
   flag_selectRow := False;

  // активируем checkbox
    chk_device_name.Enabled := True;
    chk_id_serial.Enabled := True;
    chk_ethaddr.Enabled := True;
    chk_device_version.Enabled := True;
    chk_attempt.Enabled := True;
    chk_request_date.Enabled := True;
    chk_original_version.Enabled := True;
    chk_proposed_version.Enabled := True;
    chk_device_selector.Enabled := True;
    // установки
    chk_device_name.Checked := True;
    chk_id_serial.Checked := False;
    chk_ethaddr.Checked := False;
    chk_device_version.Checked := False;
    chk_attempt.Checked := False;
    chk_request_date.Checked := False;
    chk_original_version.Checked := False;
    chk_proposed_version.Checked := False;
    chk_device_selector.Checked := False;
  end;
end;


// обработка нажатия кнопки выбор полей
procedure Tfrm_app_mysql.btn_down_selectClick(Sender: TObject);
var
  i: Integer;
  ff_stringlist: TStringList;
  f_length_row : Integer;
begin

  ff_stringlist := TStringList.Create;
  pnl_down.Enabled := False;
  pnl_Main.Enabled := True;
// выборка по chechbox
  for i := 0 to Self.ComponentCount - 1 do
  begin
    if self.Components[i] is TCheckBox then
    begin
      if (self.Components[i] as TCheckBox).Checked then
      begin
        ff_stringlist.Add((self.Components[i] as TCheckBox).Name);
        case (self.Components[i] as TCheckBox).Tag of
          101:
            begin
              f_row_select := f_row_select + csDeviceName + ',';
            end;
          102:
            begin
              f_row_select := f_row_select + csIDSerial + ',';
            end;
          103:
            begin
              f_row_select := f_row_select + csethaddr + ',';
            end;
          104:
            begin
              f_row_select := f_row_select + csDeviceVersion + ',';
            end;
          105:
            begin
              f_row_select := f_row_select + csAttempt + ',';
            end;
          106:
            begin
              f_row_select := f_row_select + csRequestData + ',';
            end;
          107:
            begin
              f_row_select := f_row_select + csOriginalVersion + ',';
            end;
          108:
            begin
              f_row_select := f_row_select + csProposedVersion + ',';
            end;
          109:
            begin
              f_row_select := f_row_select + csDeviceSelector + ',';
            end;

        end;
      end;
    end;
  end;
  // преобразуем строку столбцов - убираем последнию запятую
  SetLength(f_row_select, Length(f_row_select) - 1);

  ShowMessage('Столбцы выбраны');
  // направление фокуса - попытка на TPageControl
  pgc_app_mysql.ActivePageIndex := 0;
  if dtp_ts_ds_one_start.CanFocus then
    dtp_ts_ds_one_start.SetFocus;
end;
// кнопка общего сброса
procedure Tfrm_app_mysql.btn_pn_up_resetClick(Sender: TObject);
var
  i: Integer;
begin
  pnl_down.Enabled := True;
  pnl_Main.Enabled := False;
  btn_ts_one_ResetClick(nil);
  btn_ts_two_ResetClick(nil);
  btn_ts_three_ResetClick(nil);
  btn_ts_four_ResetClick(nil);
  btn_ts_five_ResetClick(nil);
end;

//**************************************************************************************************
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

