﻿unit FApplication_mysql;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Samples.Spin, Vcl.Mask, FireDAC.Stan.StorageJSON,
  FireDAC.Stan.Intf, DBLogDlg, Vcl.CustomizeDlg, Vcl.PlatformDefaultStyleActnCtrls, System.Actions,
  Vcl.ActnList, Vcl.ActnMan;

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
    cbb_app_mysql: TComboBox;            // combobox для наименования устройств
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
    btn_ts_six_reset: TBitBtn;
    btn_ts_six_start: TBitBtn;
    dbnav_ts_six: TDBNavigator;
    ds_ts_six: TDataSource;
    Label1: TLabel;
    lbl_five: TLabel;
    medt_five_start: TMaskEdit;
    medt_five_end: TMaskEdit;
    btn_pn_up_reset: TBitBtn;
    mni_msql_SeparatorOne: TMenuItem;
    mni_msql_ResetWork: TMenuItem;
    dlgSave_File: TSaveDialog;
    dlgOpen_File: TOpenDialog;
    fdjson_app_mysql: TFDStanStorageJSONLink;
    mni_conn_SeparatorTwo: TMenuItem;
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
    procedure ts_oneShow(Sender: TObject);
    procedure ts_sixShow(Sender: TObject);
    procedure btn_ts_six_startClick(Sender: TObject);
    procedure btn_ts_six_resetClick(Sender: TObject);
    procedure mni_msql_ResetWorkClick(Sender: TObject);


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
// _________________________________________________________________________________________________
  csSelect_Table_Date = 'SELECT ROW_NUMBER() OVER (ORDER BY request_date) №,';
  csSelect_Table_Attempt = 'SELECT ROW_NUMBER() OVER (ORDER BY attempt) №,';
  csSelect_Table_Id = 'SELECT ROW_NUMBER() OVER (ORDER BY id_serial) №,';
  csSelect_Table_Device = 'SELECT ROW_NUMBER() OVER (ORDER BY device_name) №,';
  csSelect_Table_mac = 'SELECT ROW_NUMBER() OVER (ORDER BY ethaddr) №,';

// ***************************************************************************************************
  csFrom_Cross = ' FROM db_angtel_composite.db_composite_tb CROSS JOIN (SELECT @cnt := 0) AS dummy ';

// ***************************************************************************************************
  csFrom_Table = ' FROM memTable ';

  // константы для сортировки
  csWhereBetween = 'WHERE request_date BETWEEN "';
  csWhereDeviceName = 'WHERE device_name =  "';
  csWhereAttempt = 'WHERE attempt BETWEEN " ';
  csWhereSerial = 'WHERE id_serial BETWEEN "';
  csWhereMac = 'WHERE ethaddr BETWEEN "';

  csAnd = '" and "';
  // константы для упорядочивания
  csOrderDate = '" ORDER BY request_date ;';
  csOrderAttempt = '" ORDER BY attempt ;';
  csOrderSerial = '" ORDER BY id_serial ;';
  csOrderMac = '" ORDER BY ethaddr ;';
  csOrderNum = '" ORDER BY "№" ;';
{
--------------конец блока динамического запроса ----------------------------------------------------
}
var
  f_table: TFDMemTable;
  f_move: TFDBatchMove;
  f_con_user : TFDConnection;
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
// режим соединения с БД
  if f_operation then
  begin
    txt_Title_operationWork.Caption := 'Автономный режим работы с БД';
  end
  else
  begin
    txt_Title_operationWork.Caption := 'Режим работы с удаленной БД';
  end;

 //    Необходимо поработать со свойствами ofLine and onLine
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


  pgc_app_mysql.ActivePageIndex := 0;          // установка на первую вкладку
end;

// соединение с БД
procedure Tfrm_app_mysql.mni_conn_ConnectionClick(Sender: TObject);
var
  f_file: TextFile;
  f_min_att, f_max_att: string;
begin

  mni_conn_Connection.Enabled := False;

// Чтение начальных даных
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
    // переключение запросов
  ds_ts_one.DataSet := dm_Application_mysql.fd_g_Select_one;
  ds_ts_two.DataSet := dm_Application_mysql.fd_g_Select_two;
  ds_ts_three.DataSet := dm_Application_mysql.fd_g_Select_three;
  ds_ts_four.DataSet := dm_Application_mysql.fd_g_Select_four;
  ds_ts_five.DataSet := dm_Application_mysql.fd_g_Select_five;
  ds_ts_six.DataSet := dm_Application_mysql.fd_g_Select_six;
