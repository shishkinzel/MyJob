unit FShowSoft;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FMain,
   Vcl.StdCtrls, Vcl.Menus, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmShowSoft = class(TForm)
    mmoShowSoft: TMemo;
    btnCount: TButton;
    btnApply: TButton;
    mmLoadSoft: TMainMenu;
    mniFileLoadSoft: TMenuItem;
    mniOpenLoadSoft: TMenuItem;
    mniSaveLoadSoft: TMenuItem;
    mniSeparator1: TMenuItem;
    mniExitLoadSoft: TMenuItem;
    mniApplyLoadSoft: TMenuItem;
    mniReadingLostSoft: TMenuItem;
    dlgSaveLoadSoft: TSaveDialog;
    dlgOpenLostSoft: TOpenDialog;
    mniClear: TMenuItem;
    mniSettings: TMenuItem;
    mniFont: TMenuItem;
    mniColorBackGround: TMenuItem;
    dlgFont: TFontDialog;
    dlgColor: TColorDialog;
    mniReset: TMenuItem;
    mniSeparator3: TMenuItem;
    fonShowSoft: TImage;
    mniSetPlace: TMenuItem;
    txtPlace: TStaticText;
    lbl_Place: TLabel;
    txtDevice: TStaticText;
    edtDevice: TEdit;
    procedure btnCountClick(Sender: TObject);
//    procedure mniExitLoadSoftClick(Sender: TObject);
    procedure mniSaveLoadSoftClick(Sender: TObject);
    procedure mniOpenLoadSoftClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mniClearClick(Sender: TObject);
    procedure mniFontClick(Sender: TObject);
    procedure mniColorBackGroundClick(Sender: TObject);
    procedure mniResetClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure mniSetPlaceClick(Sender: TObject);
  private
    { Private declarations }
    const
     f_str = 'department-';

      DIR_code = 'DIR_code';

  public
        { Public declarations }
    fTextSoft: string;         // ����� � ����
    fText_rmp : string;        // ����� �������� ����� ����������������
  end;

var
  frmShowSoft: TfrmShowSoft;

implementation

uses
  FSelection;



{$R *.dfm}

//*************** ������ �������
{������� � memo}
procedure TfrmShowSoft.btnCountClick(Sender: TObject);
var
  i: Integer;
begin
  fTextSoft := '';
  for i := 0 to mmoShowSoft.Lines.Count - 1 do
  begin
    fTextSoft := fTextSoft + mmoShowSoft.Lines.Strings[i];

  end;
  if fTextSoft <> '' then
    ShowMessage('���������� �������' + #13 + '����� ������� ����')
  else
    ShowMessage('�� ������ �� �����' + #13 + '����� ������� ����');
// ����� Memo ����� ����������
  mmoShowSoft.Clear;
  fTextSoft := TrimLeft(fTextSoft);
end;

//*************************************************
{������� �������� � ������}
procedure TfrmShowSoft.mniOpenLoadSoftClick(Sender: TObject);
begin
  dlgOpenLostSoft.InitialDir := frmMain.Path + dlgOpenLostSoft.InitialDir;
  if not (DirectoryExists(DIR_code)) then
    CreateDir(DIR_code);

  if dlgOpenLostSoft.Execute then
  begin
    mmoShowSoft.Lines.LoadFromFile(dlgOpenLostSoft.FileName);
  end
  else
  begin
    ShowMessage('�� ���������� �� ������ ������������ ��������� ������!!!');
  end;
end;

procedure TfrmShowSoft.mniSaveLoadSoftClick(Sender: TObject);
begin
    dlgSaveLoadSoft.InitialDir := frmMain.Path + dlgSaveLoadSoft.InitialDir;

  if dlgSaveLoadSoft.Execute then
  begin
    if AnsiPos('.', dlgSaveLoadSoft.FileName) > 0 then
      mmoShowSoft.Lines.SaveToFile(dlgSaveLoadSoft.FileName)
    else
    begin
      mmoShowSoft.Lines.SaveToFile(dlgSaveLoadSoft.FileName + '.code_txt');
      ShowMessage('�� ������� ��������� ������������ ��������� ������!!!');
    end;
  end
  else
  begin
    ShowMessage('�� ���������� �� ���������� ������������ ��������� ������!!!');
  end;

end;

// Settings
{�������� ������� �����}
procedure TfrmShowSoft.mniSetPlaceClick(Sender: TObject);
var
f_setPlace : Integer;
begin
   f_setPlace := StrToIntDef(InputBox('����� �������� �����', '������� �� 1 �� 3','1'),1);


end;



procedure TfrmShowSoft.mniResetClick(Sender: TObject);
begin
mmoShowSoft.Enabled := False;
btnCount.Enabled := False;
btnApply.Enabled := False;

end;



procedure TfrmShowSoft.mniClearClick(Sender: TObject);
begin
  mmoShowSoft.Clear;
end;

procedure TfrmShowSoft.mniColorBackGroundClick(Sender: TObject);
begin
 if dlgColor.Execute then
  mmoShowSoft.Color := dlgColor.Color;
end;

procedure TfrmShowSoft.mniFontClick(Sender: TObject);
begin
if dlgFont.Execute then
  mmoShowSoft.Font := dlgFont.Font;
end;
// �������� ����

procedure TfrmShowSoft.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  mmoShowSoft.Clear;
end;
procedure TfrmShowSoft.btnApplyClick(Sender: TObject);
begin
Close;
end;

end.

