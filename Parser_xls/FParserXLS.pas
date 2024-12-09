unit FParserXLS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus,
  DParserXLS, expfilter, xlsexport, oofice,    // подсоединеные формы
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.Mask, Vcl.Samples.Spin, FireDAC.Stan.StorageJSON,
  FireDAC.Stan.Intf;

type
  Tfrm_ParserXLS = class(TForm)
    pnl_App: TPanel;
    mm_parserxls: TMainMenu;
    mni_db_specification: TMenuItem;
    spl_app: TSplitter;
    pnl_Down: TPanel;
    spl_down: TSplitter;
    pnl_Main: TPanel;
    pgc_xls: TPageControl;
    ts_one: TTabSheet;
    ts_two: TTabSheet;
    nv_two: TDBNavigator;
    grid_two: TDBGrid;
    ds_two: TDataSource;
    mni_db_job: TMenuItem;
    mni_db_job_file: TMenuItem;
    mni_db_SeparatorOne: TMenuItem;
    mni_db_job_parser: TMenuItem;
    mni_db_sp_file: TMenuItem;
    mni_db_sp_SeparatorOne: TMenuItem;
    mni_db_sp_parser: TMenuItem;
    ds_one: TDataSource;
    nv_one: TDBNavigator;
    grid_one: TDBGrid;
    mni_db_job_open: TMenuItem;
    mni_db_job_save: TMenuItem;
    mni_db_xls_pr_open: TMenuItem;
    mni_db_json_pr_save: TMenuItem;
    mni_db_sp_open: TMenuItem;
    mni_db_sp_save: TMenuItem;
    mni_db_xls_sp_open: TMenuItem;
    mni_db_json_sp_pr_save: TMenuItem;
    dlg_db_job_xls_open: TOpenDialog;
    dlg_db_job_fds_save: TSaveDialog;
    dlg_db_fds_pr_open: TOpenDialog;
    dli_db_fds_pr_save: TSaveDialog;
    dlg_db_sp_xls_open: TOpenDialog;
    dlg_db_sp_fds_save: TSaveDialog;
    dlg_db_sp_pr_open: TOpenDialog;
    dlg_db_sp_pr_save: TSaveDialog;
    mni_db_sp_pr_SeparatorOne: TMenuItem;
    ts_three: TTabSheet;
    nv_three: TDBNavigator;
    grid_three: TDBGrid;
    ds_three: TDataSource;
    mni_db_sp_pr_12: TMenuItem;
    fd_json_link_TMC: TFDStanStorageJSONLink;
    btn_allReset: TBitBtn;
    mni_db_mysql_Job: TMenuItem;
    mni_db_mysql_transmission_tmc: TMenuItem;
    mni_db_mysql_2: TMenuItem;
    mni_db_mysql_SeparatorOne: TMenuItem;
    mni_db_mysql_Clear: TMenuItem;
    mni_db_mysql_clear_tmc: TMenuItem;
    mni_db_mysql_clear_specification: TMenuItem;
    N1: TMenuItem;
    mni_db_translation: TMenuItem;
    mni_db_loel: TMenuItem;
    mni_db_loel_file: TMenuItem;
    mni_db_loel_SeparatorOne: TMenuItem;
    mni_db_loel_open: TMenuItem;
    mni_db_loel_save: TMenuItem;
    dlg_db_loel_open: TOpenDialog;
    dlg_db_loel_save: TSaveDialog;
    lbl_title_find: TLabel;
    btn_find: TBitBtn;
    edt_find: TEdit;
    mni_db_loel_parser: TMenuItem;
    mni_db_loel_pr_open: TMenuItem;
    mni_db_loel_pr_SeparatorOne: TMenuItem;
    mni_db_loel_pr_translation: TMenuItem;
    mni_db_loel_pr_SeparatorTwo: TMenuItem;
    mni_db_loel_pr_save: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mni_db_xls_pr_openClick(Sender: TObject);
    procedure mni_db_json_pr_saveClick(Sender: TObject);
    procedure mni_db_job_openClick(Sender: TObject);
    procedure btn_allResetClick(Sender: TObject);
    procedure mni_db_job_saveClick(Sender: TObject);
    procedure mni_db_jobClick(Sender: TObject);
    procedure mni_db_mysql_clear_tmcClick(Sender: TObject);
    procedure mni_db_mysql_transmission_tmcClick(Sender: TObject);
    procedure mni_db_xls_sp_openClick(Sender: TObject);
    procedure mni_db_json_sp_pr_saveClick(Sender: TObject);
    procedure mni_db_sp_openClick(Sender: TObject);
    procedure mni_db_mysql_clear_specificationClick(Sender: TObject);
    procedure mni_db_translationClick(Sender: TObject);
    procedure mni_db_loel_openClick(Sender: TObject);
    procedure mni_db_loel_saveClick(Sender: TObject);
  private
    { Private declarations }
    const
    f_code_tmc = 'code_tmc.json';
  public
    { Public declarations }
  end;

