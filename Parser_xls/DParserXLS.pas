unit DParserXLS;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, FireDAC.Comp.Script, FireDAC.Comp.BatchMove.SQL,
  FireDAC.Comp.BatchMove, FireDAC.Comp.BatchMove.DataSet, Vcl.DBGrids;

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
    con_db_angtel_assortment: TFDConnection;
    fd_script_clear: TFDScript;
    mv_tmc: TFDBatchMove;
    read_mv_tmc: TFDBatchMoveDataSetReader;
    write_mv_tmc: TFDBatchMoveSQLWriter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;



var
  dm_parserxls: Tdm_parserxls;

procedure DrawingGridOne(const ac_grid: TDBGrid);

procedure DrawingGridTwo(const ac_grid: TDBGrid);

procedure DrawingGridThree(const ac_grid: TDBGrid);

implementation

uses
  FParserXLS;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
procedure DrawingGridOne(const ac_grid: TDBGrid);
begin

  with ac_grid do
  begin
    Columns[0].Width := 50;
    Columns[0].Title.Alignment := taCenter;
    Columns[0].Title.Caption := '№';
    Columns[1].Width := 765;
    Columns[1].Title.Alignment := taCenter;
    Columns[1].Title.Caption := 'Наименование изделия';
    Columns[2].Width := 135;
    Columns[2].Title.Alignment := taCenter;
    Columns[2].Title.Caption := 'Код ТМЦ';

  end;
end;

procedure DrawingGridTwo(const ac_grid: TDBGrid);
begin
  with ac_grid do
  begin
    Columns[0].Width := 50;
    Columns[0].Title.Alignment := taCenter;
    Columns[0].Title.Caption := '№';
    Columns[1].Width := 560;
    Columns[1].Title.Alignment := taCenter;
    Columns[1].Title.Caption := 'Наименование изделия';
    Columns[2].Width := 40;
    Columns[2].Title.Alignment := taCenter;
    Columns[2].Title.Caption := 'Кол-во';
    Columns[3].Width := 135;
    Columns[3].Title.Alignment := taCenter;
    Columns[3].Title.Caption := 'Код ТМЦ';
    Columns[4].Width := 170;
    Columns[4].Title.Alignment := taCenter;
    Columns[4].Title.Caption := 'Примечание';
  end;
end;

procedure DrawingGridThree(const ac_grid: TDBGrid);
begin
  with ac_grid do
  begin
    Columns[0].Width := 50;
    Columns[0].Title.Alignment := taCenter;
    Columns[0].Title.Caption := '№';
    Columns[1].Width := 120;
    Columns[1].Title.Alignment := taCenter;
    Columns[1].Title.Caption := 'Поз. обозначение';
    Columns[2].Width := 580;
    Columns[2].Title.Alignment := taCenter;
    Columns[2].Title.Caption := 'Наименование элемента';
    Columns[3].Width := 40;
    Columns[3].Title.Alignment := taCenter;
    Columns[3].Title.Caption := 'Кол-во';
    Columns[4].Width := 135;
    Columns[4].Title.Alignment := taCenter;
    Columns[4].Title.Caption := 'Код ТМЦ';
  end;
end;

end.

