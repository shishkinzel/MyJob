program PParserXLS;

uses
  Vcl.Forms,
  FParserXLS in 'FParserXLS.pas' {frm_ParserXLS},
  DParserXLS in 'DParserXLS.pas' {dm_parserxls: TDataModule},
  expfilter in 'expfilter.pas',
  oofice in 'oofice.pas',
  uOpenOffice in 'uOpenOffice.pas',
  xlsexport in 'xlsexport.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_ParserXLS, frm_ParserXLS);
  Application.CreateForm(Tdm_parserxls, dm_parserxls);
  Application.Run;
end.
