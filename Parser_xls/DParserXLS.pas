unit DParserXLS;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tdm_parserxls = class(TDataModule)
    mem_specification: TFDMemTable;
    mem_db_angtelTMC: TFDMemTable;
    atncfld_db_angtelTMC_num: TAutoIncField;
    strngfld_db_angtelTMC_name: TStringField;
    strngfld_db_angtelTMC_code: TStringField;
    atncfld_specification_num: TAutoIncField;
    strngfld_specification_name: TStringField;
    strngfld_specification_quantity: TStringField;
    strngfld_specification_codetmc: TStringField;
    strngfld_specificationnote: TStringField;
    mem_list_of_elements: TFDMemTable;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    strngfld_list_of_elements_position: TStringField;
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