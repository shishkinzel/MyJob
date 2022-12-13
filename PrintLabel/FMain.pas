unit FMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Mask, Vcl.Buttons, Vcl.Samples.Spin,
  // ***************************** ������������ �����
  FdbmPrintLabel, FSelection, Data.DB, System.ImageList, Vcl.ImgList;

type
  TfrmMain = class(TForm)
    fonMain: TImage;
    edtDevice: TEdit;
    edtPackage: TEdit;
    medtID: TMaskEdit;
    medtMAC: TMaskEdit;
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
      cnAttention = '��������';

  public
    { Public declarations }
//    f_Soft : Boolean;
    f_myarray: array[0..5] of string;
    f_size_sticker: Boolean;   // ��������� ������� ������ ��� ������ ������� mac -false - 13 point
  end;

var
  frmMain: TfrmMain;
//  f_showPrintForm: Boolean;   // ��������� ������ ������ ��� ��������� ������� �� � qr-����
implementation

uses
  FTest, IdGlobal;

{$R *.dfm}
// ��������� ��������� � �����
procedure TfrmMain.FormCreate(Sender: TObject);
begin
  ClearArr(f_myarray);
  f_size_sticker := False;          // ����� 13 ������� True - 11 �������
// f_Soft := False;                  // ��������� ��������������� ������ ����
//  f_showPrintForm := True;
end;

procedure TfrmMain.seStepChange(Sender: TObject);
begin
  if seStep.Value > 1 then
    f_size_sticker := True
  else
    f_size_sticker := False;
end;


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
  if (Key = VK_RETURN) then
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
var
  i, j: Integer;
  tmp, tmp1: string;
begin
  if not (Sender is TBitBtn) then
    exit;
  if (Sender as TBitBtn).Caption = '������� ������' then
  begin
    for i := 0 to Self.ComponentCount - 1 do
      case Self.Components[i].Tag of
        0:
          begin
            f_myarray[0] := edtDevice.Text;
          end;
        1:
          begin
             f_myarray[1] := edtPackage.Text;
          end;
        2:
          begin
            tmp := medtID.Text;
            tmp1 := '';
            for j := 0 to 2 do
            begin
              tmp1 := tmp1 + Trim(Fetch(tmp, '_')) + ' ';
            end;
              tmp1 := tmp1 + tmp;
            f_myarray[2] := tmp1;
          end;
        3:
          begin
            f_myarray[3] := medtMAC.Text;
          end;
        4:
          begin
            f_myarray[4] := seStep.Value.ToString;
          end;
        5:
          begin
            f_myarray[5] := seCount.Value.ToString;
          end;
      else
        Continue;
      end;

    (Sender as TBitBtn).Caption := '�������� ������';
    Print_mac_id(medtID.Text, medtMAC.text, seStep.Value, seCount.Value, dbmPrintLabel.fdmtblPrint);
  // �������� ������  "����� ������� ������"
    btnSelection.Enabled := True;

//        frmTest.Show;
  // ����� ���� ����� ������
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
    (Sender as TBitBtn).Caption := '������� ������';
    ClearArr(f_myarray);
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

  // �������� ���� ����� ������
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
// ���� ������� ������� "����� ��������� ��" - �������� ������ � "������������ ���������"
    if chkQR_SOFT.Checked then
      edtPackage.Enabled := True;
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
// ��������� ������������ ������
procedure TfrmMain.chkQR_SOFTClick(Sender: TObject);
begin
     if chkQR_SOFT.Checked then
     begin
//      f_Soft := True;
//    f_showPrintForm := False;
    chkStiker.Enabled := False;
    chkStiker.Checked := True;
    edtPackage.Enabled := True;
  end
  else
  begin
//    f_showPrintForm := True;
    chkStiker.Enabled := True;
    edtPackage.Enabled := False;
  end;
end;



// ������� �� ����� ������ ������� ������
procedure TfrmMain.btnSelectionClick(Sender: TObject);
begin
  frmSelection := TfrmSelection.Create(nil);

  if chkQR_SOFT.Checked then
  begin
   MessageBox(Handle, Pchar('������ �������!'), cnAttention, MB_ICONINFORMATION + MB_OK);
  end
  else
  begin
   // ��������� ��������� �������� - ���� ����� ������� �� �������� ������ ��������
    if chkStiker.Checked then
    begin
      MessageBox(Handle, Pchar('�������� ������ ������ ��������!'), cnAttention, MB_ICONINFORMATION + MB_OK);
    end
    else
    begin
      frmSelection.btnAdvacedLabel.Enabled := True;
      frmSelection.btnLabel.Enabled := True;
      MessageBox(Handle, Pchar('������ ���������� ��� ������ �������� � ��������!' + #10#13 + '�������� ������������ ���������� �����!'), cnAttention, MB_ICONINFORMATION + MB_OK);
    end;
  end;

  frmMain.Hide;
  frmSelection.Show;
end;

// �������� �����
end.


