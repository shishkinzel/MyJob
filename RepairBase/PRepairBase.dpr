program PRepairBase;

uses
  Vcl.Forms,
  FRepairBase in 'FRepairBase.pas' {frmRepairBase},
  dmRepairBase in 'dmRepairBase.pas' {dm_RepairBase: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmRepairBase, frmRepairBase);
  Application.CreateForm(Tdm_RepairBase, dm_RepairBase);
  Application.Run;
end.
