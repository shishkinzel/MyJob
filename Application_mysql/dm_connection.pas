unit dm_connection;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.DApt, FireDAC.Comp.BatchMove, FireDAC.Comp.BatchMove.DataSet, FireDAC.Comp.BatchMove.SQL,
  FireDAC.Comp.BatchMove.Text, FireDAC.VCLUI.Login, FireDAC.Comp.UI, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Phys.SQLiteVDataSet, FireDAC.FMXUI.Login, DBLogDlg,
  FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase,
  FireDAC.Phys.FB, FireDAC.VCLUI.Error, FireDAC.Stan.Consts, Winapi.Windows;

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
    fd_g_All_Table: TFDQuery;
    fd_writer_name: TFDBatchMoveTextWriter;                 // запись в combobox наименования устройств
    fd_reader_name: TFDBatchMoveSQLReader;                  // запрос на чтение из таблицы
    fd_move_name: TFDBatchMove;                             // перемещение device_name с сортировкой по устройству
    fd_g_attempt: TFDQuery;
    fd_g_All_row: TFDQuery;
    fd_g_Mac: TFDQuery;
    fd_g_Select_One: TFDQuery;                             // запрос в первой вкладке
    fd_g_Select_Two: TFDQuery;                             // запрос во второй вкладке
    fd_g_Select_Three: TFDQuery;                           // запрос в третьей вкладке
    fd_g_Select_Four: TFDQuery;                            // запрос в четвертой вкладке
    fd_g_Select_Five: TFDQuery;
    con_MemTable: TFDConnection;
    fd_loc_sql_Table: TFDLocalSQL;
    fd_g_Select_mt_one: TFDQuery;
    fd_move_MemTable: TFDBatchMove;
    fd_reader_MemTable: TFDBatchMoveSQLReader;
    fd_writer_MemTable: TFDBatchMoveDataSetWriter;
    fd_g_Select_mt_two: TFDQuery;
    fd_g_Select_mt_three: TFDQuery;
    fd_g_Select_mt_four: TFDQuery;
    fd_g_Select_mt_five: TFDQuery;
    fd_g_Select_six: TFDQuery;
    fd_g_Select_mt_six: TFDQuery;
    fd_manager_app_mysql: TFDManager;
    fd_login_app_mysql: TFDGUIxLoginDialog;                            // запрос в пятое вкладке
    procedure DataModuleCreate(Sender: TObject);


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
// событие регистрации пользователя
procedure Tdm_Application_mysql.DataModuleCreate(Sender: TObject);
var
  SL: TStringList;
const
  DialogCaption = 'Отказано в доступе к БД';
begin
// как запустить авторизацию в mysql

{  Вариант подключения с помощью менеджера соединения }
  SL := TStringList.Create;
  SL.Add('DriverID=MySQL');
  SL.Add('Server=172.17.17.76');
  SL.Add('Port=3306');
  SL.Add('CharacterSet=utf8');
{  SL.Add('User_Name=admin');
  SL.Add('password=admin');  }

  fd_manager_app_mysql.AddConnectionDef('MySQL_AngTel', 'MySQL', SL);

  con_app_mysql.LoginPrompt := True;
  con_app_mysql.ConnectionDefName := 'MySQL_AngTel';
  try
    con_app_mysql.Open();
  except
    on E: EFDException do
      if E.FDCode = er_FD_ClntDbLoginAborted then //пользователь выбрал кнопку <Cancel>
        MessageBox(0, PChar('Пользователь отказался от соединения'), DialogCaption, MB_ICONSTOP + MB_OK); // user pressed Cancel button in Login dialog
    on E: EFDDBEngineException do
      case E.Kind of
        ekUserPwdInvalid:
          MessageBox(0, PChar('Проверьте логин/пароль!'), DialogCaption, MB_ICONERROR + MB_OK);
        ekUserPwdExpired:
          MessageBox(0, PChar('Пароль не верен!'), DialogCaption, MB_ICONERROR + MB_OK);
        ekServerGone:
          MessageBox(0, PChar('Нет доступа к серверу!'), DialogCaption, MB_ICONERROR + MB_OK);
      else          //другие варианты ИС
      end;
  end;
{
_________________________________________________________________
}
  fd_writer_name.Stream := frm_app_mysql.f_streem_name;
  con_MemTable.Connected := True;
  fd_loc_sql_Table.Active := True;
  fd_move_MemTable.Execute;
end;

end.

