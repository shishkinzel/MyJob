unit dmRepairBase;

interface

uses
  System.SysUtils, System.Classes;

type
  Tdm_RepairBase = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm_RepairBase: Tdm_RepairBase;

implementation

uses
  FRepairBase;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