end;

procedure Tfrm_app_mysql.mni_msql_internalClick(Sender: TObject);
begin
  mni_msql_DB_server.Enabled := True;
  mni_msql_internal.Enabled := False;
  txt_Title_operationWork.Caption := 'Автономный режим работы с БД';
  f_operation := True;
  // переключение запросов
  ds_ts_one.DataSet := dm_Application_mysql.fd_g_Select_mt_one;
  ds_ts_two.DataSet := dm_Application_mysql.fd_g_Select_mt_two;
  ds_ts_three.DataSet := dm_Application_mysql.fd_g_Select_mt_three;
  ds_ts_four.DataSet := dm_Application_mysql.fd_g_Select_mt_four;
  ds_ts_five.DataSet := dm_Application_mysql.fd_g_Select_mt_five;
  ds_ts_six.DataSet := dm_Application_mysql.fd_g_Select_mt_six;
end;


 {
  Диалоги открытия и закрытия файла БД
 }
// *************************************************************************************************
procedure Tfrm_app_mysql.mni_msql_MainOpenClick(Sender: TObject);
var
f_path_fds : string;
begin
  if dlgOpen_File.Execute() then
  begin
   f_path_fds := dlgOpen_File.FileName;
   dm_Application_mysql.db_memTab_app_mysql.Close;
   dm_Application_mysql.db_memTab_app_mysql.Open;
   dm_Application_mysql.db_memTab_app_mysql.LoadFromFile(f_path_fds, sfJSON);
  end;
end;

procedure Tfrm_app_mysql.mni_msql_MainSaveClick(Sender: TObject);
var
  f_path_fds: string;
begin
  if dlgSave_File.Execute() then
  begin
     f_path_fds := dlgSave_File.FileName;
  end;
  if  dm_Application_mysql.db_memTab_app_mysql.RecordCount <> 0 then
  begin
       dm_Application_mysql.db_memTab_app_mysql.SaveToFile(f_path_fds, sfJSON);
  end
  else
  begin
    ShowMessage('Таблица пуста');
  end;

end;


//**************************************************************************************************

{
   СЕКЦИЯ ВЫБОРОК  #################################################################################
}
// 1. выборка по дате обновления  ------------------------------------------------------------------
procedure Tfrm_app_mysql.ts_oneShow(Sender: TObject);
begin
  dm_Application_mysql.fd_g_All_row.SQL.Clear;
end;

procedure Tfrm_app_mysql.btn_ts_one_StartClick(Sender: TObject);
var
  p_start, p_end : string;
  f_sql: string;
begin
 // проверка на валидность ввода дат
  if p_date_start > p_date_end then
  begin
    ShowMessage('Введите правильный диапазон');
    Abort
  end;
    // гасим и зажигаем необходимые кнопки
  btn_ts_one_Start.Enabled := False;
  btn_ts_one_Reset.Enabled := True;

  p_start := FormatDateTime('YYYY-MM-DD', p_date_start);
  p_end := FormatDateTime('YYYY-MM-DD', p_date_end);
  // формирования запроса
  if f_operation then
  begin
       dm_Application_mysql.con_MemTable.Connected := True;
       dm_Application_mysql.fd_loc_sql_Table.Active := True;

    f_sql := csSelect_Table_Date + f_row_select + csFrom_Table + csWhereBetween + p_start + csAnd + p_end + '";';

    with dm_Application_mysql.fd_g_Select_mt_one do
    begin
      SQL.Clear;
      SQL.Add(f_sql);
      Prepare;
      Open;
    end;
  end
  else
  begin
    f_sql := csSelect + f_row_select + csFrom_Cross + csWhereBetween + p_start + csAnd + p_end + csOrderDate;
    with dm_Application_mysql.fd_g_Select_One do
    begin
      SQL.Clear;
      SQL.Add(f_sql);
      Prepare;
      Open;
    end;
  end;
end;


