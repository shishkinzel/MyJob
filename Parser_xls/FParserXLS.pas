unit FParserXLS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus,
  DParserXLS, expfilter, xlsexport, oofice, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.ComCtrls;    // подсоединеные формы

type
  Tfrm_ParserXLS = class(TForm)
    pnl_App: TPanel;
    mm_parserxls: TMainMenu;
    mni_main_File: TMenuItem;
    spl_app: TSplitter;
    pnl_Down: TPanel;
    spl_down: TSplitter;
    pnl_Main: TPanel;
    mmo1: TMemo;
    pgc_xls: TPageControl;
    ts_one: TTabSheet;
    ts_two: TTabSheet;
    nv_two: TDBNavigator;
    grid_two: TDBGrid;
    ds_two: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ParserXLS: Tfrm_ParserXLS;

implementation

{$R *.dfm}

procedure Tfrm_ParserXLS.FormCreate(Sender: TObject);
var
  XLS : TXLSExporter;
  S : TStringArray;
  tmp : String;
  i,j : Integer;
begin
  XLS := TXLSExporter.Create(ExtractFilePath(Application.ExeName));
  XLS.OpenFile('test.xlsx',false);
  j := 1;
  while True do
  begin
    S :=  XLS.ReadString(50);
//    if S[0] = '' then
//      Break;
//    for i := 0 to High(S)  do
//      sg1.Cells [i + 1, j] := S[i];
    if (S[7] <> '') and (StrToIntDef (S[14],-1) > 0) then
    mmo1.lines.Add(S[7] + ' - штук - ' + S[14]);
    inc (j);
     if j > 300 then
        break;
  end;
  XLS.CloseFile('');
end;

end.
