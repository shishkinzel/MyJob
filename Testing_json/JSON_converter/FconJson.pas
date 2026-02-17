unit FconJson;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Stan.StorageJSON,
  FireDAC.Comp.BatchMove.Text, FireDAC.Comp.Script, FireDAC.VCLUI.Script,
  FireDAC.Comp.UI;

type
  Tfrm_conJson = class(TForm)
    btn_conJson: TBitBtn;
    mm_conJson: TMainMenu;
    mni_conJsonFile_Converter: TMenuItem;
    mni_conJsonOpen: TMenuItem;
    mni_conJsonSave: TMenuItem;
    dlgOpen_conJson: TOpenDialog;
    dlgSave_conJson: TSaveDialog;
    ds_conJson: TDataSource;
    dbG_conJson: TDBGrid;
    dbnav_conJson: TDBNavigator;
    pnl_downConJson: TPanel;
    mni_device_SeparatorTwo: TMenuItem;
    mni_Reset: TMenuItem;
    mni_MainOpen: TMenuItem;
    dlgOpen_MainFile: TOpenDialog;
    mni_SQL_Form_direct: TMenuItem;
    mni_conJson_statistic_transfer: TMenuItem;
    fdjson_conJson: TFDStanStorageJSONLink;
    mni_device_SeparatorOne: TMenuItem;
    mni_statistics_show: TMenuItem;
    mni_composite_show: TMenuItem;
    mni_mysql_main: TMenuItem;
    mni_mysql_clear: TMenuItem;
    mni_mysql_transfer: TMenuItem;
    mni_mysql_SeparatorOne: TMenuItem;
    mni_mysql_reset: TMenuItem;
    procedure btn_conJsonClick(Sender: TObject);
    procedure mni_conJsonOpenClick(Sender: TObject);
    procedure mni_conJsonSaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure mni_MainOpenClick(Sender: TObject);
    procedure mni_MainResetClick(Sender: TObject);
    procedure mni_statistics_showClick(Sender: TObject);
    procedure mni_composite_showClick(Sender: TObject);
    procedure mni_mysql_clearClick(Sender: TObject);
    procedure mni_mysql_transferClick(Sender: TObject);
    procedure mni_mysql_resetClick(Sender: TObject);
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
  fStringList: TStringList;
  fPath_exe: string;

var
  frm_conJson: Tfrm_conJson;

implementation

uses
  System.JSON, FconJson_statistic, FconJson_compositeTable, DMconJson;

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
    Exit; // Точно не может быть JSON-ом.
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

// создание формы при отсутствии создаем необходимые папки lib_fds и lib_json
procedure Tfrm_conJson.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  // записываем путь к exe файлу
  fPath_exe := ExtractFileDir(ExtractFilePath(ParamStr(0)));

  if DirectoryExists('lib_fds') then

  else
    MkDir('lib_fds');

  if DirectoryExists('lib_json') then

  else
    MkDir('lib_json');

end;

procedure Tfrm_conJson.btn_conJsonClick(Sender: TObject);
var
  JSON: TJSONObject;
  JP: TJSONPair;
  mac, ver, fname, serial, selector: string;
  i: Integer;
  ftemp_mac: string;
begin
  // формируем StringList
  fStringList := TStringList.Create;
  fStringList.LoadFromFile(fPath_jsonFile);

  JSON := TJSONObject.ParseJSONValue(fStringList.Text) as TJSONObject;
  // очищаем бд
  dm_conJson.db_memTab_conJson.Close;
  // открываем бд
  dm_conJson.db_memTab_conJson.Open;
  // db_memTab_conJson.EmptyDataSet;
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

    JSON.Values[JP.JsonString.Value].TryGetValue
      ('environment.device-name', fname);
    JSON.Values[JP.JsonString.Value].TryGetValue('environment.serial#', serial);
    JSON.Values[JP.JsonString.Value].TryGetValue('selector', selector);
    JSON.Values[JP.JsonString.Value].TryGetValue('version', ver);
    dm_conJson.db_memTab_conJson.Insert;
    with dm_conJson.db_memTab_conJson.Fields do
    begin
      FieldByNumber(2).AsString := fname;
      FieldByNumber(3).AsString := selector;
      FieldByNumber(4).AsString := serial;
      FieldByNumber(5).AsString := mac;
      FieldByNumber(6).AsString := ver;
    end;
    dm_conJson.db_memTab_conJson.Next;
  end;
  btn_conJson.Enabled := False;

  // уничтожаем StringList
  fStringList.Free;
  // уничтожаем объект JSON
  JSON.Free;
  dm_conJson.db_memTab_conJson.Refresh;
//  mni_SQL_Form.Enabled := True;
end;

{ Открытие секции чтение и записи конвертируемых файлов
  ____________________________________________________________________________________________________
}
// диалог открытия файла json в секции конвертации  conJsonOpen
procedure Tfrm_conJson.mni_conJsonOpenClick(Sender: TObject);
begin
  dlgOpen_conJson.InitialDir := fPath_exe + '\lib_json';
  if dlgOpen_conJson.Execute then
  begin

    fPath_jsonFile := dlgOpen_conJson.FileName;
    btn_conJson.Enabled := True;
    if btn_conJson.CanFocus then
      btn_conJson.SetFocus;
  end;

