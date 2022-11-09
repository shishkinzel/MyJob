unit FMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Mask, Vcl.Buttons, Vcl.Samples.Spin,
  // ***************************** ������������ �����
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
// ������ ��� �������������� ��������� � �����  ****************************************************
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


// ������� �� ������� ������ "����" - enter
procedure TfrmMain.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if (Key = VK_RETURN)
 then
    FindNextControl(ActiveControl, True, True, false).SetFocus;
end;

//**************************************************************************************************

// ����������� ����� �������� � mac-�����
procedure TfrmMain.medtMACKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', 'a'..'f', 'A'..'F']) then
    Key := #0;
end;

// ������ ����� � ������ ������
procedure TfrmMain.btnStart_ResetClick(Sender: TObject);
begin
  if not (Sender is TBitBtn) then
    exit;
  if (Sender as TBitBtn).Caption = '������� ������' then
  begin
    (Sender as TBitBtn).Caption := '�������� ������';
    ShowMessage('������� ������');
    Print_mac_id(medtID.Text, medtMAC.text, seStep.Value, seCount.Value, dbmPrintLabel.fdmtblPrint);
  // �������� ������  "����� ������� ������"
    btnSelection.Enabled := True;
    //    frmTest.Show;
  end
  else
  begin
    (Sender as TBitBtn).Caption := '������� ������';
    ShowMessage('�������� ������');
// ������� ����
    edtDevice.Clear;
    edtPackage.Clear;
    medtID.Text := '000_000_000_000';
    medtMAC.Text := '68:EB:C5:00:00:00';
    seStep.Value := 1;
    seCount.Value := 1;
    edtDevice.Text := '�� ������';
    edtPackage.Text := '�� ������';
    chkStiker.Checked := True;

  // ����� ������  "����� ������� ������"
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
// ���������� ������ �������
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


// ������� �� ����� ������ ������� ������
procedure TfrmMain.btnSelectionClick(Sender: TObject);
begin
  frmSelection := TfrmSelection.Create(nil);
  frmMain.Hide;
  frmSelection.Show;
end;

end.


