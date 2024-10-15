unit FconJson;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Stan.StorageJSON;

type
  Tfrm_conJson = class(TForm)
    btn_conJson: TBitBtn;
    mm_conJson: TMainMenu;
    mni_conJsonFile_Converter: TMenuItem;
    mni_conJsonOpen: TMenuItem;
    mni_conJsonSave: TMenuItem;
    dlgOpen_conJson: TOpenDialog;
    dlgSave_conJson: TSaveDialog;
    db_memTab_conJson: TFDMemTable;
    ds_conJson: TDataSource;
    dbG_conJson: TDBGrid;
    dbnav_conJson: TDBNavigator;
    pnl_downConJson: TPanel;
    db_memTab_conJsonId_key_db: TAutoIncField;
    db_memTab_conJsondeviceName: TStringField;
    db_memTab_conJsonselector: TStringField;
    db_memTab_conJsonserialId: TStringField;
    db_memTab_conJsonethaddr: TStringField;
    db_memTab_conJsonversion: TStringField;
    mni_OneSeparator: TMenuItem;
    mni_conJson_statistic_transfer: TMenuItem;
    mni_MainFile: TMenuItem;
    mni_MainOpen: TMenuItem;
    mni_MainSave: TMenuItem;
    dlgOpen_MainFile: TOpenDialog;
    dlgSave_MainFile: TSaveDialog;
    mni_SeparatorOne_main: TMenuItem;
    mni_MainReset: TMenuItem;
    mni_SQL_Form: TMenuItem;
    mni_SQL_Form_direct: TMenuItem;
    fdjson_conJson: TFDStanStorageJSONLink;
    procedure btn_conJsonClick(Sender: TObject);
    procedure mni_conJsonOpenClick(Sender: TObject);
    procedure mni_conJsonSaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure mni_conJson_statistic_transferClick(Sender: TObject);
    procedure mni_SQL_Form_directClick(Sender: TObject);
    procedure mni_MainOpenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function CheckJSON(Buffer: String): Boolean;

  const
  fJSON_dev_table = 'device_json.fds';
  fJSON_st_table = 'statistic_json.fds';
var
  fPath_jsonFile: string;
  fFileJson: file;
  fStringList : TStringList;
var
  frm_conJson: Tfrm_conJson;

implementation

uses
  System.JSON, FconJson_statistic, FconJson_compositeTable;

{$R *.dfm}
{
    Реализация методов

 }
 // функция проверки валидности JSON файла
function CheckJSON(Buffer: string): Boolean;
var
  js: TJSONObject;
begin
  Result := False;
  if Length(Buffer) < 4 then
    Exit; //Точно не может быть JSON-ом.
  try
    js := TJSONObject.ParseJSONValue(Buffer) as TJSONObject;
    try
      if Assigned(js) then
        Result := True;
    finally
      FreeAndNil(js);
    end;
  except
  end;
end;




// создание формы

procedure Tfrm_conJson.FormCreate(Sender: TObject);
begin
  db_memTab_conJson.Active := True;

end;

procedure Tfrm_conJson.btn_conJsonClick(Sender: TObject);
var
  JSON: TJSONObject;
  JP: TJSONPair;
  mac, ver, fname, serial, selector: string;
  i: Integer;
  ftemp_mac: string;
begin

  JSON := TJSONObject.ParseJSONValue(fStringList.Text) as TJSONObject;
  // очищаем бд
    db_memTab_conJson.Close;
  // открываем бд
  db_memTab_conJson.Open;
//  db_memTab_conJson.EmptyDataSet;
                // перебираем идентификаторы устройств
  for JP in JSON do
  begin
  // начальные установки
    i := 1;
    // берем нужные поля по Идентификатору
    JSON.Values[JP.JsonString.Value].TryGetValue('environment.ethaddr', mac);
// пытаемся найти первый непустой mac - адрес
    while mac = '' do
    begin
      ftemp_mac := 'environment.eth' + i.ToString + 'addr';
      JSON.Values[JP.JsonString.Value].TryGetValue(ftemp_mac, mac);
      Inc(i);
    end;

    JSON.Values[JP.JsonString.Value].TryGetValue('environment.device-name', fname);
    JSON.Values[JP.JsonString.Value].TryGetValue('environment.serial#', serial);
    JSON.Values[JP.JsonString.Value].TryGetValue('selector', selector);
    JSON.Values[JP.JsonString.Value].TryGetValue('version', ver);
    db_memTab_conJson.Insert;
    with db_memTab_conJson.Fields do
    begin
      FieldByNumber(2).AsString := fname;
      FieldByNumber(3).AsString := selector;
      FieldByNumber(4).AsString := serial;
      FieldByNumber(5).AsString := mac;
      FieldByNumber(6).AsString := ver;
    end;
    db_memTab_conJson.Next;
  end;
  btn_conJson.Enabled := False;
// уничтожаем объект JSON
  JSON.Free;

end;
{        Открытие секции чтение и записи конвертируемых файлов
____________________________________________________________________________________________________
}
procedure Tfrm_conJson.mni_conJsonOpenClick(Sender: TObject);
var
  i: Integer;
  f_fileTemp: file;
  f_Path_FileJson: string;
begin
  if dlgOpen_conJson.Execute then
  begin
    f_Path_FileJson := dlgOpen_conJson.FileName;
    fStringList := TStringList.Create;
    fStringList.LoadFromFile(f_Path_FileJson);
    btn_conJson.Enabled := True;
  end;
end;

procedure Tfrm_conJson.mni_conJsonSaveClick(Sender: TObject);
var
  i: Integer;
  f_fileTemp: file;
  f_Path_FileJson: string;
begin
  if dlgSave_conJson.Execute() then
  begin
    f_Path_FileJson := dlgSave_conJson.FileName;
  end;
  db_memTab_conJson.SaveToFile(f_Path_FileJson, sfJSON);
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
{        Открытие секции чтение и записи сконвертируемых файлов
____________________________________________________________________________________________________
}
 // открыть сохраненый конвертируемый файл
procedure Tfrm_conJson.mni_MainOpenClick(Sender: TObject);
var
  i: Integer;
  f_fileTemp: file;
  f_Path_FileJson: string;
begin
  if dlgOpen_MainFile.Execute() then
  begin
    f_Path_FileJson := dlgOpen_MainFile.FileName;
    fStringList := TStringList.Create;
    fStringList.LoadFromFile(f_Path_FileJson);
    if CheckJSON(fStringList.Text) then
    begin
      db_memTab_conJson.Close;
      db_memTab_conJson.Open;
      db_memTab_conJson.LoadFromFile(f_Path_FileJson, sfJSON);
    end;
    fStringList.Free;
  end;
end;

// *************************************************************************************************

// Переход на форму статистики

procedure Tfrm_conJson.mni_conJson_statistic_transferClick(Sender: TObject);
begin
    frm_conJson_statistic.Show;
end;


// открытие сводной таблицы
procedure Tfrm_conJson.mni_SQL_Form_directClick(Sender: TObject);
var
i : Integer;
begin
  frm_CompositeTable.Show;
end;


// Закрытие формы

procedure Tfrm_conJson.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fStringList.Free;
  db_memTab_conJson.Active := False;
end;

end.

