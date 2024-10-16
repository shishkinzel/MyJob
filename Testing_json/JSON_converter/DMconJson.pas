unit DMconJson;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.StorageJSON, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tdm_conJson = class(TDataModule)
    db_memTab_conJson_statistic: TFDMemTable;
    db_memTab_conJson_statisticid_key_statistic: TAutoIncField;
    db_memTab_conJson_statisticattempt: TStringField;
    db_memTab_conJson_statisticselector: TStringField;
    db_memTab_conJson_statisticrequest_serial: TStringField;
    db_memTab_conJson_statisticrequest_date: TStringField;
    db_memTab_conJson_statisticoriginal_version: TStringField;
    db_memTab_conJson_statisticproposed_version: TStringField;
    db_memTab_conJson: TFDMemTable;
    db_memTab_conJsonId_key_db: TAutoIncField;
    db_memTab_conJsondeviceName: TStringField;
    db_memTab_conJsonselector: TStringField;
    db_memTab_conJsonserialId: TStringField;
    db_memTab_conJsonethaddr: TStringField;
    db_memTab_conJsonversion: TStringField;
    db_memTab_CompositeTable: TFDMemTable;
    db_memTab_CompositeTableid_key: TAutoIncField;
    db_memTab_CompositeTabledevice_name: TStringField;
    db_memTab_CompositeTabledevice_selector: TStringField;
    db_memTab_CompositeTableid_serial: TStringField;
    db_memTab_CompositeTableethaddr: TStringField;
    db_memTab_CompositeTabledevice_version: TStringField;
    db_memTab_CompositeTableattempt: TStringField;
    db_memTab_CompositeTablerequest_date: TStringField;
    db_memTab_CompositeTableoriginal_version: TStringField;
    db_memTab_CompositeTableproposedl_version: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm_conJson: Tdm_conJson;

implementation

uses
  FconJson, FconJson_compositeTable, FconJson_statistic;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm_conJson.DataModuleCreate(Sender: TObject);
begin
  db_memTab_conJson_statistic.Active := True;
  db_memTab_conJson.Active := True;
  db_memTab_CompositeTable.Active := True;
end;

procedure Tdm_conJson.DataModuleDestroy(Sender: TObject);
begin
  db_memTab_conJson_statistic.Active := False;
  db_memTab_conJson.Active := False;
   db_memTab_CompositeTable.Active := False;
end;

end.

