program PApplication_mysql;

uses
  Vcl.Forms,
  FApplication_mysql in 'FApplication_mysql.pas' {frm_app_mysql},
  dm_connection in 'dm_connection.pas' {dm_Application_mysql: TDataModule},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Просмотр обновлений устройств';
  TStyleManager.TrySetStyle('Aqua Light Slate');
  Application.CreateForm(Tfrm_app_mysql, frm_app_mysql);
  Application.CreateForm(Tdm_Application_mysql, dm_Application_mysql);
  Application.Run;
end.
