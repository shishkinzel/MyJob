unit FMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Mask, Vcl.Buttons, Vcl.Samples.Spin,
  // ***************************** подсоединёные формы
  FdbmPrintLabel, FSelection, Data.DB;

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
    procedure medtMACKeyPress(Sender: TObject; var Key: Char);
    procedure btnStart_ResetClick(Sender: TObject);
    procedure btnSelectionClick(Sender: TObject);
    procedure chkStikerClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtDeviceChange(Sender: TObject);
    procedure edtPackageChange(Sender: TObject);




  private
    { Private declarations }
    const
    cnMAC = '68:EB:C5:';
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation
uses
FTest;

{$R *.dfm}
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
begin
  if not (Sender is TBitBtn) then
    exit;
  if (Sender as TBitBtn).Caption = 'Принять данные' then
  begin
    (Sender as TBitBtn).Caption := 'Сбросить данные';
    ShowMessage('Принять данные');
    Print_mac_id(medtID.Text, medtMAC.text, seStep.Value, seCount.Value, dbmPrintLabel.fdmtblPrint);
  // зажигаем кнопку  "Выбор утилиты печати"
    btnSelection.Enabled := True;
    //    frmTest.Show;
  end
  else
  begin
    (Sender as TBitBtn).Caption := 'Принять данные';
    ShowMessage('Сбросить данные');
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


// переход на форму выбора утилиты печати
procedure TfrmMain.btnSelectionClick(Sender: TObject);
begin
  frmSelection := TfrmSelection.Create(nil);
  frmMain.Hide;
  frmSelection.Show;
end;

end.