var
  frm_ParserXLS: Tfrm_ParserXLS;
  XLS: TXLSExporter;
  f_filename_xls: string;
  Animation: TAnimate;
  f_path_code_tmc : string;

implementation
uses
  FireDAC.VCLUI.Script, FireDAC.Comp.BatchMove.Text, FireDAC.Comp.Script, FireDAC.Comp.Client,
  CursorHelper;

{$R *.dfm}

procedure Tfrm_ParserXLS.FormCreate(Sender: TObject);
var
  S : TStringArray;
  tmp : String;
  i,j : Integer;
begin
  // начальные установки
   pgc_xls.ActivePageIndex := 0;       // установка на первую вкладку
  // загрузка таблицы Коды ТМЦ - если она существует
   f_path_code_tmc := ExtractFilePath(Application.ExeName) + 'file_json\' + f_code_tmc;

end;


 // установка размера таблицы при показе формы

procedure Tfrm_ParserXLS.FormShow(Sender: TObject);
begin

  DrawingGridOne(grid_one);
  DrawingGridTwo(grid_two);
  DrawingGridThree(grid_three);
  // заполнение DataSet dbgrid
  if FileExists(f_path_code_tmc) then
  begin
    dm_parserxls.mem_db_angtelTMC.LoadFromFile(f_path_code_tmc, sfJSON);
    pgc_xls.ActivePageIndex := 1;
  end;

end;
{
  Блок чтения и записи
  чтение и парсер файла xls
  запись в файл json
  //////////////////////////////////////////////////////////////////////////////////////////////////
}
// Блок работы с файлом "Коды ТМЦ"
  // процедура выбора файла xls для чтения
procedure Tfrm_ParserXLS.mni_db_xls_pr_openClick(Sender: TObject);
var
  S: TStringArray;
  f_count: Integer;
  f_path_xls: string;
begin
  f_count := 0;
  if dlg_db_job_xls_open.Execute() then
  begin
    f_path_xls := dlg_db_job_xls_open.FileName;
    f_filename_xls := ExtractFileName(f_path_xls);
  end;
  TCursorHelper.ChangeToHourglass();
