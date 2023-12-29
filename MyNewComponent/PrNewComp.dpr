program PrNewComp;

uses
  Vcl.Forms,
  FMain in 'FMain.pas' {frm_NewComp},
  BtnBeep in '..\..\..\NewComponent\Class_button\BtnBeep.pas',
  uListAdd in '..\..\..\NewComponent\Class_button\uListAdd.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_NewComp, frm_NewComp);
  Application.Run;
end.
