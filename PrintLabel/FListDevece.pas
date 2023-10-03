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
  FireDAC.Stan.StorageJSON;

type
  TfrmListDevice = class(TForm)
    dsDev: TDataSource;
    ilPictureMainMenu: TImageList;
    ilPictureBtn_24: TImageList;
    ilPictureBtn_16: TImageList;
    fonListDev: TImage;
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
    lbl_TitlePack: TLabel;
    edtDev: TEdit;
    edtPack: TEdit;
    btnApply: TBitBtn;
    btnForm: TBitBtn;
    fdjsonOne: TFDStanStorageJSONLink;
    fdDev: TFDMemTable;
    fdDevnum: TFDAutoIncField;
    fdDevnameDev: TStringField;
    fdDevnamePack: TStringField;
    btnReset: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure dbgMainDblClick(Sender: TObject);
    procedure btnFormClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);





  private
    { Private declarations }
    const
      csDev = 'Наименование устройства на СГП';
      csMod = 'Наименование модуля на СК';

      csDev_ed = 'Введите наименование устройства';
      csMod_ed = 'Введите наименование комплекта';
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
StrUtils, IdGlobal, FMain;

{$R *.dfm}


procedure TfrmListDevice.FormCreate(Sender: TObject);
var
  s: string;
begin
// проверка наличия файла  'dev_json.fds' - при отсутствии создать пустой

  if not (FileExists(FTabDev)) then
  begin
    fdDev.EmptyDataSet;
    fdDev.SaveToFile(FTabDev, sfJSON);
  end;
  fdDev.Open;
  fdDev.LoadFromFile(FTabDev, sfJSON);
// настройка сетки грида
//dbgMain.SelectedRows.CurrentRowSelected := True; // выделить текущую строку

end;

// показ формы
procedure TfrmListDevice.FormShow(Sender: TObject);
begin
  if edtDev.CanFocus then
    edtDev.SetFocus;
end;


{добавляем запись в таблицу}
procedure TfrmListDevice.btnApplyClick(Sender: TObject);
begin
 // проверить наличие изменений в полях ввода
  if not (edtDev.Modified and edtPack.Modified) then
    Abort;

  if (edtDev.Text = '') or (edtPack.Text = '') then
    Abort;

 with dbgMain.DataSource.DataSet do
 begin
 // проверка на дублирования записи    лучше использовать messageBox
   First;
   while not fdDev.Eof do
   begin
     if (Fields[1].AsString = Trim(edtDev.Text)) or (Fields[2].AsString = Trim(edtPack.Text)) then
     begin
       ShowMessage('Данное устройство или комплект существует.' + #10#13 + 'Проверте правильность ввода');
       Abort;
     end;
     Next;
   end;
   Last;
   Insert;
   Fields[1].AsString := Trim(edtDev.Text);
   Fields[2].AsString := Trim(edtPack.Text);
   Post;
 end;

end;

// процедура выделения контуром





{добавление на форму}
procedure TfrmListDevice.btnFormClick(Sender: TObject);
var
f_quest : Word;
f_param : TCloseAction;
begin
f_param := caNone;
  with frmMain do
  begin

// вопрос о закрытии формы
    f_quest := MessageBox(handle, PChar('Закрытие формы?'), PChar('Вы хотите закрыть форму выбора устройства!'), MB_YESNO + MB_ICONQUESTION);

    case f_quest of
      idyes:
        begin
          frmMain.edtDevice.Text := edtDev.Text;
          frmMain.edtPackage.Text := edtPack.Text;
          FormClose(Self, f_param);
        end;

    end;
  end;

end;

// сбросить данные из полей ввода
procedure TfrmListDevice.btnResetClick(Sender: TObject);
var
i : Integer;
begin
  edtDev.Text := csDev_ed;
  edtPack.Text := csMod_ed;
end;

{добавление в поля edit из таблицы}

procedure TfrmListDevice.dbgMainDblClick(Sender: TObject);
begin
edtDev.Text := dbnMain.DataSource.DataSet.Fields[1].AsString;
edtPack.Text := dbnMain.DataSource.DataSet.Fields[2].AsString;
end;


{закрытие формы}
procedure TfrmListDevice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fdDev.SaveToFile(FTabDev, sfJSON);
  Self.ModalResult := mrOk;
end;
end.

