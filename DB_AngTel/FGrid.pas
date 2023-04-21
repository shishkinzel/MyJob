unit FGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, Data.DB, Vcl.DBCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls;

type
  TfrmGrid = class(TForm)
    pnlTop: TPanel;
    splTop: TSplitter;
    pnlDown: TPanel;
    splDown: TSplitter;
    pnlMain: TPanel;
    dbG_Dev: TDBGridEh;
    dbnav_Dev: TDBNavigator;
    ds_Dev: TDataSource;
    dbnav_DevAll: TDBNavigator;
    dbG_DevAll: TDBGridEh;
    ds_DevAll: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrid: TfrmGrid;

implementation

uses
  FMain, FdbMain;

{$R *.dfm}

end.
