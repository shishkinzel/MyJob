unit FListDevece;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Menus, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  FireDAC.Stan.StorageJSON, FMain;

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
    dbgMain: TDBGridEh;
    txtTitle: TStaticText;
    lbl_TitleDev: TLabel;
    edtDev: TEdit;
    btnApply: TBitBtn;
    btnForm: TBitBtn;
    fdjsonOne: TFDStanStorageJSONLink;
    fdDev: TFDMemTable;
    dsDev: TDataSource;
    fdDevnum: TFDAutoIncField;
    fdDevnameDev: TStringField;
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

  if not (FileExists(FTabDev)) then
  begin
    fdDev.EmptyDataSet;
    fdDev.SaveToFile(FTabDev, sfJSON);
  end;
  fdDev.Open;
  fdDev.LoadFromFile(FTabDev, sfJSON);
// ��������� ����� �����
//dbgMain.SelectedRows.CurrentRowSelected := True; // �������� ������� ������

end;

// ����� �����
procedure TfrmListDevice.FormShow(Sender: TObject);
begin
  if edtDev.CanFocus then
    edtDev.SetFocus;
end;


{��������� ������ � �������}


procedure TfrmListDevice.btnApplyClick(Sender: TObject);
begin

 with dbgMain.DataSource.DataSet do
 begin
 // �������� �� ������������ ������    ����� ������������ messageBox
   First;
 {  while not fdDev.Eof do
   begin
     if (Fields[1].AsString = Trim(edtDev.Text)) or (Fields[2].AsString = Trim(edtPack.Text)) then
     begin
       ShowMessage('������ ���������� ��� �������� ����������.' + #10#13 + '�������� ������������ �����');
       Abort;
     end;
     Next;
   end;
   Last;
   Insert;
   Fields[1].AsString := Trim(edtDev.Text);
   Fields[2].AsString := Trim(edtPack.Text);
   Post;  }
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
  fdDev.SaveToFile(FTabDev, sfJSON);
  Self.ModalResult := mrOk;
end;
end.
