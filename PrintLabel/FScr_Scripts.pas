unit FScr_Scripts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TF_Scripts = class(TForm)
    mmo_pos1: TMemo;
    mmo_pos2: TMemo;
    mmo_pos3: TMemo;
    mmo_pos4: TMemo;
    btn_com_execute: TBitBtn;
    lbl_pos1: TLabel;
    lbl_pos2: TLabel;
    lbl_pos3: TLabel;
    lbl_pos4: TLabel;
    chk_on13: TCheckBox;
    edt_pos1: TEdit;
    edt_pos2: TEdit;
    edt_pos3: TEdit;
    edt_pos4: TEdit;
    img_scr_fon: TImage;
    procedure btn_com_executeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Scripts: TF_Scripts;
implementation

uses
  FShowSoft;

{$R *.dfm}
procedure TF_Scripts.btn_com_executeClick(Sender: TObject);
var
  i, j: Integer;
  f_component: string;
  f_TComponent: TMemo;
  f_TComEdit: TEdit;
begin
// стираем строковый массив для скриптов
  for i := 0 to 3 do
    frmShowSoft.f_scripts_array[i] := '';

// считываем состояние полей memo
  for j := 1 to 4 do
  begin
    f_component := 'mmo_pos' + IntToStr(j);
    f_TComponent := TMemo(FindComponent(f_component));
    for i := 0 to f_TComponent.Lines.Count - 1 do
    begin
      if chk_on13.Checked then
      begin
        frmShowSoft.f_scripts_array[j - 1] := frmShowSoft.f_scripts_array[j - 1] + f_TComponent.Lines.Strings[i] + #13;
      end
      else
      begin
        frmShowSoft.f_scripts_array[j - 1] := frmShowSoft.f_scripts_array[j - 1] + f_TComponent.Lines.Strings[i];
      end;
    end;
  end;

// стираем строковый массив для заголовков
  for i := 0 to 11 do
    frmShowSoft.f_command_array[i] := '';
  for i := 0 to 3 do
  begin
    f_component := '';
    f_component := 'edt_pos' + IntToStr(i + 1);
    f_TComEdit := TEdit(FindComponent(f_component));
    frmShowSoft.f_command_array[i] := f_TComEdit.Text;
  end;

end;

end.

