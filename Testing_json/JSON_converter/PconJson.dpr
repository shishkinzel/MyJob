program PconJson;

uses
  Vcl.Forms,
  FconJson in 'FconJson.pas' {frm_conJson},
  FconJson_statistic in 'FconJson_statistic.pas' {frm_conJson_statistic},
  FconJson_compositeTable in 'FconJson_compositeTable.pas' {frm_CompositeTable};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_conJson, frm_conJson);
  Application.CreateForm(Tfrm_conJson_statistic, frm_conJson_statistic);
  Application.CreateForm(Tfrm_CompositeTable, frm_CompositeTable);
  Application.Run;
end.
