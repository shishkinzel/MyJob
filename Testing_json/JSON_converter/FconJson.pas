﻿unit FconJson;

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
    mni_OneSeparator: TMenuItem;
    mni_conJson_statistic_transfer: TMenuItem;
    procedure btn_conJsonClick(Sender: TObject);
    procedure mni_conJsonOpenClick(Sender: TObject);
    procedure mni_conJsonSaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure mni_conJson_statistic_transferClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPath_jsonFile: string;
  fFileJson: file;
  fStringList : TStringList;
var
  frm_conJson: Tfrm_conJson;

implementation

uses
  System.JSON, FconJson_statistic;

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
  i: Integer;
  ftemp_mac: string;
begin

  JSON := TJSONObject.ParseJSONValue(fStringList.Text) as TJSONObject;

  // открываем бд
  db_memTab_conJson.Open;

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

// уничтожаем объект JSON
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


// Переход на форму статистики

procedure Tfrm_conJson.mni_conJson_statistic_transferClick(Sender: TObject);
begin
    frm_conJson_statistic.Show;
end;

// Закрытие формы

procedure Tfrm_conJson.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fStringList.Free;
   db_memTab_conJson.Active := False;
end;


end.
