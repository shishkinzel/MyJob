unit FconJson_statistic;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Menus, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Buttons, FireDAC.Stan.StorageJSON;

type
  Tfrm_conJson_statistic = class(TForm)
    btn_conJson: TBitBtn;
    dlgOpen_conJson_statistic: TOpenDialog;
    dlgSave_conJson_statistic: TSaveDialog;
    mm_conJson_statistic: TMainMenu;
    mni_conJsonFile: TMenuItem;
    mni_conJsonOpen: TMenuItem;
    mni_conJsonSave: TMenuItem;
    pnl_downConJson: TPanel;
    dbG_conJson_statistic: TDBGrid;
    dbnav_conJson_statistic: TDBNavigator;
    ds_conJson_statistic: TDataSource;
    mni_MainOpen: TMenuItem;
    mni_SeparatorOne: TMenuItem;
    mni_Reset: TMenuItem;
    dlgOpen_MainFile: TOpenDialog;
    fdjson_conJson: TFDStanStorageJSONLink;
    mni_statistics_separatorOne: TMenuItem;
    procedure mni_conJsonOpenClick(Sender: TObject);
    procedure mni_conJsonSaveClick(Sender: TObject);
    procedure btn_conJsonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mni_MainOpenClick(Sender: TObject);
    procedure mni_MainResetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPath_jsonFile: string;
  fFileJson: file;
  fStringList: TStringList;

var
  frm_conJson_statistic: Tfrm_conJson_statistic;

implementation

uses
  System.JSON, FconJson, DMconJson, DateUtils;

{$R *.dfm}

// Создание формы
procedure Tfrm_conJson_statistic.FormCreate(Sender: TObject);
var
  i: Integer;
begin

end;

procedure Tfrm_conJson_statistic.btn_conJsonClick(Sender: TObject);
var
  JSON: TJSONObject;
  JP, JP2: TJSONPair;
  attempt, original, proposed, date, serial, selector: string;
  maxid: Integer;
  ftemp_mac: string;
  fdate: TDateTime;
begin
// гасим кнопку
   btn_conJson.Enabled := False;
  // формируем StringList
  fStringList := TStringList.Create;
  fStringList.LoadFromFile(fPath_jsonFile);

  JSON := TJSONObject.ParseJSONValue(fStringList.Text) as TJSONObject;
  // очищаем бд
  dm_conJson.db_memTab_conJson_statistic.Close;
  // открываем бд
  dm_conJson.db_memTab_conJson_statistic.Open;

  // перебираем идентификаторы устройств
  for JP in JSON do
  begin
    // ищем максимальный номер 1,2,3... внутри идентификатора
    maxid := 0;
    for JP2 in JP.JsonValue as TJSONObject do
    begin
      if maxid < JP2.JsonString.Value.ToInteger then
        maxid := JP2.JsonString.Value.ToInteger;
    end;
    // берем нужные поля по Идентификатору и максимальному номеру
    JSON.Values[JP.JsonString.Value].TryGetValue
      (maxid.ToString + '.current-firmware-version', original);
    JSON.Values[JP.JsonString.Value].TryGetValue
      (maxid.ToString + '.proposed-firmware-version', proposed);
    JSON.Values[JP.JsonString.Value].TryGetValue
      (maxid.ToString + '.request-date', date);
    JSON.Values[JP.JsonString.Value].TryGetValue
      (maxid.ToString + '.requested-serial', serial);
    JSON.Values[JP.JsonString.Value].TryGetValue(maxid.ToString + '.selector',
      selector);

    // преобразовываем строку в дату
    fdate := ISO8601ToDate(date, False);

    dm_conJson.db_memTab_conJson_statistic.Insert;
    with dm_conJson.db_memTab_conJson_statistic.Fields do
    begin
      FieldByNumber(2).AsInteger := maxid;
      FieldByNumber(3).AsString := selector;
      FieldByNumber(4).AsString := serial;
      FieldByNumber(5).AsDateTime := fdate;
      FieldByNumber(6).AsString := original;
      FieldByNumber(7).AsString := proposed;
    end;
    dm_conJson.db_memTab_conJson_statistic.Next;
  end;
  // уничтожаем StringList
  fStringList.Free;
  dm_conJson.db_memTab_conJson_statistic.Refresh;
  // уничтожаем объект JSON
  JSON.Free;
  frm_conJson.mni_SQL_Form_direct.Enabled := True;
  // Сообщаем о готовности таблицы
  ShowMessage('Поздравляем!!!' + #13 + 'Таблица сформирована');
  Self.Close;
end;


{ Открытие секции чтение и записи конвертируемых файлов
  ____________________________________________________________________________________________________
}
procedure Tfrm_conJson_statistic.mni_conJsonOpenClick(Sender: TObject);
begin
  dlgOpen_conJson_statistic.InitialDir := fPath_exe + '\lib_json';
  if dlgOpen_conJson_statistic.Execute then
  begin
    fPath_jsonFile := dlgOpen_conJson_statistic.FileName;
    btn_conJson.Enabled := True;
    if btn_conJson.CanFocus then
      btn_conJson.SetFocus;
  end;
  if frm_conJson_statistic.CanFocus then
    frm_conJson_statistic.SetFocus;
end;

procedure Tfrm_conJson_statistic.mni_conJsonSaveClick(Sender: TObject);
var
  f_Path_FileJson: string;
begin
  dlgSave_conJson_statistic.InitialDir := fPath_exe + '\lib_fds';
  if dlgSave_conJson_statistic.Execute() then
  begin
    f_Path_FileJson := dlgSave_conJson_statistic.FileName;
    dm_conJson.db_memTab_conJson_statistic.SaveToFile(f_Path_FileJson, sfJSON);
  end;

end;




// &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
{ Открытие секции чтение и записи сконвертируемых файлов
  ____________________________________________________________________________________________________
}
// открыть сохраненый конвертируемый файл
procedure Tfrm_conJson_statistic.mni_MainOpenClick(Sender: TObject);
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
      dm_conJson.db_memTab_conJson_statistic.Close;
      dm_conJson.db_memTab_conJson_statistic.Open;
      dm_conJson.db_memTab_conJson_statistic.LoadFromFile(f_Path_FileJson, sfJSON);
    end;
    f_StringList.Free;
    // сообщаем о загрузке файла БД и закрываем окно
    ShowMessage('Файл успешно загружен!!!' + #13 + 'Закрываем окно статистики');
    Self.Close;
  end;

end;

// *************************************************************************************************

// обработка кнопки Сброс
procedure Tfrm_conJson_statistic.mni_MainResetClick(Sender: TObject);
begin
  dbG_conJson_statistic.DataSource.DataSet.Close;
  dbG_conJson_statistic.DataSource.DataSet.Open;
  // зажигаем кнопку
   btn_conJson.Enabled := True;
end;

// Закрытие формы
procedure Tfrm_conJson_statistic.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin

end;

end.
