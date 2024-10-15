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
    db_memTab_CompositeTable: TFDMemTable;
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
    db_memTab_CompositeTableid_key: TAutoIncField;
    db_memTab_CompositeTabledevice_name: TStringField;
    db_memTab_CompositeTabledevice_selector: TStringField;
    db_memTab_CompositeTableid_serial: TStringField;
    db_memTab_CompositeTableethaddr: TStringField;
    db_memTab_CompositeTabledevice_version: TStringField;
    db_memTab_CompositeTableattempt: TStringField;
    db_memTab_CompositeTablerequest_date: TStringField;
    db_memTab_CompositeTableproposedl_version: TStringField;
    db_memTab_CompositeTableoriginal_version: TStringField;
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
  FconJson;

{$R *.dfm}

procedure Tfrm_CompositeTable.FormCreate(Sender: TObject);
begin
  db_memTab_CompositeTable.Open;
end;

procedure Tfrm_CompositeTable.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  db_memTab_CompositeTable.Close;
end;

end.

