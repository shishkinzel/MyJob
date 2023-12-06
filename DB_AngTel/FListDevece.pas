unit FListDevece;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Menus, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage, FireDAC.Stan.StorageJSON, FMain, Vcl.Mask;

type
  TfrmListDevice = class(TForm)
    ilPictureMainMenu: TImageList;
    ilPictureBtn_24: TImageList;
    ilPictureBtn_16: TImageList;
    pnlMain: TPanel;
    pnlTop: TPanel;
    splTop: TSplitter;
    pnlDown: TPanel;
    splDown: TSplitter;
    pnlTabl: TPanel;
    dbnMain: TDBNavigator;
    txtTitle: TStaticText;
    lbl_TitleDev: TLabel;
    edtDev: TEdit;
    btnApply: TBitBtn;
    btnForm: TBitBtn;
    fdjsonOne: TFDStanStorageJSONLink;
    fdDev: TFDMemTable;
    dsDev: TDataSource;
    dbG_Dev_List: TDBGrid;
    lbl_Dev_number: TLabel;
    medt_Dev_number: TMaskEdit;
    fdDevkey: TFDAutoIncField;
    fdDevname: TStringField;
    fdDevid_mod: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure dbgMainDblClick(Sender: TObject);
    procedure btnFormClick(Sender: TObject);






  private
    { Private declarations }
    const
      csDev = '������������ ���������� �� ���';
      csMod = '������������ ������ �� ��';

      csDev_ed = '������� ������������ ����������';
      csMod_ed = '������� ������������ ���������';

    var
      fileDevice: TextFile;
      fileModule: TextFile;
      fCanClose : Boolean;
  public
    { Public declarations }
    const
      FTabDev = 'dev_json.fds';
  end;

var
  frmListDevice: TfrmListDevice;

implementation


uses
StrUtils, IdGlobal, FdbMain;

{$R *.dfm}
procedure TfrmListDevice.FormCreate(Sender: TObject);
var
  s: string;
begin
// �������� ������� �����  'dev_json.fds' - ��� ���������� ������� ������

  Self.fdDev.Open;
  if FileExists(FTabDev) then
  begin
    Self.fdDev.LoadFromFile(FTabDev, sfJSON);
  end;

// ��������� ����� �����
   Self.dbG_Dev_List.SelectedRows.CurrentRowSelected := True; // �������� ������� ������

  with Self.dbG_Dev_List do
  begin
    Columns[0].Title.Alignment := taCenter;
    Columns[0].Title.Caption := '�';
    Columns[0].Width := 55;

    Columns[1].Title.Alignment := taCenter;
    Columns[1].Title.Caption := '������������ ����������';
    Columns[1].Width := 500;

    Columns[2].Title.Alignment := taCenter;
    Columns[2].Title.Caption := '����� ������';
    Columns[2].Width := 85;
  end;



end;

// ����� �����
procedure TfrmListDevice.FormShow(Sender: TObject);
begin
  if edtDev.CanFocus then
    edtDev.SetFocus;
end;

// ����� ���� ����� ������ ������

{��������� ������ � �������}

procedure TfrmListDevice.btnApplyClick(Sender: TObject);
var
i : Integer;
s : string;
begin
// ��������� ������� ����������� � �����

    s := medt_Dev_number.Text;
   if not(edtDev.Modified and medt_Dev_number.Modified) or (edtDev.Text = '') then
   Abort;
// �������� ������������ ������
  with Self.fdDev.DataSource.DataSet do
  begin
    First;
    while not Self.fdDev.Eof  do
     begin
        if Fields[1].AsString = Trim(edtDev.Text) then
        begin
         MessageBox(Handle, PWideChar('������ ���������� ����������'), PWideChar('�������� ������������ �����'), MB_OK + MB_ICONERROR );
         Abort
        end;
        if  Fields[2].AsString = medt_Dev_number.Text then
        begin
         MessageBox(Handle, PWideChar('������ ����� ��� ������'), PWideChar('�������� ������������ �����'), MB_OK + MB_ICONERROR );
         Abort
        end;
        Next
    end;
    Last;
    Insert;
    Fields[1].AsString := Trim(edtDev.Text);
    Fields[2].AsString := Trim(medt_Dev_number.Text);
    Post;
  end;



end;


// ��������� ��������� ��������





{���������� �� �����}
procedure TfrmListDevice.btnFormClick(Sender: TObject);
var
f_quest : Word;
f_param : TCloseAction;
begin
f_param := caNone;
  with frmMain do
  begin

// ������ � �������� �����
    f_quest := MessageBox(handle, PChar('�������� �����?'), PChar('�� ������ ������� ����� ������ ����������!'), MB_YESNO + MB_ICONQUESTION);

    case f_quest of
      idyes:
        FormClose(Self, f_param);
    end;
  end;

end;
{���������� � ���� edit �� �������}

procedure TfrmListDevice.dbgMainDblClick(Sender: TObject);
begin
edtDev.Text := dbnMain.DataSource.DataSet.Fields[1].AsString;

end;


{�������� �����}
procedure TfrmListDevice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// ���������� ������ � ����
  fdDev.SaveToFile(FTabDev, sfJSON);
// ��������� ��
  fdDev.Close;
// �������� ��������� �����
  Self.ModalResult := mrOk;
end;

end.

