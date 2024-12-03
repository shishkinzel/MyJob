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
    mni_db_SeparatorTwo: TMenuItem;
    mni_db_job_reset: TMenuItem;
    mni_db_sp_file: TMenuItem;
    mni_db_sp_SeparatorOne: TMenuItem;
    mni_db_sp_parser: TMenuItem;
    mni_db_sp_SeparatorTwo: TMenuItem;
    mni_db_sp_pr_reset: TMenuItem;
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
    mni_db_sp_pr_save: TMenuItem;
    dlg_db_job_xls_open: TOpenDialog;
    dlg_db_job_fds_save: TSaveDialog;
    dlg_db_fds_pr_open: TOpenDialog;
    dli_db_fds_pr_save: TSaveDialog;
    dlg_db_sp_open: TOpenDialog;
    dlg_db_sp_save: TSaveDialog;
    dlg_db_sp_pr_open: TOpenDialog;
    dlg_db_sp_pr_save: TSaveDialog;
    mni_db_sp_pr_SeparatorOne: TMenuItem;
    mni_db_xls_pr_OLE: TMenuItem;
    btn_pars_xls_tms_start: TBitBtn;
    btn_pars_xls_specification_start: TBitBtn;
    lbl_tmc: TLabel;
    lbl_specification: TLabel;
    se_tmc: TSpinEdit;
    se_specification: TSpinEdit;
    ts_three: TTabSheet;
    nv_three: TDBNavigator;
    grid_three: TDBGrid;
    ds_three: TDataSource;
    mni_db_sp_pr_12: TMenuItem;
    mni_db_xls_sp_OLE: TMenuItem;
    fd_json_link_TMC: TFDStanStorageJSONLink;
    btn_allReset: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mni_db_xls_pr_openClick(Sender: TObject);
    procedure mni_db_xls_pr_OLEClick(Sender: TObject);
    procedure mni_db_job_resetClick(Sender: TObject);
    procedure btn_pars_xls_tms_startClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mni_db_json_pr_saveClick(Sender: TObject);
    procedure mni_db_job_openClick(Sender: TObject);
    procedure btn_allResetClick(Sender: TObject);
    procedure mni_db_job_saveClick(Sender: TObject);
    procedure mni_db_jobClick(Sender: TObject);
  private
    { Private declarations }
    var
      f_free : Boolean;
  public
    { Public declarations }
  end;

var
  frm_ParserXLS: Tfrm_ParserXLS;
  XLS: TXLSExporter;
  f_filename_xls: string;


implementation

{$R *.dfm}

procedure Tfrm_ParserXLS.FormCreate(Sender: TObject);
var
  S : TStringArray;
  tmp : String;
  i,j : Integer;
begin
// начальные установки
   pgc_xls.ActivePageIndex := 0;       // установка на первую вкладку
   f_free := False;

end;


 // установка размера таблицы при показе формы

procedure Tfrm_ParserXLS.FormShow(Sender: TObject);
begin

  with grid_one do
  begin
    Columns[0].Width := 50;
    Columns[0].Title.Alignment := taCenter;
    Columns[0].Title.Caption := '№';
    Columns[1].Width := 765;
    Columns[1].Title.Alignment := taCenter;
    Columns[1].Title.Caption := 'Наименование изделия';
    Columns[2].Width := 135;
    Columns[2].Title.Alignment := taCenter;
    Columns[2].Title.Caption := 'Код ТМЦ';

  end;


  with grid_two do
  begin
    Columns[0].Width := 50;
    Columns[0].Title.Alignment := taCenter;
    Columns[0].Title.Caption := '№';
    Columns[1].Width := 560;
    Columns[1].Title.Alignment := taCenter;
    Columns[1].Title.Caption := 'Наименование изделия';
    Columns[2].Width := 40;
    Columns[2].Title.Alignment := taCenter;
    Columns[2].Title.Caption := 'Кол-во';
    Columns[3].Width := 135;
    Columns[3].Title.Alignment := taCenter;
    Columns[3].Title.Caption := 'Код ТМЦ';
    Columns[4].Width := 170;
    Columns[4].Title.Alignment := taCenter;
    Columns[4].Title.Caption := 'Примечание';
  end;

    with grid_three do
  begin
    Columns[0].Width := 50;
    Columns[0].Title.Alignment := taCenter;
    Columns[0].Title.Caption := '№';
    Columns[1].Width := 120;
    Columns[1].Title.Alignment := taCenter;
    Columns[1].Title.Caption := 'Поз. обозначение';
    Columns[2].Width := 580;
    Columns[2].Title.Alignment := taCenter;
    Columns[2].Title.Caption := 'Наименование элемента';
    Columns[3].Width := 40;
    Columns[3].Title.Alignment := taCenter;
    Columns[3].Title.Caption := 'Кол-во';
    Columns[4].Width := 135;
    Columns[4].Title.Alignment := taCenter;
    Columns[4].Title.Caption := 'Код ТМЦ';
  end;