end;

procedure Tfrm_conJson.mni_conJsonSaveClick(Sender: TObject);
var
  f_Path_FileJson: string;
begin
  dlgSave_conJson.InitialDir := fPath_exe + '\lib_fds';
  if dlgSave_conJson.Execute() then
  begin
    f_Path_FileJson := dlgSave_conJson.FileName;
    dm_conJson.db_memTab_conJson.SaveToFile(f_Path_FileJson, sfJSON);
  end;

end;


// &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
{ Открытие секции чтение и записи сконвертируемых файлов
  ____________________________________________________________________________________________________
}
// открыть сохраненый конвертируемый файл
procedure Tfrm_conJson.mni_MainOpenClick(Sender: TObject);
var
  f_Path_FileJson: string;
  f_StringList: TStringList;
begin
  dlgOpen_MainFile.InitialDir := fPath_exe + '\lib_fds';
  if dlgOpen_MainFile.Execute() then
  begin
    f_Path_FileJson := dlgOpen_MainFile.FileName;
    f_StringList := TStringList.Create;
    f_StringList.LoadFromFile(f_Path_FileJson);
    if CheckJSON(f_StringList.Text) then
    begin
      dm_conJson.db_memTab_conJson.Close;
      dm_conJson.db_memTab_conJson.Open;
      dm_conJson.db_memTab_conJson.LoadFromFile(f_Path_FileJson, sfJSON);
    end;
    f_StringList.Free;
  end;
  // сообщаем о загрузке файла БД
  ShowMessage('Файл успешно загружен!!!' + #13 + 'Переходите к окну статистики');
end;


// Переход на форму статистики
procedure Tfrm_conJson.mni_statistics_showClick(Sender: TObject);
begin
    frm_conJson_statistic.Show;
end;

// обработка кнопки Сброс
procedure Tfrm_conJson.mni_MainResetClick(Sender: TObject);
var
  i: Integer;
begin
  dbG_conJson.DataSource.DataSet.Close;
  dbG_conJson.DataSource.DataSet.Open;
end;
// переход на форму композиции
// открытие сводной таблицы
procedure Tfrm_conJson.mni_composite_showClick(Sender: TObject);
var
  f_quest: Integer;
begin
 // проверка заполняемости таблиц
  if (dm_conJson.db_memTab_conJson.RecordCount <> 0) and (dm_conJson.db_memTab_conJson_statistic.RecordCount <> 0) then
  begin
    // показ формы
    ShowMessage('Необходимые данные получены ' + #13 + 'Открываем форму для получения композита');
    frm_CompositeTable.Show;
  end
  else
  begin
    ShowMessage('Необходимые данные  не получены ' + #13 + 'Форму открыть не могу!!!');
    // вопрос о необходимости загрузки архива БД композитной таблицы
    f_quest := MessageDlg('Вы хотите заполнить композитную таблицу' + #13 + 'из архива БД', mtConfirmation, [mbYes, mbNo], 1);
    if f_quest = 6 then
    begin
       ShowMessage('Заполняем БД');
       frm_CompositeTable.mni_conJsonOpenClick(Sender);
    end;

  end;

end;



// *****************************************************************************
{  Работаем с БД MySQL
********************************************************************************
}
// чистим таблицу
procedure Tfrm_conJson.mni_mysql_clearClick(Sender: TObject);
var
  db_script: TFDScript;
begin
//  ShowMessage('Стадия отладки программы');
// проверяем наличие данных в db_memTab_CompositeTable

  if dm_conJson.db_memTab_CompositeTable.RecordCount <> 0 then
  begin
    db_script := dm_conJson.fd_script_ClearDB;
    if db_script.ValidateAll then
    begin
      // переключаем необходимые пункты меню
      mni_mysql_clear.Enabled := False;
      mni_mysql_transfer.Enabled := True;
      // чистим БД на сервере HostServer
      db_script.ExecuteAll;
      ShowMessage('Таблица в MySQL - очищена');
    end;
  end
  else
  begin
    ShowMessage('Отказано в выполнении' + #13 + 'Данные в сводной таблице отсутствуют');
  end;

end;


// Перенос БД в MySQL
procedure Tfrm_conJson.mni_mysql_transferClick(Sender: TObject);
var
  db_comp: TFDMemTable;
begin
  db_comp := dm_conJson.db_memTab_CompositeTable;
  dm_conJson.fdbtchmv_conJson_BatchMove.Execute;
end;
// cброс

procedure Tfrm_conJson.mni_mysql_resetClick(Sender: TObject);
begin
// переключаем неоюходимые пункты меню
  mni_mysql_clear.Enabled := True;
  mni_mysql_transfer.Enabled := False;
end;

{ конец блока работы с БД MySQL
********************************************************************************
}
// Закрытие формы

procedure Tfrm_conJson.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin

end;

end.
