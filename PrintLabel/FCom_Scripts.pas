unit FCom_Scripts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TF_Command = class(TForm)
    lb_ed_pos_1: TLabeledEdit;
    lb_ed_pos_2: TLabeledEdit;
    lb_ed_pos_4: TLabeledEdit;
    lb_ed_pos_3: TLabeledEdit;
    lb_ed_pos_6: TLabeledEdit;
    lb_ed_pos_5: TLabeledEdit;
    lb_ed_pos_12: TLabeledEdit;
    lb_ed_pos_11: TLabeledEdit;
    lb_ed_pos_10: TLabeledEdit;
    lb_ed_pos_9: TLabeledEdit;
    lb_ed_pos_8: TLabeledEdit;
    lb_ed_pos_7: TLabeledEdit;
    img_com_one: TImage;
    btn_com_apply: TBitBtn;
    procedure btn_com_applyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Command: TF_Command;

implementation

uses
  FShowSoft;

{$R *.dfm}

procedure TF_Command.btn_com_applyClick(Sender: TObject);
var
  i: Integer;
  f_component: string;
  f_TComponent: TLabeledEdit;
begin
  for i := 0 to 11 do
  begin
    f_component := 'lb_ed_pos_' + IntToStr(i + 1);
    f_TComponent := TLabeledEdit(FindComponent(f_component));
    frmShowSoft.f_command_array[i] := f_TComponent.Text;
  end;
end;

end.

