unit DMconJson;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.StorageJSON, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, FireDAC.DApt, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.Phys.SQLiteDef, FireDAC.Phys.SQLite, FireDAC.Comp.BatchMove.SQL,
  FireDAC.Comp.BatchMove.DataSet, FireDAC.Comp.BatchMove, FireDAC.Comp.BatchMove.Text;

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
    db_memTab_CompositeTabledevice_name: TStringField;
    db_memTab_CompositeTabledevice_selector: TStringField;
    db_memTab_CompositeTableid_serial: TStringField;
    db_memTab_CompositeTableethaddr: TStringField;
    db_memTab_CompositeTabledevice_version: TStringField;
    db_memTab_CompositeTableattempt: TStringField;
    db_memTab_CompositeTablerequest_date: TStringField;
    db_memTab_CompositeTableoriginal_version: TStringField;
    db_memTab_CompositeTableproposed_version: TStringField;
    db_memTab_CompositeTableid_key: TAutoIncField;
    con_DB_MySQL: TFDConnection;
    fdtbldptr_dm_conJson: TFDTableAdapter;
    fdcmnd_One: TFDCommand;
    fdcmnd_Two: TFDCommand;
    fdcmnd_Three: TFDCommand;
    fdcmnd_Four: TFDCommand;
    fdcmnd_Five: TFDCommand;
    fdbtchmvtxtrdr_conJson: TFDBatchMoveTextReader;
    fdbtchmvdtstrdr_conJson_reader: TFDBatchMoveDataSetReader;
    fdbtchmvsqlwrtr_conJson_writer: TFDBatchMoveSQLWriter;
    fdbtchmv_conJson_BatchMove: TFDBatchMove;
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

