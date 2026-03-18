unit FUpg_soft;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.Imaging.pngimage;

type
  TF_upg_soft = class(TForm)
    me_upg_soft_MAC: TMaskEdit;
    me_upg_soft_ID: TMaskEdit;
    btn_upg_soft_add: TBitBtn;
    btn_upg_soft_close: TBitBtn;
    lb_upg_soft_counter: TLabeledEdit;
    lbl_upg_soft_id: TLabel;
    lbl_upg_soft_mac: TLabel;
    img_upg_soft_fon: TImage;
    procedure FormShow(Sender: TObject);
    procedure me_upg_soft_MACKeyPress(Sender: TObject; var Key: Char);
    procedure btn_upg_soft_addClick(Sender: TObject);
    procedure btn_upg_soft_closeClick(Sender: TObject);
//    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_upg_soft: TF_upg_soft;

implementation

uses
  FShowSoft, IdGlobal;
{$R *.dfm}
// переход по нажатию кнопки "Ввод" - enter
{  Что-то не работает
}
//procedure TF_upg_soft.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//begin
//  if (Key = VK_RETURN) then
//    FindNextControl(ActiveControl, True, True, false).SetFocus;
//end;
// событие показа формы

procedure TF_upg_soft.FormShow(Sender: TObject);
begin
  if me_upg_soft_ID.CanFocus then
    me_upg_soft_ID.SetFocus;

 // очищаем таблицу
  frmShowSoft.fd_upg_soft.Close;
  frmShowSoft.fd_upg_soft.Open;
  frmShowSoft.fd_upg_soft.First;
//  frmShowSoft.fd_upg_soft.Edit;
end;

// ограничение ввода символов в mac-адрес
procedure TF_upg_soft.me_upg_soft_MACKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', 'a'..'f', 'A'..'F']) then
    Key := #0;
end;
{   Обработка события добаления серийного номера, физического адреса и инкремент
    счетчика на один
}

procedure TF_upg_soft.btn_upg_soft_addClick(Sender: TObject);
var
  tmp, tmp1, tmp2, tmp3 : string;
  i : Integer;
begin
// инкремент счетчика
  lb_upg_soft_counter.Text := IntToStr(StrToInt(lb_upg_soft_counter.Text) + 1);
// считываем информацию с полей серийного номера
  tmp := me_upg_soft_ID.Text;
  tmp1 := '';
  tmp2 := '';
  for i := 0 to 2 do
  begin
    tmp1 := tmp1 + Trim(Fetch(tmp, '_')) + ' ';
  end;
  tmp1 := tmp1 + tmp;
  tmp1 := '--serial ' + tmp1;
  tmp := me_upg_soft_ID.Text;
  for i := 0 to 2 do
  begin
    tmp2 := tmp2 + Trim(Fetch(tmp, '_'));
  end;
  tmp2 := tmp2 + tmp;
  tmp2 := '--serial ' + tmp2;
// считываем информацию с полей физического адреса
  tmp3 := me_upg_soft_MAC.Text;
  tmp3 := '--mac ' + tmp3;
// формируем строку
  tmp := '';
  tmp := tmp3 + ' ' + tmp2;
  tmp2 := '';
  tmp2 := tmp3 + ' ' + tmp1;
           // заносим данные в таблицу
  with frmShowSoft.fd_upg_soft do
  begin
    Insert;
    Fields[0].AsString := tmp;
    Fields[1].AsString := tmp2;
    Next;
  end;
// сбрасываем окна серийного номера и физического адреса
  me_upg_soft_ID.Text := '000_000_000_000';
  me_upg_soft_MAC.Text := '68:EB:C5:00:00:00';
// фокус на окно серийного номера
  if me_upg_soft_ID.CanFocus then
    me_upg_soft_ID.SetFocus;

end;
// кнопка сброса

procedure TF_upg_soft.btn_upg_soft_closeClick(Sender: TObject);
begin
  frmShowSoft.f_counter := lb_upg_soft_counter.Text;
  frmShowSoft.fd_upg_soft.Edit;
  frmShowSoft.fd_upg_soft.Post;
end;





{
}
end.

