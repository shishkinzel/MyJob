unit FParserXLS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus,
  DParserXLS, expfilter, xlsexport, oofice, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.Mask, Vcl.Samples.Spin;    // подсоединеные формы

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
    mni_db_parser: TMenuItem;
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
    mni_db_sp_pr_open: TMenuItem;
    mni_db_sp_pr_save: TMenuItem;
    dlg_db_job_open: TOpenDialog;
    dlg_db_job_save: TSaveDialog;
    dlg_db_xls_pr_open: TOpenDialog;
    dli_db_json_pr_save: TSaveDialog;
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
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mni_db_xls_pr_openClick(Sender: TObject);
    procedure mni_db_xls_pr_OLEClick(Sender: TObject);
    procedure mni_db_job_resetClick(Sender: TObject);
    procedure btn_pars_xls_tms_startClick(Sender: TObject);
  private

    { Private declarations }
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

//  XLS := TXLSExporter.Create(ExtractFilePath(Application.ExeName));
//  XLS.OpenFile('test.xlsx',false);
//  j := 1;
//  while True do
//  begin
//    S :=  XLS.ReadString(50);
//    if S[0] = '' then
//      Break;
//    for i := 0 to High(S)  do
//      sg1.Cells [i + 1, j] := S[i];
//    if (S[7] <> '') and (StrToIntDef (S[14],-1) > 0) then
//    mmo1.lines.Add(S[7] + ' - штук - ' + S[14]);
//    inc (j);
//     if j > 300 then
//        break;
//  end;
//  XLS.CloseFile('');
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
  if dlg_db_job_open.Execute() then
  begin
   f_path_xls := dlg_db_job_open.FileName;
   f_filename_xls := ExtractFileName(f_path_xls);
   mni_db_xls_pr_open.Enabled := False;
   mni_db_xls_pr_OLE.Enabled := True;
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
  btn_pars_xls_tms_start.Enabled := True;
end;
// парсер codetmc из xls файла
procedure Tfrm_ParserXLS.btn_pars_xls_tms_startClick(Sender: TObject);
var
  S : TStringArray;
  tmp : String;
  i,j : Integer;
begin
   dm_parserxls.mem_db_angtelTMC.Close;
   dm_parserxls.mem_db_angtelTMC.Open;
   dm_parserxls.mem_db_angtelTMC.First;

   j := 1;
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

    inc(j);
    if j > 2600 then
      Break;
  end;
        dm_parserxls.mem_db_angtelTMC.Refresh;
end;

// закрыть и разрушить объект OLE
procedure Tfrm_ParserXLS.mni_db_job_resetClick(Sender: TObject);
begin
  mni_db_xls_pr_open.Enabled := True;
  btn_pars_xls_tms_start.Enabled := False;

    XLS.CloseFile('');
    XLS.Free;
end;


//**************************************************************************************************
end.
