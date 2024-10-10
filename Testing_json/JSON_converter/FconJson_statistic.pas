unit FconJson_statistic;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Menus, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrm_conJson_statistic = class(TForm)
    btn_conJson: TBitBtn;
    db_memTab_conJson_statistic: TFDMemTable;
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
    db_memTab_conJson_statisticid_key_statistic: TAutoIncField;
    db_memTab_conJson_statisticoriginal_version: TStringField;
    db_memTab_conJson_statisticproposed_version: TStringField;
    db_memTab_conJson_statisticrequest_date: TStringField;
    db_memTab_conJson_statisticrequest_serial: TStringField;
    db_memTab_conJson_statisticselector: TStringField;
    db_memTab_conJson_statisticattempt: TStringField;
    procedure mni_conJsonOpenClick(Sender: TObject);
    procedure mni_conJsonSaveClick(Sender: TObject);
    procedure btn_conJsonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
  System.JSON, FconJson;

{$R *.dfm}


// Создание формы
procedure Tfrm_conJson_statistic.FormCreate(Sender: TObject);
begin
  db_memTab_conJson_statistic.Active := True;
end;

procedure Tfrm_conJson_statistic.btn_conJsonClick(Sender: TObject);
var
  JSON: TJSONObject;
  JP, JP2: TJSONPair;
  attempt, original, proposed, date, serial, selector: string;
  maxid: Integer;
  ftemp_mac: string;
begin

  JSON := TJSONObject.ParseJSONValue(fStringList.Text) as TJSONObject;

  // открываем бд
  db_memTab_conJson_statistic.Open;

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
    JSON.Values[JP.JsonString.Value].TryGetValue(maxid.ToString + '.original-firmware-version', original);
    JSON.Values[JP.JsonString.Value].TryGetValue(maxid.ToString + '.proposed-firmware-version', proposed);
    JSON.Values[JP.JsonString.Value].TryGetValue(maxid.ToString + '.request-date', date);
    JSON.Values[JP.JsonString.Value].TryGetValue(maxid.ToString + '.requested-serial', serial);
    JSON.Values[JP.JsonString.Value].TryGetValue(maxid.ToString + '.selector', selector);

    db_memTab_conJson_statistic.Insert;
    with db_memTab_conJson_statistic.Fields do
    begin
      FieldByNumber(2).AsString := maxid.ToString;
      FieldByNumber(3).AsString := selector;
      FieldByNumber(4).AsString := serial;
      FieldByNumber(5).AsString := date;
      FieldByNumber(6).AsString := original;
      FieldByNumber(7).AsString := proposed;
    end;
    db_memTab_conJson_statistic.Next;
  end;

// уничтожаем объект JSON
    JSON.Free;


end;



procedure Tfrm_conJson_statistic.mni_conJsonOpenClick(Sender: TObject);
var
  i: Integer;
  f_fileTemp: file;
  f_Path_FileJson: string;
begin
  if dlgOpen_conJson_statistic.Execute then
  begin
    f_Path_FileJson := dlgOpen_conJson_statistic.FileName;
    fStringList := TStringList.Create;
    fStringList.LoadFromFile(f_Path_FileJson);
  end;
end;

procedure Tfrm_conJson_statistic.mni_conJsonSaveClick(Sender: TObject);
var
  i: Integer;
  f_fileTemp: file;
  f_Path_FileJson: string;
begin
  dlgSave_conJson_statistic.Execute();
end;


// Закрытие формы
procedure Tfrm_conJson_statistic.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fStringList.Free;
  db_memTab_conJson_statistic.Active := False;
end;

end.

