unit dm_connection;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.DApt, FireDAC.Comp.BatchMove, FireDAC.Comp.BatchMove.DataSet, FireDAC.Comp.BatchMove.SQL,
  FireDAC.Comp.BatchMove.Text, FireDAC.VCLUI.Login, FireDAC.Comp.UI, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Phys.SQLiteVDataSet;

type
  Tdm_Application_mysql = class(TDataModule)
    con_app_mysql: TFDConnection;
    db_memTab_app_mysql: TFDMemTable;                    // Таблица для хранения запроса БД из MySQL
    db_memTab_app_mysqlid_key: TAutoIncField;
    db_memTab_app_mysqldevice_name: TStringField;
    db_memTab_app_mysqldevice_selector: TStringField;
    db_memTab_app_mysqlid_serial: TStringField;
    db_memTab_app_mysqlethaddr: TStringField;
    db_memTab_app_mysqldevice_version: TStringField;
    intgrfld_memTab_CompositeTableattempt: TIntegerField;
    dtmfld_memTab_CompositeTablerequest_date: TDateTimeField;
    db_memTab_app_mysqloriginal_version: TStringField;
    db_memTab_app_mysqlproposed_version: TStringField;
    con_app_shishkinzel: TFDConnection;
    fd_g_All_Table: TFDQuery;
    fd_manager_app_mysql: TFDManager;
    fd_writer_name: TFDBatchMoveTextWriter;                 // запись в combobox наименования устройств
    fd_reader_name: TFDBatchMoveSQLReader;                  // запрос на чтение из таблицы
    fd_move_name: TFDBatchMove;                             // перемещение device_name с сортировкой по устройству
    fd_g_attempt: TFDQuery;                                 // запрос на выдачу кол-ва попыток min и max
    fd_login_app_mysql: TFDGUIxLoginDialog;
    fd_g_All_row: TFDQuery;
    fd_g_Mac: TFDQuery;
    fd_g_Select_One: TFDQuery;                             // запрос в первой вкладке
    fd_g_Select_Two: TFDQuery;                             // запрос во второй вкладке
    fd_g_Select_Three: TFDQuery;                           // запрос в третьей вкладке
    fd_g_Select_Four: TFDQuery;                            // запрос в четвертой вкладке
    fd_g_Select_Five: TFDQuery;
    con_MemTable: TFDConnection;
    fd_loc_sql_Table: TFDLocalSQL;
    fd_g_Select_MemTable: TFDQuery;                            // запрос в пятое вкладке
    procedure DataModuleCreate(Sender: TObject);
    procedure fd_login_app_mysqlLogin(ASender: TObject; var AResult: Boolean);
    procedure fd_login_app_mysqlShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm_Application_mysql: Tdm_Application_mysql;

implementation

uses
  FApplication_mysql;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


procedure Tdm_Application_mysql.DataModuleCreate(Sender: TObject);
begin
  fd_writer_name.Stream := frm_app_mysql.f_streem_name;
  con_MemTable.Connected := True;
  fd_loc_sql_Table.Active := True;

end;




// событие регистрации пользователя
procedure Tdm_Application_mysql.fd_login_app_mysqlLogin(ASender: TObject; var AResult: Boolean);
var
I : Integer;
begin

end;
// событие вывода диалога на экран
procedure Tdm_Application_mysql.fd_login_app_mysqlShow(Sender: TObject);
var
I : Integer;
begin

end;

end.

