unit FListDevece;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Menus, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  FMessage, System.ImageList, Vcl.ImgList;

type
  TfrmListDevice = class(TForm)
    pnlUp: TPanel;
    splup: TSplitter;
    pnldown: TPanel;
    spldown: TSplitter;
    mmDev: TMainMenu;
    mniFile: TMenuItem;
    mniOpen: TMenuItem;
    mniSave: TMenuItem;
    mniApply: TMenuItem;
    mniOther: TMenuItem;
    dbgrdDev: TDBGrid;
    dbnvgrDev: TDBNavigator;
    btnTitleIn: TBitBtn;
    btnExit: TBitBtn;
    dsDev: TDataSource;
    edtDev: TEdit;
    edtMod: TEdit;
    txtTDev: TStaticText;
    txtMod: TStaticText;
    txtNMod: TStaticText;
    btnInTab: TBitBtn;
    btnInForm: TBitBtn;
    fdmtblDev: TFDMemTable;
    fdmtblDevnum: TFDAutoIncField;
    fdmtblDevndev: TStringField;
    fdmtblDevnmod: TStringField;
    lblBtnTitle: TLabel;
    lblBtnTitleUp: TLabel;
    fdmtblDevidmod: TStringField;
    mniClose: TMenuItem;
    mniSepFile: TMenuItem;
    btnedMod: TButtonedEdit;
    mniSearch: TMenuItem;
    mniSearchDev: TMenuItem;
    mniSearchMod: TMenuItem;
    mniSearchNumMod: TMenuItem;
    ilPictureMainMenu: TImageList;
    ilPictureBtn: TImageList;
    mniApply_admin: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure mniCloseClick(Sender: TObject);
    procedure btnInMemoClick(Sender: TObject);
//    procedure mmoDeviceClick(Sender: TObject);
//    procedure mmoDeviceDblClick(Sender: TObject);
//    procedure mmoModuleClick(Sender: TObject);
//    procedure mmoModuleDblClick(Sender: TObject);
    procedure btnTitleInClick(Sender: TObject);
    procedure dbgrdDevDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
      Column: TColumn; State: TGridDrawState);
