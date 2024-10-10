program PconJson;

uses
  Vcl.Forms,
  FconJson in 'FconJson.pas' {frm_conJson},
  FconJson_statistic in 'FconJson_statistic.pas' {frm_conJson_statistic};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_conJson, frm_conJson);
  Application.CreateForm(Tfrm_conJson_statistic, frm_conJson_statistic);
  Application.Run;
end.
