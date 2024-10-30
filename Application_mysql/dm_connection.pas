unit dm_connection;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.DApt, FireDAC.Comp.BatchMove, FireDAC.Comp.BatchMove.DataSet, FireDAC.Comp.BatchMove.SQL,
  FireDAC.Comp.BatchMove.Text, FireDAC.VCLUI.Login, FireDAC.Comp.UI;

type
  Tdm_Application_mysql = class(TDataModule)
    con_app_mysql: TFDConnection;
    fd_g_Date: TFDQuery;
    db_memTab_app_mysql: TFDMemTable;
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
    fd_g_fiooing_memTable: TFDQuery;
    fd_reader_db_composite_tb: TFDBatchMoveSQLReader;
    fd_move_db_composite_tb: TFDBatchMove;
    fd_manager_app_mysql: TFDManager;
    fd_reader_db_composite_tb_name: TFDBatchMoveSQLReader;
    fd_writer_name: TFDBatchMoveTextWriter;
    fd_reader_name: TFDBatchMoveSQLReader;
    fd_move_name: TFDBatchMove;
    fd_g_attempt: TFDQuery;
    fd_g_ID: TFDQuery;
    fd_g_range_attempt: TFDQuery;
    fd_g_device_name: TFDQuery;
    fd_login_app_mysql: TFDGUIxLoginDialog;
    fd_g_select_row: TFDQuery;
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

