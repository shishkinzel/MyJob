program PApplication_mysql;

uses
  Vcl.Forms,
  FApplication_mysql in 'FApplication_mysql.pas' {frm_app_mysql};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_app_mysql, frm_app_mysql);
  Application.Run;
end.
