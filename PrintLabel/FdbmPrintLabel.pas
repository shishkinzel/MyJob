unit FdbmPrintLabel;

interface

uses
  System.SysUtils, System.Classes;

type
  TdbmPrintLabel = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dbmPrintLabel: TdbmPrintLabel;

implementation

uses
  FMain;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
