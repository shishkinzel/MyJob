program PconJson;

uses
  Vcl.Forms,
  FconJson in 'FconJson.pas' {frm_conJson};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_conJson, frm_conJson);
  Application.Run;
end.
