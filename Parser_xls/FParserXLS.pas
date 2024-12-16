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
    mni_db_xls_pr_open: TMenuItem;
    mni_db_json_pr_save: TMenuItem;
    mni_db_sp_open: TMenuItem;
    mni_db_xls_sp_open: TMenuItem;
    mni_db_json_sp_pr_save: TMenuItem;
    dlg_db_job_xls_open: TOpenDialog;
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
    mni_db_loel: TMenuItem;
    mni_db_loel_file: TMenuItem;
    mni_db_loel_SeparatorOne: TMenuItem;
    mni_db_loel_open: TMenuItem;
    dlg_db_loel_open: TOpenDialog;
    dlg_db_sp_xls_save: TSaveDialog;
    lbl_title_find: TLabel;
    btn_find: TBitBtn;
    edt_find: TEdit;
    mni_db_loel_parser: TMenuItem;
    mni_db_loel_pr_open: TMenuItem;
    mni_db_loel_pr_SeparatorTwo: TMenuItem;
    mni_db_loel_pr_save: TMenuItem;
    lbl_template: TLabel;
    mni_db_sp_SeparatorTwo: TMenuItem;
    mni_db_sp_xls_save: TMenuItem;
    dlg_db_job_fds_save: TSaveDialog;
    mni_db_loel_SeparatorTwo: TMenuItem;
    mni_db_loel_xls_save: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mni_db_xls_pr_openClick(Sender: TObject);
    procedure mni_db_json_pr_saveClick(Sender: TObject);
    procedure mni_db_job_openClick(Sender: TObject);
    procedure btn_allResetClick(Sender: TObject);
    procedure mni_db_jobClick(Sender: TObject);
    procedure mni_db_mysql_clear_tmcClick(Sender: TObject);
    procedure mni_db_mysql_transmission_tmcClick(Sender: TObject);
    procedure mni_db_xls_sp_openClick(Sender: TObject);
    procedure mni_db_json_sp_pr_saveClick(Sender: TObject);
    procedure mni_db_sp_openClick(Sender: TObject);
    procedure mni_db_mysql_clear_specificationClick(Sender: TObject);
    procedure mni_db_loel_openClick(Sender: TObject);
    procedure btn_findClick(Sender: TObject);
    procedure mni_db_loel_pr_openClick(Sender: TObject);
    procedure pgc_xlsChange(Sender: TObject);
    procedure mni_db_sp_xls_saveClick(Sender: TObject);
    procedure mni_db_loel_xls_saveClick(Sender: TObject);
  private
    { Private declarations }
    const
      cs_template = 'template.xlsx'; // разметка листа xls
      cs_template_el = 'template_el.xlsx'; // разметка листа xls

      cs_code_tmc = 'code_tmc.json';
      cs_codetmc = 'codetmc';    //   константа для хранения имя файла для таблицы "Код ТМЦ"
      cs_sp = 'specification';   //   константа для хранения имя файла для таблицы "Спецификация"
      cs_el = 'per_of_el';       //   константа для хранения имя файла для таблицы "Перечень элементов"
// имя папок
       cs_json_sp = 'file_json_sp';
       cs_json_el = 'file_json_el';
      cs_xls_el = 'file_xls_el/';
      cs_xls_sp = 'file_xls_sp/';
      cs_xls_sp_trans = 'file_xls_sp_trans';

  public
    { Public declarations }
  end;

resourcestring
  rsESaveActiveSheet = 'Ошибка сохранения активного листа книги';

var
  frm_ParserXLS: Tfrm_ParserXLS;
  XLS: TXLSExporter;
  f_filename_xls: string;
  Animation: TAnimate;
  f_path_code_tmc: string;
  f_nameList: string;      // глобальная переменная для храниния имя листа книги xls

implementation

uses
  FireDAC.VCLUI.Script, FireDAC.Comp.BatchMove.Text, FireDAC.Comp.Script,
  FireDAC.Comp.Client, CursorHelper, formSheet;

{$R *.dfm}

procedure Tfrm_ParserXLS.btn_findClick(Sender: TObject);
begin
  grid_one.DataSource.DataSet.Filtered := False;
  if edt_find.Text <> '' then
  begin
   grid_one.DataSource.DataSet.Filter := 'name LIKE ' + QuotedStr( edt_find.Text);
   grid_one.DataSource.DataSet.Filtered := true;
  end;
end;

procedure Tfrm_ParserXLS.FormCreate(Sender: TObject);
//var
//  S : TStringArray;
//  tmp : String;
//  i,j : Integer;
begin
  // начальные установки
   pgc_xls.ActivePageIndex := 0;       // установка на первую вкладку
  // загрузка таблицы Коды ТМЦ - если она существует
   f_path_code_tmc := ExtractFilePath(Application.ExeName) + 'file_json\' + cs_code_tmc;

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
procedure Tfrm_ParserXLS.mni_db_xls_sp_openClick(Sender: TObject);
var
  S: TStringArray;
  i: Integer;
  f_count, f_pos: Integer;
  f_path_xls: string;
  tb_tmc, tb_sp: TFDMemTable;