procedure Tfrm_app_mysql.btn_ts_one_ResetClick(Sender: TObject);
begin
  f_row_select := '';
  dm_Application_mysql.fd_g_Select_One.Close;
  dm_Application_mysql.fd_g_Select_mt_one.Close;
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
  dm_Application_mysql.fd_g_All_row.SQL.Clear;
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

     if f_operation then
  begin
       dm_Application_mysql.con_MemTable.Connected := True;
       dm_Application_mysql.fd_loc_sql_Table.Active := True;

    f_sql := csSelect_Table_Device + f_row_select + csFrom_Table + csWhereDeviceName + f_name_device + '" ;';  // работа с запросом
    with dm_Application_mysql.fd_g_Select_mt_two do
    begin
      SQL.Clear;
      SQL.Add(f_sql);
      Prepare;
      Open;
    end;
  end
  else
  begin
    f_sql := csSelect + f_row_select + csFrom_Cross + csWhereDeviceName + f_name_device + csOrderDate;
    with dm_Application_mysql.fd_g_Select_Two do
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
  dm_Application_mysql.fd_g_Select_Two.Close;
  dm_Application_mysql.fd_g_Select_mt_Two.Close;
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
  dm_Application_mysql.fd_g_All_row.SQL.Clear;
  if se_startAttempt.CanFocus then
    se_startAttempt.SetFocus;
end;

procedure Tfrm_app_mysql.btn_ts_three_startClick(Sender: TObject);
var
  f_sql: string;
  p_att_start, p_att_end: string;
begin
 // проверка на валидность ввода попыток
  if se_startAttempt.Value > se_endAttempt.Value then
  begin
    ShowMessage('Введите правильный диапазон');
    Abort
  end;
 // гасим и зажигаем необходимые кнопки
  btn_ts_three_start.Enabled := False;
  btn_ts_three_Reset.Enabled := True;

  p_att_start := (se_startAttempt.Value).ToString;
  p_att_end := (se_endAttempt.Value).ToString;
 // формирования запроса
  if f_operation then
  begin
    dm_Application_mysql.con_MemTable.Connected := True;
    dm_Application_mysql.fd_loc_sql_Table.Active := True;
    f_sql := csSelect_Table_Attempt + f_row_select + csFrom_Table + csWhereAttempt + p_att_start + csAnd + p_att_end + '";';
    with dm_Application_mysql.fd_g_Select_mt_Three do
    begin
      SQL.Clear;
      SQL.Add(f_sql);
      Prepare;
      Open;
    end;
  end
  else
  begin
    f_sql := csSelect + f_row_select + csFrom_Cross + csWhereAttempt + p_att_start + csAnd + p_att_end + csOrderAttempt;
    with dm_Application_mysql.fd_g_Select_Three do
    begin
      SQL.Clear;
      SQL.Add(f_sql);
      Prepare;
      Open;
    end;
  end;

end;

procedure Tfrm_app_mysql.btn_ts_three_ResetClick(Sender: TObject);
begin
  f_row_select := '';
  dm_Application_mysql.fd_g_Select_Three.Close;
   dm_Application_mysql.fd_g_Select_mt_Three.Close;
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
  dm_Application_mysql.fd_g_All_row.SQL.Clear;
  if medt_four_start.CanFocus then
    medt_four_start.SetFocus;
end;

procedure Tfrm_app_mysql.btn_ts_four_startClick(Sender: TObject);
var
  i: integer;
  tmp, tmp1: string;
  f_sql: string;
begin
 // проверка на валидность ввода попыток
//  if medt_four_start.Text > medt_four_end.Text then
//  begin
//    ShowMessage('Введите правильный диапазон');
//    Abort
//  end;
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

  if p_id_start > p_id_end then
    p_id_end := p_id_start;

 // формирования запроса
  if f_operation then
  begin
    f_sql := csSelect_Table_Id + f_row_select + csFrom_Table + csWhereSerial + p_id_start + csAnd + p_id_end + '";';
    with dm_Application_mysql.fd_g_Select_mt_Four do
    begin
      SQL.Clear;
      SQL.Add(f_sql);
      Prepare;
      Open;
    end;
  end
  else
  begin
    f_sql := csSelect + f_row_select + csFrom_Cross + csWhereSerial + p_id_start + csAnd + p_id_end + csOrderSerial;
    with dm_Application_mysql.fd_g_Select_Four do
    begin
      SQL.Clear;
      SQL.Add(f_sql);
      Prepare;
      Open;
    end;
  end;

end;

procedure Tfrm_app_mysql.btn_ts_four_ResetClick(Sender: TObject);
begin
  f_row_select := '';
  dm_Application_mysql.fd_g_Select_Four.Close;
  dm_Application_mysql.fd_g_Select_mt_Four.Close;
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
  dm_Application_mysql.fd_g_All_row.SQL.Clear;
  if medt_five_start.CanFocus then
  begin
    medt_five_start.SetFocus;
  end;