// создаем объект OLE
  XLS := TXLSExporter.Create((ExtractFilePath(Application.ExeName) + 'file_xls\'));
  XLS.OpenFile(f_filename_xls, false);
  // Запускаем парсер

  dm_parserxls.mem_db_angtelTMC.Close;
  dm_parserxls.mem_db_angtelTMC.Open;
  dm_parserxls.mem_db_angtelTMC.First;
  dm_parserxls.mem_db_angtelTMC.DisableControls;

  while True do
  begin
    S := XLS.ReadString(2);
    begin
      if (S[0] <> '') and (S[1] <> '') and (S[0] <> 'Наименование элемента') then
      begin
        dm_parserxls.mem_db_angtelTMC.Insert;
        dm_parserxls.mem_db_angtelTMC.Fields[1].AsString := S[0];
        dm_parserxls.mem_db_angtelTMC.Fields[2].AsString := S[1];
        dm_parserxls.mem_db_angtelTMC.Next;
        f_count := 0;
      end;
    end;
    Inc(f_count);
    if f_count = 30 then
      Break;
  end;
  dm_parserxls.mem_db_angtelTMC.Refresh;
  dm_parserxls.mem_db_angtelTMC.EnableControls;
  XLS.CloseFile('');
  XLS.Free;
end;


//  сохраняем файл в формате json
procedure Tfrm_ParserXLS.mni_db_json_pr_saveClick(Sender: TObject);
var
  f_path_fds: string;
begin
  if dlg_db_job_fds_save.Execute() then
  begin
     f_path_fds := dlg_db_job_fds_save.FileName;
  end;
  if  dm_parserxls.mem_db_angtelTMC.RecordCount <> 0 then
  begin
       dm_parserxls.mem_db_angtelTMC.SaveToFile(f_path_fds, sfJSON);
  end
  else
  begin
    ShowMessage('Таблица пуста');
  end;
end;

// Блок работы с файлом "Спецификация"  *************************************************************
  // процедура выбора файла xls для чтения
procedure Tfrm_ParserXLS.mni_db_xls_sp_openClick(Sender: TObject);
var
  S: TStringArray;
  f_count, f_pos: Integer;
  f_path_xls: string;
  tb_tmc, tb_sp, tb_el: TFDMemTable;
begin
// установка начальных значений и присвоение псевдонимов
  f_count := 0;
  f_pos := 1;
  tb_tmc := dm_parserxls.mem_db_angtelTMC;
  tb_sp := dm_parserxls.mem_specification;
//  tb_el := dm_parserxls.mem_list_of_elements;

  if dlg_db_sp_xls_open.Execute() then
  begin
    f_path_xls := dlg_db_sp_xls_open.FileName;
    f_filename_xls := ExtractFileName(f_path_xls);
  end;
    // соединяем все события
  // создаем объект OLE
  TCursorHelper.ChangeToHourglass();
  XLS := TXLSExporter.Create((ExtractFilePath(Application.ExeName) + 'file_xls\'));
  XLS.OpenFile(f_filename_xls, false);
  // запускаем парсинг
  tb_sp.Close;
  tb_sp.Open;
  tb_sp.First;
  tb_sp.DisableControls;
//  tb_el.Close;
//  tb_el.Open;
//  tb_el.First;
//  tb_el.DisableControls;
 {
    while True do
  begin
    S := XLS.ReadString(18);

    begin
      if (S[7] <> '') and (S[14] <> '') and (S[7] <> 'Наименование') then
      begin
        tb_sp.Insert;
        tb_el.Insert;
        tb_sp.Fields[1].AsString := S[7];
        tb_sp.Fields[2].AsString := S[14];
        tb_sp.Fields[4].AsString := S[16];


        tb_el.Fields[1].AsString := S[3];
        tb_el.Fields[2].AsString := S[7];
        tb_el.Fields[3].AsString := S[14];

        tb_sp.Next;
        tb_el.Next;
        f_count := 0;
      end;
    end;

    inc(f_count);
    if f_count = 30 then
      Break;
  end;
 }

 // пробуем новый сканер для Спецификации

  while True do
  begin
    S := XLS.ReadString(18);
    if (S[6] = f_pos.ToString) and (S[12] <> '') and (S[17] <> '') then
    begin
      tb_sp.Insert;
      if S[6] = '1' then
      begin
        tb_sp.Fields[1].AsString := S[12];
        tb_sp.Fields[2].AsString := S[17];
        S := XLS.ReadString(18);
        tb_sp.Fields[1].AsString := tb_sp.Fields[1].AsString + ' ' +  S[12];
        f_count := 0;
      end
      else
      begin
        tb_sp.Fields[1].AsString := S[12];
        tb_sp.Fields[2].AsString := S[17];
        f_count := 0;
      end;
      tb_sp.Next;
      Inc(f_pos);
    end;

// пытаемся найти конец списка
    inc(f_count);
    if f_count = 50 then
      Break;
  end;
  DrawingGridTwo(grid_two);
  DrawingGridThree(grid_three);
  tb_sp.Refresh;
  tb_sp.EnableControls;
//  tb_el.EnableControls;
//  tb_el.Refresh;
  XLS.CloseFile('');
  XLS.Free;

end;
  // сохраняем файл в формате json
procedure Tfrm_ParserXLS.mni_db_json_sp_pr_saveClick(Sender: TObject);
var
  f_path_fds: string;
begin
  if dlg_db_sp_fds_save.Execute() then
  begin
    f_path_fds := dlg_db_sp_fds_save.FileName;
  end;
  if dm_parserxls.mem_specification.RecordCount <> 0 then
  begin
    dm_parserxls.mem_specification.SaveToFile(f_path_fds, sfJSON);
  end
  else
  begin
    ShowMessage('Таблица пуста');
  end;
end;

{---------------------------- Модификация файла "Спецификация" -------------------------------------
}

//##################################################################################################
//**************************************************************************************************

{   Открытие блока работы с файлами fds

}
 // вкладка "Коды ТМЦ"
 // открытие файла fds
procedure Tfrm_ParserXLS.mni_db_job_openClick(Sender: TObject);
var
  f_path_fds: string;
begin
  if dlg_db_fds_pr_open.Execute() then
  begin
    f_path_fds := dlg_db_fds_pr_open.FileName;
    dm_parserxls.mem_db_angtelTMC.LoadFromFile(f_path_fds, sfJSON);
  end;
end;

 // сохранения файла fds после редактирования
procedure Tfrm_ParserXLS.mni_db_job_saveClick(Sender: TObject);
var
  f_path_fds: string;
begin
  if dli_db_fds_pr_save.Execute() then
  begin
    f_path_fds := dli_db_fds_pr_save.FileName;
  end;
  if dm_parserxls.mem_db_angtelTMC.RecordCount <> 0 then
  begin
    dm_parserxls.mem_db_angtelTMC.SaveToFile(f_path_fds, sfJSON);
  end
  else
  begin
    ShowMessage('Таблица пуста');
  end;
end;
 // вкладка спецификация
// открытие файла fds

procedure Tfrm_ParserXLS.mni_db_sp_openClick(Sender: TObject);
var
  f_path_fds: string;
begin
  if dlg_db_sp_pr_open.Execute() then
  begin
    f_path_fds := dlg_db_sp_pr_open.FileName;
    dm_parserxls.mem_specification.LoadFromFile(f_path_fds, sfJSON);
  end;
end;
 // вкладка "Перечень элементов"
 // открытие файла fds

procedure Tfrm_ParserXLS.mni_db_loel_openClick(Sender: TObject);
var
  f_path_fds: string;
begin
  if dlg_db_loel_open.Execute() then
  begin
    f_path_fds := dlg_db_loel_open.FileName;
    dm_parserxls.mem_list_of_elements.LoadFromFile(f_path_fds, sfJSON);
  end;
end;
// запись файла fds

procedure Tfrm_ParserXLS.mni_db_loel_saveClick(Sender: TObject);
var
  f_path_fds: string;
begin
  if dlg_db_loel_save.Execute() then
  begin
    f_path_fds := dlg_db_loel_save.FileName;
    dm_parserxls.mem_list_of_elements.SaveToFile(f_path_fds, sfJSON);
  end;
end;


//**************************************************************************************************
{
    Трансляция таблицы - добавления поля Код ТМЦ
}

procedure Tfrm_ParserXLS.mni_db_translationClick(Sender: TObject);
var
  tb_tmc, tb_sp, tb_el: TFDMemTable;
  f_stringOne, f_stringTwo: string;
begin
  tb_tmc := dm_parserxls.mem_db_angtelTMC;
  tb_sp := dm_parserxls.mem_specification;
  tb_el := dm_parserxls.mem_list_of_elements;

  if tb_tmc.RecordCount = 0 then
  begin
    ShowMessage('Отсутствует таблица "Коды ТМЦ"');
    Abort;
  end;
      // останавливаем прорисовку таблицы
  tb_sp.DisableControls;
  tb_el.DisableControls;
  // запускаем колесико
  TCursorHelper.ChangeToHourglass();
 // код модификации таблицы спецификация - добавляем код ТМЦ

  tb_sp.First;
  tb_el.First;
  while not tb_sp.Eof do
  begin
    tb_tmc.Filtered := False;
    tb_tmc.Filter := 'name = ' + QuotedStr(tb_sp.Fields[1].AsString);
    tb_tmc.Filtered := True;
    tb_sp.Edit;
    tb_el.Edit;
    tb_sp.Fields[3].AsString := tb_tmc.Fields[2].AsString;
    tb_el.Fields[4].AsString := tb_tmc.Fields[2].AsString;
    tb_sp.Post;
    tb_sp.Next;
    tb_el.Post;
    tb_el.Next;
  end;
  tb_sp.EnableControls;
  tb_el.EnableControls;
  tb_tmc.Filtered := False;
end;
//**************************************************************************************************

// перемещение по вкладкам позиции
procedure Tfrm_ParserXLS.mni_db_jobClick(Sender: TObject);
var
  i: Integer;
begin
  if not (Sender is TMenuItem) then
    Exit;

  case (Sender as TMenuItem).Tag of
    1000:
      begin   // активировано "Открытие БД"
          pgc_xls.ActivePageIndex := 0;
      end;
    1001:     // активировано "Спецификация"
      begin
         pgc_xls.ActivePageIndex := 1;
      end;
  end;

end;

// очищаем таблицы
procedure Tfrm_ParserXLS.btn_allResetClick(Sender: TObject);
begin

  case pgc_xls.ActivePageIndex of
    0:
      begin
        ds_one.DataSet.Close;
        ds_one.DataSet.Open;
      end;
    1:
      begin
        ds_two.DataSet.Close;
        ds_two.DataSet.Open;

      end;
    2:
      begin
        ds_three.DataSet.Close;
        ds_three.DataSet.Open;
      end;

  end;

end;

 { *************************************************************************************************
  Блок кода работы с базой MySQL
  **************************************************************************************************
 }
// Трансляция базы "Код ТМЦ" в MySQL
procedure Tfrm_ParserXLS.mni_db_mysql_transmission_tmcClick(Sender: TObject);
begin
  dm_parserxls.mv_tmc.Execute;
  ShowMessage('Трансляция базы "Код ТМЦ" в MySQL - успешно завершена!');
end;

// очистка базы "Коды ТМЦ"
procedure Tfrm_ParserXLS.mni_db_mysql_clear_tmcClick(Sender: TObject);
var
  db_script: TFDScript;
begin
  db_script := dm_parserxls.fd_script_clear;
  if db_script.ValidateAll then
  begin
    db_script.ExecuteScript ( db_script.SQLScripts.Items[0].SQL);
    ShowMessage('Таблица "Коды ТМЦ" в MySQL - очищена');
  end;
end;
// очистка базы "Спецификация"

procedure Tfrm_ParserXLS.mni_db_mysql_clear_specificationClick(Sender: TObject);
var
  db_script: TFDScript;
begin
  db_script := dm_parserxls.fd_script_clear;
  if db_script.ValidateAll then
  begin
 db_script.ExecuteScript ( db_script.SQLScripts.Items[1].SQL);

  end;
  ShowMessage('Таблица "Спецификация" в MySQL - очищена');
end;


//**************************************************************************************************
// закрытие формы

end.