//  f_stringOne, f_stringTwo: string;
begin
// установка начальных значений и присвоение псевдонимов
  f_count := 0;
  f_pos := 1;
  tb_tmc := dm_parserxls.mem_db_angtelTMC;
  tb_sp := dm_parserxls.mem_specification;

  if dlg_db_sp_xls_open.Execute() then
  begin
    f_path_xls := dlg_db_sp_xls_open.FileName;
    f_filename_xls := ExtractFileName(f_path_xls);
  end;
  // создаем объект OLE
  TCursorHelper.ChangeToHourglass();
  XLS := TXLSExporter.Create((ExtractFilePath(Application.ExeName) + 'file_xls\'));
  XLS.OpenFile(f_filename_xls, false);
  // читаем листы

  XLS.GetSheets(frmSelectSheet.cbb_workbooks.Items);
  frmSelectSheet.cbb_workbooks.ItemIndex := 0;
  if frmSelectSheet.cbb_workbooks.Items.Count > 1 then
  begin
    if formSheet.frmSelectSheet.ShowModal <> mrOk then
    begin
      XLS.Free;
      Exit;
    end
    else
    begin
      f_nameList := XLS.VExcel.WorkBooks[1].WorkSheets[frmSelectSheet.cbb_workbooks.ItemIndex + 1].Name;
      XLS.VExcel.WorkBooks[1].Sheets.Item[frmSelectSheet.cbb_workbooks.ItemIndex + 1].Activate;
    end;
  end;

  // запускаем парсинг
  tb_sp.Close;
  tb_sp.Open;
  tb_sp.First;
  tb_sp.DisableControls;

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
        tb_sp.Fields[1].AsString := tb_sp.Fields[1].AsString + ' ' + S[12];
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

  // проводим трансляцию файла
  tb_sp.First;
  while not tb_sp.Eof do
  begin
    tb_tmc.Filtered := False;
    tb_tmc.Filter := 'name = ' + QuotedStr(tb_sp.Fields[1].AsString);
    tb_tmc.Filtered := True;

    tb_sp.Edit;
    tb_sp.Fields[3].AsString := tb_tmc.Fields[2].AsString;
    tb_sp.Post;
    tb_sp.Next;
  end;
  tb_sp.EnableControls;
  tb_tmc.Filtered := False;

  DrawingGridTwo(grid_two);
  tb_sp.Refresh;
  tb_sp.First;

  frmSelectSheet.cbb_workbooks.Clear;
  XLS.CloseFile('');
  XLS.Free;
end;

// создание файла в формате Excel -  "Спецификация"
{Warning **********************************************************                                }
procedure Tfrm_ParserXLS.mni_db_sp_xls_saveClick(Sender: TObject);
var
  S: TStringArray;
  f_count: Integer;
  f_path_xls: string;
  i: Integer;
  tb_sp: TFDMemTable;
  posY: Integer;
begin
  tb_sp := dm_parserxls.mem_specification;
  TCursorHelper.ChangeToHourglass();
  tb_sp.DisableControls;
    // создаем объект OLE
  XLS := TXLSExporter.Create(ExtractFilePath(Application.ExeName));
  XLS.OpenFile(cs_template, false);
  grid_two.DataSource.DataSet.First;
  posY := 2;
  while (not grid_two.DataSource.DataSet.Eof) do
  begin
    for i := 0 to grid_two.DataSource.DataSet.Fields.Count - 1 do
    begin
      XLS.VExcel.Cells[posY, i + 1].Value := grid_two.DataSource.DataSet.Fields[i].asstring;
    end;
    inc (posY);
    grid_two.DataSource.DataSet.Next;
  end;
  XLS.VExcel.Range ['A1'+':D'+IntToStr(posY-1)].Borders.Weight := 2;
  XLS.VExcel.WorkBooks[1].WorkSheets[1].Name :=  f_nameList;
  XLS.CloseFile(cs_xls_sp + f_nameList + '.xlsx');
  XLS.Free;
  tb_sp.EnableControls;

end;

// создание файла в формате Excel -  "Перечень элементов"
{Warning **********************************************************                                }
procedure Tfrm_ParserXLS.mni_db_loel_xls_saveClick(Sender: TObject);
var
  S: TStringArray;
  f_count: Integer;
  f_path_xls: string;
  i: Integer;
  tb_el: TFDMemTable;
  posY: Integer;
begin
  tb_el := dm_parserxls.mem_list_of_elements;
  TCursorHelper.ChangeToHourglass();
  tb_el.DisableControls;
      // создаем объект OLE
  XLS := TXLSExporter.Create(ExtractFilePath(Application.ExeName));
  XLS.OpenFile(cs_template_el, false);

  grid_three.DataSource.DataSet.First;
  posY := 2;
  while (not grid_three.DataSource.DataSet.Eof) do
  begin
    for i := 0 to grid_three.DataSource.DataSet.Fields.Count - 1 do
    begin
      XLS.VExcel.Cells[posY, i + 1].Value := grid_three.DataSource.DataSet.Fields[i].asstring;
    end;
    inc(posY);
    grid_three.DataSource.DataSet.Next;
  end;
  XLS.VExcel.Range['A1' + ':E' + IntToStr(posY - 1)].Borders.Weight := 2;
  XLS.VExcel.WorkBooks[1].WorkSheets[1].Name := f_nameList;
  XLS.CloseFile(cs_xls_el + f_nameList + '.xlsx');
  XLS.Free;
  tb_el.EnableControls;

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



//  Вкладка - "Перечень элементов"   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

procedure Tfrm_ParserXLS.mni_db_loel_pr_openClick(Sender: TObject);
var
  S: TStringArray;
  i: Integer;
  f_count, f_pos: Integer;
  f_path_xls: string;
  tb_tmc, tb_el: TFDMemTable;
begin
// процедура выбора файла xls для чтения
  f_count := 0;
  f_pos := 1;
  tb_tmc := dm_parserxls.mem_db_angtelTMC;
  tb_el := dm_parserxls.mem_list_of_elements;

  if dlg_db_sp_xls_open.Execute() then
  begin
    f_path_xls := dlg_db_sp_xls_open.FileName;
    f_filename_xls := ExtractFileName(f_path_xls);
  end;
  // создаем объект OLE
  TCursorHelper.ChangeToHourglass();

  XLS := TXLSExporter.Create((ExtractFilePath(Application.ExeName) + 'file_xls\'));
  XLS.OpenFile(f_filename_xls, false);

  XLS.GetSheets(frmSelectSheet.cbb_workbooks.Items);
  frmSelectSheet.cbb_workbooks.ItemIndex := 0;
  if frmSelectSheet.cbb_workbooks.Items.Count > 1 then
  begin
    if formSheet.frmSelectSheet.ShowModal <> mrOk then
    begin
      XLS.Free;
      Exit;
    end
    else
    begin
      f_nameList := XLS.VExcel.WorkBooks[1].WorkSheets[frmSelectSheet.cbb_workbooks.ItemIndex + 1].Name;
      XLS.VExcel.WorkBooks[1].Sheets.Item[frmSelectSheet.cbb_workbooks.ItemIndex + 1].Activate;
    end;
  end;

  tb_el.Close;
  tb_el.Open;
  tb_el.First;
  tb_el.DisableControls;

  while True do
  begin
    S := XLS.ReadString(18);

    begin
      if (S[7] <> '') and (S[14] <> '') and (S[7] <> 'Наименование') then
      begin
        tb_el.Insert;
        tb_el.Fields[1].AsString := S[3];
        tb_el.Fields[2].AsString := S[7];
        tb_el.Fields[3].AsString := S[14];
        tb_el.Next;
        f_count := 0;
      end;
    end;

    inc(f_count);
    if f_count = 30 then
      Break;
  end;

  // добавляем трансляцию
  if tb_tmc.RecordCount = 0 then
  begin
    ShowMessage('Отсутствует таблица "Коды ТМЦ"');
    Abort;
  end;

  tb_el.First;
  while not tb_el.Eof do
  begin
    tb_tmc.Filtered := False;
    tb_tmc.Filter := 'name = ' + QuotedStr(tb_el.Fields[2].AsString);
    tb_tmc.Filtered := True;

    tb_el.Edit;
    tb_el.Fields[4].AsString := tb_tmc.Fields[2].AsString;
    tb_el.Post;
    tb_el.Next;
  end;

  tb_el.EnableControls;
  tb_tmc.Filtered := False;
  DrawingGridThree(grid_three);

  tb_el.Refresh;
  tb_el.First;

  frmSelectSheet.cbb_workbooks.Clear;
  XLS.CloseFile('');
  XLS.Free;
end;

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

 // вкладка "Спецификация" !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
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
        btn_find.Enabled := True;
        edt_find.Enabled := True;

      end;
    1001:     // активировано "Спецификация"
      begin
        pgc_xls.ActivePageIndex := 1;
        btn_find.Enabled := False;
        edt_find.Enabled := False;
      end;
    1002:     // активировано "Перечень элементов"
      begin
        pgc_xls.ActivePageIndex := 2;
        btn_find.Enabled := False;
        edt_find.Enabled := False;
      end;
  end;

end;
// работа с влкадками
 procedure Tfrm_ParserXLS.pgc_xlsChange(Sender: TObject);
begin
     if not (Sender is TPageControl) then
    Exit;
      case (Sender as TPageControl).ActivePageIndex of
    0:
      begin   // активировано "Открытие БД"
        pgc_xls.ActivePageIndex := 0;
        btn_find.Enabled := True;
        edt_find.Enabled := True;

      end;
    1:     // активировано "Спецификация"
      begin
        pgc_xls.ActivePageIndex := 1;
        btn_find.Enabled := False;
        edt_find.Enabled := False;
      end;
    2:     // активировано "Перечень элементов"
      begin
        pgc_xls.ActivePageIndex := 2;
        btn_find.Enabled := False;
        edt_find.Enabled := False;
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
