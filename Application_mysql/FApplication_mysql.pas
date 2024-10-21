unit FApplication_mysql;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  Tfrm_app_mysql = class(TForm)
    pnl_up: TPanel;
    mm_app_mysql: TMainMenu;
    pgc_app_mysql: TPageControl;
    pnl_down: TPanel;
    pnl_Main: TPanel;
    ts_one: TTabSheet;
    ts_two: TTabSheet;
    ts_three: TTabSheet;
    ts_four: TTabSheet;
    mni_msql_File: TMenuItem;
    mni_msql_connect_db: TMenuItem;
    spl_up: TSplitter;
    spl_down: TSplitter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_app_mysql: Tfrm_app_mysql;

implementation

{$R *.dfm}

end.
