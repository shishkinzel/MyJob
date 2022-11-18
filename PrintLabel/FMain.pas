unit FMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Mask, Vcl.Buttons, Vcl.Samples.Spin,
  // ***************************** подсоединёные формы
  FdbmPrintLabel, FSelection, Data.DB, System.ImageList, Vcl.ImgList;

type
  TfrmMain = class(TForm)
    fonMain: TImage;
    txtTitle: TStaticText;
    lblDevice: TLabel;
    lblPackage: TLabel;
    edtDevice: TEdit;
    edtPackage: TEdit;
    lblID: TLabel;
    lblMAC: TLabel;
    medtID: TMaskEdit;
    medtMAC: TMaskEdit;
    lblStep: TLabel;
    lblCount: TLabel;
    btnStart_Reset: TBitBtn;
    seStep: TSpinEdit;
    seCount: TSpinEdit;
    btnSelection: TBitBtn;
    chkStiker: TCheckBox;
    chkQR_SOFT: TCheckBox;
    ilMain: TImageList;
    procedure medtMACKeyPress(Sender: TObject; var Key: Char);
    procedure btnStart_ResetClick(Sender: TObject);
    procedure btnSelectionClick(Sender: TObject);
    procedure chkStikerClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtDeviceChange(Sender: TObject);
    procedure edtPackageChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure seStepChange(Sender: TObject);
    procedure chkQR_SOFTClick(Sender: TObject);




  private
    { Private declarations }
    const
    cnMAC = '68:EB:C5:';
    cnAttention = 'Внимание';
    var
    f_size_sticker : Boolean;   // установка размера шрифта для печати стикера mac -false - 13 point
  public
    { Public declarations }
    f_Soft : Boolean;
  end;

var
  frmMain: TfrmMain;

implementation
uses
FTest;

{$R *.dfm}
// начальные установки в форме
procedure TfrmMain.FormCreate(Sender: TObject);
begin
 f_size_sticker := False;          // шрифт 13 пунктов True - 11 пунктов
 f_Soft := False;                  // активация дополнительного пункта меню
end;

procedure TfrmMain.seStepChange(Sender: TObject);
begin
  if seStep.Value > 1 then
    f_size_sticker := True
  else
    f_size_sticker := False;
end;


// работа над автоматическим переходом в окнах  ****************************************************
procedure TfrmMain.edtDeviceChange(Sender: TObject);
begin
 if Length(edtDevice.Text) = 70 then
   begin
    if edtPackage.CanFocus then
      edtPackage.SetFocus;
  end;
end;

procedure TfrmMain.edtPackageChange(Sender: TObject);
begin
  if Length(edtPackage.Text) = 16 then
  begin
    if medtID.CanFocus then
      medtID.SetFocus;
  end;
end;


// переход по нажатию кнопки "Ввод" - enter
procedure TfrmMain.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if (Key = VK_RETURN)
 then
    FindNextControl(ActiveControl, True, True, false).SetFocus;
end;

//**************************************************************************************************

// ограничение ввода символов в mac-адрес
procedure TfrmMain.medtMACKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', 'a'..'f', 'A'..'F']) then
    Key := #0;
end;



// кнопка ввода и сброса данных
procedure TfrmMain.btnStart_ResetClick(Sender: TObject);
var
i : Integer;
begin
  if not (Sender is TBitBtn) then
    exit;
  if (Sender as TBitBtn).Caption = 'Принять данные' then
  begin
    (Sender as TBitBtn).Caption := 'Сбросить данные';
    Print_mac_id(medtID.Text, medtMAC.text, seStep.Value, seCount.Value, dbmPrintLabel.fdmtblPrint);
  // зажигаем кнопку  "Выбор утилиты печати"
    btnSelection.Enabled := True;
    //    frmTest.Show;
  // гасим поля ввода данных
    for i := 0 to Self.ComponentCount - 1 do
    begin
      if Self.Components[i] is TEdit then
        (Self.Components[i] as TEdit).Enabled := False;
      if Self.Components[i] is TMaskEdit then
        (Self.Components[i] as TMaskEdit).Enabled := False;
      if Self.Components[i] is TSpinEdit then
        (Self.Components[i] as TSpinEdit).Enabled := False;
    end;
  end
  else
  begin
    (Sender as TBitBtn).Caption := 'Принять данные';
// очищаем окна
    edtDevice.Clear;
    edtPackage.Clear;
    medtID.Text := '000_000_000_000';
    medtMAC.Text := '68:EB:C5:00:00:00';
    seStep.Value := 1;
    seCount.Value := 1;
    edtDevice.Text := 'Не задано';
    edtPackage.Text := 'Не задано';
    chkStiker.Checked := True;

  // включаем поля ввода данных
    for i := 0 to Self.ComponentCount - 1 do
    begin
      if not (chkStiker.Checked) then
      begin
        if Self.Components[i] is TEdit then
          (Self.Components[i] as TEdit).Enabled := True;
      end;
      if Self.Components[i] is TMaskEdit then
        (Self.Components[i] as TMaskEdit).Enabled := True;
      if Self.Components[i] is TSpinEdit then
        (Self.Components[i] as TSpinEdit).Enabled := True;
    end;

  // гасим кнопку  "Выбор утилиты печати"
    btnSelection.Enabled := False;
    if chkStiker.Checked then
    begin
      if medtID.CanFocus then
        medtID.SetFocus;
    end
    else
    begin
      if edtDevice.CanFocus then
        edtDevice.SetFocus;
    end;
  end;

end;
// отключение режима стикера
procedure TfrmMain.chkStikerClick(Sender: TObject);
begin
  if not (chkStiker.Checked) then
  begin
    edtDevice.Enabled := True;
    edtPackage.Enabled := True;
    if edtDevice.CanFocus then
      edtDevice.SetFocus;
  end
  else
  begin
    edtDevice.Enabled := False;
    edtPackage.Enabled := False;
    if medtID.CanFocus then
      medtID.SetFocus;
  end;

end;
// включение расширенного режима
procedure TfrmMain.chkQR_SOFTClick(Sender: TObject);
begin
     if chkQR_SOFT.Checked then
      f_Soft := True;
end;


// переход на форму выбора утилиты печати
procedure TfrmMain.btnSelectionClick(Sender: TObject);
begin
  frmSelection := TfrmSelection.Create(nil);
// проверяем состояния чекбокса - если стоит галочка не зажигаем печать этикеток
  if chkStiker.Checked then
  begin
    MessageBox(Handle, Pchar('Доступна только печать стикеров!'), cnAttention, MB_ICONINFORMATION + MB_OK);
  end
  else
  begin
    frmSelection.btnAdvacedLabel.Enabled := True;
    frmSelection.btnLabel.Enabled := True;
    MessageBox(Handle, Pchar('Полный функционал для печати стикеров и этикеток!' + #10#13 + 'Проверте правильность заполнения полей!'), cnAttention, MB_ICONINFORMATION + MB_OK);
  end;

//  if chkQR_SOFT.Checked then
//  begin
//    frmSelection.btnPrint_QR.Enabled := True;
//    frmSelection.btnSOFT.Enabled := True;
//  end;

  frmMain.Hide;
  frmSelection.Show;
end;

end.


