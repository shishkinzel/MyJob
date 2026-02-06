unit FScr_Scripts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

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
i : Integer;
begin
// считываем состояние полей memo
//   frmShowSoft.f_st_ls1.add
end;

end.
