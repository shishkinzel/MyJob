unit DParserXLS;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tdm_parserxls = class(TDataModule)
    mem_specification: TFDMemTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm_parserxls: Tdm_parserxls;

implementation

uses
  FParserXLS;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
