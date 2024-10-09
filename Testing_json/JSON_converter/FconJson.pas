unit FconJson;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tfrm_conJson = class(TForm)
    mmo_conJson: TMemo;
    btn_conJson: TBitBtn;
    mm_conJson: TMainMenu;
    mni_conJsonFile: TMenuItem;
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
    procedure btn_conJsonClick(Sender: TObject);
    procedure mni_conJsonOpenClick(Sender: TObject);
    procedure mni_conJsonSaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  cJsonStr = '{' + '"firstName": "Петров",' + '"lastName": "Пётр",' + '"address": {' + '    "streetAddress": "ул. Дельфийская, 101, кв.101",' + '    "city": "Дельфийск",' + '    "postalCode": "100301"' + '},' + '"phoneNumbers": [' + '    "812 123-1234",' + '    "916 123-4567"' + ']' + '}';
  cLogString = 'Depth: %d, Key: %s; Path: %s; Value: %s';

var
  fPath_jsonFile: string;
  fFileJson: file;
  fStringList : TStringList;


var
  frm_conJson: Tfrm_conJson;

implementation
uses System.JSON;

{$R *.dfm}

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
begin

  JSON := TJSONObject.ParseJSONValue(fStringList.Text) as TJSONObject;
                // перебираем идентификаторы устройств
  for JP in JSON do
  begin
    // берем нужные поля по Идентификатору
    JSON.Values[JP.JsonString.Value].TryGetValue('environment.device-name', fname);
    JSON.Values[JP.JsonString.Value].TryGetValue('environment.ethaddr', mac);
    JSON.Values[JP.JsonString.Value].TryGetValue('environment.serial#', serial);
    JSON.Values[JP.JsonString.Value].TryGetValue('selector', selector);
    JSON.Values[JP.JsonString.Value].TryGetValue('version', ver);

    // печатаем
    mmo_conJson.Lines.Add(JP.JsonString.Value);
    mmo_conJson.Lines.Add(fname);
    mmo_conJson.Lines.Add(ver);
    mmo_conJson.Lines.Add(mac);
    mmo_conJson.Lines.Add(serial);
    mmo_conJson.Lines.Add(selector);

  end;
  JSON.Free;

end;

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
  end;
end;

procedure Tfrm_conJson.mni_conJsonSaveClick(Sender: TObject);
var
  i: Integer;
  f_fileTemp: file;
  f_Path_FileJson: string;
begin
  dlgSave_conJson.Execute();
end;

// Закрытие формы

procedure Tfrm_conJson.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fStringList.Free;
   db_memTab_conJson.Active := False;
end;


end.