//    procedure btnTitleMemoClick(Sender: TObject);
    procedure dbgrdDevMouseEnter(Sender: TObject);
    procedure dbgrdDevMouseLeave(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure mniApply_adminClick(Sender: TObject);


  private
    { Private declarations }
    const
      csDev = '������������ ���������� �� ���';
      csMod = '������������ ������ �� ��';

    var
      fileDevice: TextFile;
      fileModule: TextFile;
      fCanClose : Boolean;
  public
    { Public declarations }
    const
      FDevice = 'device.txt';
      FModule = 'module.txt';
      FTabDev = 'dev_json.fds';
  end;

var
  frmListDevice: TfrmListDevice;

implementation


uses
  MacAdressIterator, StrUtils, IdGlobal;

{$R *.dfm}



procedure TfrmListDevice.FormCreate(Sender: TObject);
var
s : string;
begin
   fCanClose := False;
   // �������� ������� �����  'dev_json.fds' - ��� ���������� ������� ������

  if not (FileExists(FTabDev)) then
  begin
    fdmtblDev.EmptyDataSet;
    fdmtblDev.SaveToFile(FTabDev, sfJSON);
  end;

  fdmtblDev.Open;
  fdmtblDev.LoadFromFile(FTabDev, sfJSON);


end;

procedure TfrmListDevice.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    FindNextControl(ActiveControl, True, True, false).SetFocus;
  end;

end;



// ����� �����
procedure TfrmListDevice.FormShow(Sender: TObject);
var
  i: Integer;
begin
//  frmListDevice.Top := 10;
//  frmListDevice.Left := 750;
  if btnExit.CanFocus then
    btnExit.SetFocus;

end;


// ������ ��������� ������ ������  � mmoDevice
//procedure TfrmListDevice.mmoDeviceClick(Sender: TObject);
//var
//Line : Integer;
//begin
//Line := mmoDevice.CaretPos.Y;
//// ��������� ������ � mmoDevice
// with (Sender as TMemo) do
//begin
//   Line:=Perform(EM_LINEFROMCHAR, SelStart, 0);
//   SelStart:=Perform(EM_LINEINDEX, Line, 0);
//   SelLength:=Length(Lines[Line]);
//end;
//end;

//procedure TfrmListDevice.mmoDeviceDblClick(Sender: TObject);
//var
//  Line: Integer;
//begin
//  Line := mmoDevice.CaretPos.Y;
//  edtDev.Text := '';
//  edtDev.Text := mmoDevice.Lines.Strings[Line];
//  with (Sender as TMemo) do
//  begin
//    Line := Perform(EM_LINEFROMCHAR, SelStart, 0);
//    SelStart := Perform(EM_LINEINDEX, Line, 0);
//    SelLength := Length(Lines[Line]);
//  end;
//end;
//**********************************

// ������ ��������� ������ ������  � mmoModule
//procedure TfrmListDevice.mmoModuleClick(Sender: TObject);
//var
//Line : Integer;
//begin
//Line := mmoModule.CaretPos.Y;
//// ��������� ������ � mmoModule
// with (Sender as TMemo) do
//begin
//   Line:=Perform(EM_LINEFROMCHAR, SelStart, 0);
//   SelStart:=Perform(EM_LINEINDEX, Line, 0);
//   SelLength:=Length(Lines[Line]);
//end;
//end;

//procedure TfrmListDevice.mmoModuleDblClick(Sender: TObject);
//var
//  Line: Integer;
//  tmp, tmp1 : string;
//begin
//  btnedMod.Text := '000';
//  edtPower.Text := '��� ������';
//  Line := mmoModule.CaretPos.Y;
//  tmp := mmoModule.Lines.Strings[Line];
//  tmp1 := Trim(Fetch(tmp, '*'));
//  edtMod.Text := '';
//  edtMod.Text := tmp1;
//  if tmp <> '' then
//  begin
//    tmp1 := Trim(Fetch(tmp, '*'));
//    if tmp1 <> '' then
//      btnedMod.Text := tmp1;
//    if tmp <> '' then
//      edtPower.Text := tmp;
//  end;


//  with (Sender as TMemo) do
//  begin
//    Line := Perform(EM_LINEFROMCHAR, SelStart, 0);
//    SelStart := Perform(EM_LINEINDEX, Line, 0);
//    SelLength := Length(Lines[Line]);
//  end;
//end;

// ��������� ������

procedure TfrmListDevice.btnInMemoClick(Sender: TObject);
var
  i: Integer;
  tmp, tmp1: string;
  devEdit, modEdit, modAll: string;
begin
// �������� �����  �� ������ ������
  if (MatchText(edtDev.Text, ['', csDev])) or (MatchText(edtMod.Text, ['', csMod])) then
  begin
    ShowMessage('�������� ������������ �����');
    exit;
  end;

// ��������� ��������� ����� �����
  devEdit := Trim(edtDev.Text);
  modEdit := Trim(edtMod.Text);
  tmp := Format('%.3d', [StrToInt(btnedMod.Text)]);
//  tmp1 := Format('%.s', [edtPower.Text]);
  modAll := modEdit + '*' + tmp + '*' + tmp1;
  if not (Sender is TBitBtn) then
    Exit;

//  if (Sender as TBitBtn).Name = btnInMemo.Name then  // ������ ������ "������ � ��������"
  // ������ "��������" ������� ������
   if False then  // ������ ������ "������ � ��������"
  begin
//    ShowMessage('����� ������ ��������');
//    for i := 0 to mmoDevice.Lines.Count - 1 do
//      if devEdit = mmoDevice.Lines.Strings[i] then
//      begin
//        ShowMessage('������ ���������� ����������.' + #10#13 + '�������� ������������ �����');
//        Abort;
//      end;
//
//    for i := 0 to mmoModule.Lines.Count - 1 do
//      if modAll = mmoModule.Lines.Strings[i] then
//      begin
//        ShowMessage('������ ��� ����������.' + #10#13 + '�������� ������������ �����');
//        Abort;
//      end;
//  // ���� ��� ������ ���������� � memo
//     mmoDevice.Lines.Add(devEdit);
//     mmoModule.Lines.Add(modAll);
//     ShowMessage('�� ������� ������ � ���������!');
  end
  else if (Sender as TBitBtn).Name = btnInTab.Name then   // ������ ������ "������ � �������"
  begin
//  �������� �� ������� ������������� ������� ���������
    dbgrdDev.DataSource.DataSet.Open;
    fdmtblDev.First;
    while not fdmtblDev.Eof do
    begin
      if devEdit = Trim(dbgrdDev.Fields[1].AsString) then
      begin
        ShowMessage('������ ���������� ����������.' + #10#13 + '�������� ������������ �����');
        Abort;
      end;
      fdmtblDev.Next;
    end;
    dbgrdDev.DataSource.DataSet.Last;
    dbgrdDev.DataSource.DataSet.Insert;
    with dbgrdDev do
    begin
      Fields[1].AsString := Trim(edtDev.Text);
      Fields[2].AsString := Trim(edtMod.Text);
      Fields[3].AsString := Trim(btnedMod.Text);
    end;
    dbgrdDev.DataSource.DataSet.Post;
  end
  else if (Sender as TBitBtn).Name = btnInForm.Name then  // ������ ������ "������ � �����"
  // ������ ������ "������ � �����"
  begin
//    ShowMessage('����� ������ �����');
    frmMAC.Show;
    fCanClose := True;
    frmMAC.edtDevice.Text := Trim(edtDev.Text);
    frmMAC.edtMod.Text := Trim(edtMod.Text);
    frmMAC.medtModule.Text := btnedMod.Text;
//    frmMAC.f_power := edtPower.Text;
// �������� ���� ��� ������� ������� �����?
   ShowMessage('�� ��������� ������!');
    frmMAC.seQuantity.TabOrder := 11;
    frmMAC.btnApply.TabOrder := 12;
    Close;

  end;

end;

// ��������� ������ ������
procedure TfrmListDevice.dbgrdDevDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    if gdFocused in State then
    begin
      with TDBGrid(Sender).Canvas do
      begin
        Font.Color := clYellow;
        Font.Size := 10;
        Brush.Color := clRed;
      end;
    end;
    TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

// ���������� � ������������ ������ ��� ��������� �� �������
procedure TfrmListDevice.dbgrdDevMouseEnter(Sender: TObject);
var
  i: Integer;
begin
//  btnTitleMemo.Enabled := True;
  btnTitleIn.Enabled := True;
end;

procedure TfrmListDevice.dbgrdDevMouseLeave(Sender: TObject);
var
  i: Integer;
  fChose_str: Boolean;
begin
  if dbgrdDev.SelectedRows.Count = 0 then
  begin
//    btnTitleMemo.Enabled := False;
    btnTitleIn.Enabled := False;

  end;
end;



// ������� �� ������� � ����� �����
procedure TfrmListDevice.btnTitleInClick(Sender: TObject);
var
  i: Integer;
begin
  edtDev.Text := dbgrdDev.Fields[1].AsString;
  edtMod.Text := dbgrdDev.Fields[2].AsString;
  btnedMod.Text := dbgrdDev.Fields[3].AsString;

  dbgrdDev.SelectedRows.Clear;

  btnTitleIn.Enabled := False;
  btnInForm.Enabled := True;
end;

// ��������� ������ ��������������
procedure TfrmListDevice.mniApply_adminClick(Sender: TObject);
var
  f_admin: string;
begin
  f_admin := LowerCase(Trim(InputBox('���� ���������� �����������������', '������� ������', '���')));

  if f_admin = 'admin' then
  begin
    ShowMessage('��� ������');
  // ���������� ����������� �����������
    dbnvgrDev.VisibleButtons := dbnvgrDev.VisibleButtons + [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh];
    btnInTab.Enabled := True;
    btnInForm.Enabled := True;

  end
  else
  begin
    ShowMessage('� ��� ��� ���������������� ����');
  end;
end;


// ������ ��������
//**********************************

procedure TfrmListDevice.mniCloseClick(Sender: TObject);
begin
  Close;
end;


// ����� �������� �����

procedure TfrmListDevice.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  s: string;
  status: Integer;
  i: Integer;
begin
  if fCanClose then
  begin
    CanClose := True;
    fCanClose := False;
  end
  else
  begin
    status := Application.MessageBox(PWideChar('�� ������������� ������ ������� ����?'), PWideChar('��������?'), MB_ICONWARNING + MB_YESNO);
    case status of
      6:
        begin
      // ���������� �����
//          Rewrite(fileDevice);
//          for i := 0 to mmoDevice.Lines.Count - 1 do
//            Writeln(fileDevice, mmoDevice.Lines[i]);
//          CloseFile(fileDevice);
//
//          Rewrite(fileModule);
//          for i := 0 to mmoDevice.Lines.Count - 1 do
//            Writeln(fileModule, mmoModule.Lines[i]);
//          CloseFile(fileModule);
//          CanClose := True;
          fdmtblDev.SaveToFile(FTabDev, sfJSON);
          fdmtblDev.Close;
        end;
      7:
        begin

          CanClose := False;
        end;
    end;
  end;

end;
//


procedure TfrmListDevice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmMAC.Show;
  frmMAC.medtDate.SetFocus;
  Action := caFree;
end;

end.

