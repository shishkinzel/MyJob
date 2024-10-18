unit FconJson_compositeTable;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Menus, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons, FireDAC.Stan.StorageJSON, FireDAC.Comp.BatchMove.Text;

type
  Tfrm_CompositeTable = class(TForm)
    btn_conJson_CompositeTable: TBitBtn;
    dlgOpen_CompositeTable: TOpenDialog;
    dlgSave_CompositeTable: TSaveDialog;
    mm_CompositeTable: TMainMenu;
    mni_conJsonFile: TMenuItem;
    mni_conJsonOpen: TMenuItem;
    mni_conJsonSave: TMenuItem;
    pnl_downConJson: TPanel;
    dbG_conJson_CompositeTable: TDBGrid;
    dbnav_conJson_CompositeTable: TDBNavigator;
    ds_CompositeTable: TDataSource;
    fdjson_conJson_CompastiteTable: TFDStanStorageJSONLink;
    mni_SeparatorOneCompositeTable: TMenuItem;
    mni_CompositeTableReset: TMenuItem;
    mni_msql_Section: TMenuItem;
    mni_msql_Connect: TMenuItem;
    mni_msql_SeparatorOne: TMenuItem;
    mni_msql_One: TMenuItem;
    mni_msql_Two: TMenuItem;
    mni_msql_Three: TMenuItem;
    mni_msql_SeparatorTwo: TMenuItem;
    mni_msql_Reset: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_conJson_CompositeTableClick(Sender: TObject);
    procedure mni_conJsonOpenClick(Sender: TObject);
    procedure mni_conJsonSaveClick(Sender: TObject);
    procedure mni_CompositeTableResetClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mni_msql_OneClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CompositeTable: Tfrm_CompositeTable;

implementation

uses
  FconJson, DMconJson;

{$R *.dfm}
// создание формы
procedure Tfrm_CompositeTable.FormCreate(Sender: TObject);
var
  i: Integer;
begin

end;

// показ формы
procedure Tfrm_CompositeTable.FormShow(Sender: TObject);
begin
  with dbG_conJson_CompositeTable do
  begin
    Columns[0].Width := 40;
    with Columns[0].Title do
    begin
      Alignment := taCenter;
      Caption := 'Id';
    end;

    Columns[1].Width := 120;
    with Columns[1].Title do
    begin
      Alignment := taCenter;
      Caption := 'Наименование';
    end;

    Columns[2].Width := 240;
    with Columns[2].Title do
    begin
      Alignment := taCenter;
      Caption := 'Модуль уст-ва';
    end;

    Columns[3].Width := 90;
    with Columns[3].Title do
    begin
      Alignment := taCenter;
      Caption := 'Серийный номер';
    end;

    Columns[4].Width := 110;
    with Columns[4].Title do
    begin
      Alignment := taCenter;
      Caption := 'ФизАдрес';
    end;

    Columns[5].Width := 120;
    with Columns[5].Title do
    begin
      Alignment := taCenter;
      Caption := 'Оригинальная версия';
    end;

    Columns[6].Width := 60;
    with Columns[6].Title do
    begin
      Alignment := taCenter;
      Caption := 'Попытка';
    end;

    Columns[7].Width := 200;
    with Columns[7].Title do
    begin
      Alignment := taCenter;
      Caption := 'Дата';
    end;

    Columns[8].Width := 50;
    with Columns[8].Title do
    begin
      Alignment := taCenter;
      Caption := 'Текущая';
    end;

    Columns[9].Width := 100;
    with Columns[9].Title do
    begin
      Alignment := taCenter;
      Caption := 'Предложенная';
    end;

  end;
end;








{
 Произвести склейку двух таблиц по серийному номеру

 }
procedure Tfrm_CompositeTable.btn_conJson_CompositeTableClick(Sender: TObject);
const
  csNo = 'Нет данных';
var
  i: integer;
  f_temp_idserial: string;
  db_dev, db_st, db_comp: TFDMemTable;
begin
// назначаем  псевдонимы для баз данных таблиц изделия и статистики
  db_dev := dm_conJson.db_memTab_conJson;
  db_st := dm_conJson.db_memTab_conJson_statistic;
  db_comp := dm_conJson.db_memTab_CompositeTable;

 // реализация поиска и заполнения таблицы db_memTab_CompositeTable
  db_dev.Open;
  db_dev.First;
  db_comp.Open;
  db_comp.First;
  db_st.Open;

  while not db_dev.Eof do
  begin
