program PParserXLS;

uses
  Vcl.Forms,
  FParserXLS in 'FParserXLS.pas' {frm_ParserXLS},
  DParserXLS in 'DParserXLS.pas' {dm_parserxls: TDataModule},
  expfilter in 'expfilter.pas',
  oofice in 'oofice.pas',
  uOpenOffice in 'uOpenOffice.pas',
  xlsexport in 'xlsexport.pas',
  Vcl.Themes,
  Vcl.Styles,
  CursorHelper in 'CursorHelper.pas';

{$R *.res}

begin
    ReportMemoryLeaksOnShutdown := True; // проверка очистки памяти

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Light Slate');
  Application.CreateForm(Tfrm_ParserXLS, frm_ParserXLS);
  Application.CreateForm(Tdm_parserxls, dm_parserxls);
  Application.Run;
end.