end;

procedure Tfrm_app_mysql.btn_ts_five_startClick(Sender: TObject);
var
  i: Integer;
  p_start_mac, p_end_mac: string;
  f_sql: string;
begin
  p_start_mac := medt_five_start.Text;
  p_end_mac := medt_five_end.Text;

  if p_start_mac > p_end_mac then
  begin
    p_end_mac := p_start_mac;
  end;
  // гасим и зажигаем необходимые кнопки
  btn_ts_five_start.Enabled := False;
  btn_ts_five_reset.Enabled := True;
   // формирования запроса
  if f_operation then
  begin
    f_sql := csSelect_Table_mac + f_row_select + csFrom_Table + csWhereMac + p_start_mac + csAnd + p_end_mac +  '";';
    with dm_Application_mysql.fd_g_Select_mt_Five do
    begin
      SQL.Clear;
      SQL.Add(f_sql);
      Prepare;
      Open;
    end;
  end
  else
  begin
    f_sql := csSelect + f_row_select + csFrom_Cross + csWhereMac + p_start_mac + csAnd + p_end_mac + csOrderMac;
    with dm_Application_mysql.fd_g_Select_Five do
    begin
      SQL.Clear;
      SQL.Add(f_sql);
      Prepare;
      Open;
    end;
  end;

end;

procedure Tfrm_app_mysql.btn_ts_five_resetClick(Sender: TObject);
begin
  f_row_select := '';
  dm_Application_mysql.fd_g_Select_Five.Close;
  dm_Application_mysql.fd_g_Select_mt_Five.Close;
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

procedure Tfrm_app_mysql.ts_sixShow(Sender: TObject);
begin
  if btn_ts_six_Start.CanFocus then
    btn_ts_six_Start.SetFocus;
end;

procedure Tfrm_app_mysql.btn_ts_six_startClick(Sender: TObject);
var
  i: Integer;
  p_row, p_start, p_end: string;
  f_sql: string;
begin
   // гасим и зажигаем необходимые кнопки
  btn_ts_six_start.Enabled := False;
  btn_ts_six_reset.Enabled := True;
   // формирования запроса
  if f_operation then
  begin
    dm_Application_mysql.con_MemTable.Connected := True;
    dm_Application_mysql.fd_loc_sql_Table.Active := True;
    f_sql := csSelect_Table_Id + f_row_select + csFrom_Table + ';';
    with dm_Application_mysql.fd_g_Select_mt_six do
    begin
      SQL.Clear;
      SQL.Add(f_sql);
      Prepare;
      Open;
    end;
  end
  else
  begin
    f_sql := csSelect + f_row_select + csFrom_Cross + ';';
    with dm_Application_mysql.fd_g_Select_six do
    begin
      SQL.Clear;
      SQL.Add(f_sql);
      Prepare;
      Open;
    end;
  end;

end;

procedure Tfrm_app_mysql.btn_ts_six_resetClick(Sender: TObject);
begin
  f_row_select := '';
  dm_Application_mysql.fd_g_Select_six.Close;
  dm_Application_mysql.fd_g_Select_mt_six.Close;

   // гасим и зажигаем необходимые кнопки
  btn_ts_six_start.Enabled := True;
  btn_ts_six_reset.Enabled := False;
  // активация панели выбора столбцов
  pnl_Main.Enabled := False;
  pnl_down.Enabled := True;

end;


{------------------------------------------------------------------------------------------------------------------------
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
  pgc_app_mysql.ActivePageIndex := 0;            // посмотреть нужно ли направлять на первую вкладку??????
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

//   Режимы работы БД
procedure Tfrm_app_mysql.mni_conn_DB_internalClick(Sender: TObject);
var
i : Integer;
begin
 // Активация режима Работы с БД
  mni_conn_DB_internal.Enabled := False;
  mni_msql_OperationWork.Visible := True;
end;

//  Отмена режима работы
procedure Tfrm_app_mysql.mni_msql_ResetWorkClick(Sender: TObject);
begin
   // Деактивация режима Работы с БД
  mni_conn_DB_internal.Enabled := True;
  mni_msql_OperationWork.Visible := False;
end;

// Закрытие формы
procedure Tfrm_app_mysql.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin


end;

end.