end;
{
  Блок чтения и записи
  чтение и парсер файла xls
  запись в файл json
  //////////////////////////////////////////////////////////////////////////////////////////////////
}

procedure Tfrm_ParserXLS.mni_db_xls_pr_openClick(Sender: TObject);
var
f_path_xls : string;
begin
  if dlg_db_job_xls_open.Execute() then
  begin
   f_path_xls := dlg_db_job_xls_open.FileName;
   f_filename_xls := ExtractFileName(f_path_xls);
   mni_db_xls_pr_open.Enabled := False;
   mni_db_xls_pr_OLE.Enabled := True;
  end;
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

// создание объекта OLE

procedure Tfrm_ParserXLS.mni_db_xls_pr_OLEClick(Sender: TObject);
var
  S : TStringArray;
  tmp : String;
  i,j : Integer;
begin
   mni_db_xls_pr_OLE.Enabled := False;
  XLS := TXLSExporter.Create((ExtractFilePath(Application.ExeName) + 'file_xls\'));
  XLS.OpenFile(f_filename_xls, false);
  f_free := True;
  btn_pars_xls_tms_start.Enabled := True;
end;
// парсер codetmc из xls файла

procedure Tfrm_ParserXLS.btn_pars_xls_tms_startClick(Sender: TObject);
var
  S : TStringArray;
  tmp : String;
  i : Integer;
  f_sel : Integer;
begin
 //  получаем количество ячеек для парсинга
  f_sel := se_tmc.Value;
  if f_sel = 1 then
  begin
    ShowMessage('Введите количество активных ячеек');
    Abort;
  end;

  dm_parserxls.mem_db_angtelTMC.Close;
  dm_parserxls.mem_db_angtelTMC.Open;
  dm_parserxls.mem_db_angtelTMC.First;

  i := 0;
  while True do
  begin
    S :=  XLS.ReadString(2);
    begin
    if (S[0] <> '') and (S[1] <> '') and  (S[0] <> 'Наименование элемента')then
    begin
      dm_parserxls.mem_db_angtelTMC.Insert;
      dm_parserxls.mem_db_angtelTMC.Fields[1].AsString := S[0];
      dm_parserxls.mem_db_angtelTMC.Fields[2].AsString := S[1];
      dm_parserxls.mem_db_angtelTMC.Next;
    end;
    end;

    inc(i);
    if i = f_sel then
      Break;
  end;
  dm_parserxls.mem_db_angtelTMC.Refresh;
  mni_db_job_reset.Enabled := True;
   // сбрасываем курсор
  XLS.SetPosition(1, 1);
end;


// закрыть и разрушить объект OLE
procedure Tfrm_ParserXLS.mni_db_job_resetClick(Sender: TObject);
begin
  mni_db_xls_pr_open.Enabled := True;
  btn_pars_xls_tms_start.Enabled := False;
  mni_db_job_reset.Enabled := False;

    XLS.CloseFile('');
    XLS.Free;
    f_free := False;
end;

//**************************************************************************************************

{   Открытие блока работы с файлами fds

}
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
        se_tmc.Value := 1;
      end;
    1:
      begin
        ds_two.DataSet.Close;
        ds_two.DataSet.Open;
        se_specification.Value := 1;
      end;
    2:
      begin
        ds_three.DataSet.Close;
        ds_three.DataSet.Open;
        se_specification.Value := 1;
      end;

  end;

end;

// закрытие формы
procedure Tfrm_ParserXLS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if f_free then
    begin
      XLS.CloseFile('');
      XLS.Free;
    end;
end;


end.
