program PrNewComp;

uses
  Vcl.Forms,
  FMain in 'FMain.pas' {frm_NewComp};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_NewComp, frm_NewComp);
  Application.Run;
end.
