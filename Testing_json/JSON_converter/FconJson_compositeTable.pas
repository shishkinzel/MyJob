unit FconJson_compositeTable;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Menus, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrm_CompositeTable = class(TForm)
    btn_conJson_CompositeTable: TBitBtn;
    dlgOpen_CompositeTable: TOpenDialog;
    dlgSave_CompositeTable: TSaveDialog;
    mm_CompositeTable: TMainMenu;
    mni_conJsonFile: TMenuItem;
    mni_conJsonOpen: TMenuItem;
    mni_conJsonSave: TMenuItem;
    pnl_downConJson: TPanel;
    dbG_conJson_statistic: TDBGrid;
    dbnav_conJson_statistic: TDBNavigator;
    ds_CompositeTable: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CompositeTable: Tfrm_CompositeTable;

implementation

uses
  FconJson, DMconJson;

{$R *.dfm}

procedure Tfrm_CompositeTable.FormCreate(Sender: TObject);
var
i : Integer;
begin

end;

procedure Tfrm_CompositeTable.FormClose(Sender: TObject; var Action: TCloseAction);
var
i : Integer;
begin

end;

end.