// начинаем движение
    db_comp.Insert;
    db_st.First;
    db_comp.Fields.FieldByNumber(2).AsString := db_dev.Fields.FieldByNumber(2).AsString;
    db_comp.Fields.FieldByNumber(3).AsString := db_dev.Fields.FieldByNumber(3).AsString;
    db_comp.Fields.FieldByNumber(5).AsString := db_dev.Fields.FieldByNumber(5).AsString;
    db_comp.Fields.FieldByNumber(6).AsString := db_dev.Fields.FieldByNumber(6).AsString;
    f_temp_idserial := db_dev.Fields.FieldByNumber(4).AsString;
    db_comp.Fields.FieldByNumber(4).AsString := f_temp_idserial;
 // запускаем функцию поиска строки в таблице db_memTab_conJson_statistic

    if db_st.Locate('request_serial', f_temp_idserial, []) then
    begin
 // при нахождении строки переписываем ее содержимое в результирующую таблицу
      db_comp.Fields.FieldByNumber(7).AsString := db_st.Fields.FieldByNumber(2).AsString;
      db_comp.Fields.FieldByNumber(8).AsString := db_st.Fields.FieldByNumber(5).AsString;
      db_comp.Fields.FieldByNumber(9).AsString := db_st.Fields.FieldByNumber(6).AsString;
      db_comp.Fields.FieldByNumber(10).AsString := db_st.Fields.FieldByNumber(7).AsString;
    end
    else
    begin
      db_comp.Fields.FieldByNumber(7).AsString := '0';
      db_comp.Fields.FieldByNumber(8).AsString := csNo;
      db_comp.Fields.FieldByNumber(9).AsString := csNo;
      db_comp.Fields.FieldByNumber(10).AsString := csNo;
    end;
// переход на новую строку
    db_dev.Next;
    db_comp.Next;
  end;
  db_comp.Refresh;
end;

{  +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 Блок чтения и записи склеиных файлов - набор данный для размещения в БД MySQL

}
// процедура открытия файла fds

procedure Tfrm_CompositeTable.mni_conJsonOpenClick(Sender: TObject);
var
  f_Path_FileJson: string;
  f_StringList: TStringList;
begin
  if dlgOpen_CompositeTable.Execute() then
  begin
    f_Path_FileJson := dlgOpen_CompositeTable.FileName;
    f_StringList := TStringList.Create;
    f_StringList.LoadFromFile(f_Path_FileJson);
    if CheckJSON(f_StringList.Text) then
    begin
      dm_conJson.db_memTab_CompositeTable.Close;
      dm_conJson.db_memTab_CompositeTable.Open;
      dm_conJson.db_memTab_CompositeTable.LoadFromFile(f_Path_FileJson, sfJSON);
    end;
    f_StringList.Free;

    // конфигурирование таблицы
    with dbG_conJson_CompositeTable do
    begin
      Columns[0].Width := 40;
      with Columns[0].Title do
      begin
        Alignment := taCenter;
        Caption := 'Id';
      end;

      Columns[1].Width := 120;
      with Columns[1].Title do
      begin
        Alignment := taCenter;
        Caption := 'Наименование';
      end;

      Columns[2].Width := 240;
      with Columns[2].Title do
      begin
        Alignment := taCenter;
        Caption := 'Модуль уст-ва';
      end;

      Columns[3].Width := 90;
      with Columns[3].Title do
      begin
        Alignment := taCenter;
        Caption := 'Серийный номер';
      end;

      Columns[4].Width := 110;
      with Columns[4].Title do
      begin
        Alignment := taCenter;
        Caption := 'ФизАдрес';
      end;

      Columns[5].Width := 120;
      with Columns[5].Title do
      begin
        Alignment := taCenter;
        Caption := 'Оригинальная версия';
      end;

      Columns[6].Width := 60;
      with Columns[6].Title do
      begin
        Alignment := taCenter;
        Caption := 'Попытка';
      end;

      Columns[7].Width := 200;
      with Columns[7].Title do
      begin
        Alignment := taCenter;
        Caption := 'Дата';
      end;

      Columns[8].Width := 50;
      with Columns[8].Title do
      begin
        Alignment := taCenter;
        Caption := 'Текущая';
      end;

      Columns[9].Width := 100;
      with Columns[9].Title do
      begin
        Alignment := taCenter;
        Caption := 'Предложенная';
      end;

    end;
  end;
end;

// процедура сохранения файла fds

procedure Tfrm_CompositeTable.mni_conJsonSaveClick(Sender: TObject);
var
  f_Path_FileJson: string;
  f_StringList: TStringList;
begin
  if dlgSave_CompositeTable.Execute() then
  begin
    f_Path_FileJson := dlgSave_CompositeTable.FileName;
  end;
  dm_conJson.db_memTab_CompositeTable.SaveToFile(f_Path_FileJson, sfJSON);
end;




{
----------------------------------------------------------------------------------------------------
}


// Перенос БД в MySQL


procedure Tfrm_CompositeTable.mni_msql_OneClick(Sender: TObject);
var
db_comp : TFDMemTable;

begin
 db_comp := dm_conJson.db_memTab_CompositeTable;
 dm_conJson.fdbtchmv_conJson_BatchMove.Execute;
end;


// Сброс таблицы
procedure Tfrm_CompositeTable.mni_CompositeTableResetClick(Sender: TObject);
begin
  dbG_conJson_CompositeTable.DataSource.DataSet.Close;
  dbG_conJson_CompositeTable.DataSource.DataSet.Open;
end;

procedure Tfrm_CompositeTable.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin

end;

end.

