unit FListDevece;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Menus, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage, FireDAC.Stan.StorageJSON,
  Vcl.ComCtrls, Vcl.Samples.Spin;

type
  TfrmListDevice = class(TForm)
    ilPictureMainMenu: TImageList;
    ilPictureBtn_24: TImageList;
    ilPictureBtn_16: TImageList;
    fonListDev: TImage;
    pnlMain: TPanel;
    pnlTop: TPanel;
    splTop: TSplitter;
    pnlDown: TPanel;
    pnlTabl: TPanel;
    dbnMain: TDBNavigator;
    txtTitle: TStaticText;
    btnApply: TBitBtn;
    btnForm: TBitBtn;
    fdjsonOne: TFDStanStorageJSONLink;
    btnReset: TBitBtn;
    dbgMain: TDBGrid;
    fd_Dev: TFDMemTable;
    fd__Devpan: TStringField;
    fd_Devdev_code: TStringField;
    fd_Devdev_name: TStringField;
    fd_Devname_set: TStringField;
    dsDev: TDataSource;
    splDown: TSplitter;
    dtp_device: TDateTimePicker;
    pnl_newdev: TPanel;
    pnl_enterdev: TPanel;
    lbl_newdev_Title_2: TLabel;
    lbl_enterdev_Title_2: TLabel;
    lbl_newdev_Title_1: TLabel;
    lbl_enterdev_Title_1: TLabel;
    se_pan_new: TSpinEdit;
    se_pan_2: TSpinEdit;
    lbl_newdev_Title_3: TLabel;
    lbl_newdev_Title_4: TLabel;
    lbl_newdev_Title_5: TLabel;
    se_newdev_start: TSpinEdit;
    se_newdev_stop: TSpinEdit;
    btn_new_dev: TBitBtn;
    edt_new: TEdit;
    lbl_enterdev_Title_3: TLabel;
    btn_enterdev_showdev: TBitBtn;
    se_num_scope: TSpinEdit;
    fd_hidden: TFDMemTable;
    fd_hidden1: TStringField;
    fd_hidden2: TStringField;
    fd_hidden3: TStringField;
    fd_hidden4: TStringField;
    btn_12: TBitBtn;
    edt_enterdev_dev: TEdit;
    edt_enterdev__pack: TEdit;
    btn_newdev_showdev: TBitBtn;
    edt_12: TEdit;
    edt_122: TEdit;
    lbl_enterdev_Title_4: TLabel;
    lbl_enterdev_Title_5: TLabel;
    lbl_newdev_Title_6: TLabel;
    lbl_newdev_Title_7: TLabel;
    lbl_enterdev_Title_revision: TLabel;
    cbb_enterdev_revision: TComboBox;
    btn_enterdev_revision: TBitBtn;
    fd_revision: TFDMemTable;
    chk_enterdev_revision: TCheckBox;
    mmo_enterdev_revision: TMemo;
    lbl_enterdev_memrevision: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn_new_devClick(Sender: TObject);
    procedure chk_enterdev_revisionClick(Sender: TObject);


  private
    { Private declarations }
    const
      csDev = 'Наименование устройства на СГП';
      csMod = 'Наименование модуля на СК';

      csDev_ed = 'Введите наименование устройства';
      csMod_ed = 'Введите наименование комплекта';

      f_caption : array[0..3] of string = ('Артикул товара', 'Код уст-ва', 'Наименование уст-ва', 'Наименование комплекта');
      f_width : array[0..3] of Integer = (85, 70, 560, 290);

    var
      fileDevice: TextFile;
      fileModule: TextFile;
      fCanClose : Boolean;
      // два статических массива

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
  fd_Dev.Open;

// проверка наличия файла  'dev_json.fds' - при отсутствии создать пустой

  if not (FileExists(FTabDev)) then
  begin
    fd_Dev.EmptyDataSet;
    fd_Dev.SaveToFile(FTabDev, sfJSON);
  end;
  fd_Dev.Open;
  fd_Dev.LoadFromFile(FTabDev, sfJSON);
// настройка сетки грида
//dbgMain.SelectedRows.CurrentRowSelected := True; // выделить текущую строку

end;

// показ формы
procedure TfrmListDevice.FormShow(Sender: TObject);
var
  i: Integer;
  f_mesDialog: Integer;
  f_password : string;
const
  csPassword = 'admin';
begin
// диалог о загрузке новой позиции или выбор из списка
  f_mesDialog := MessageBox(Self.Handle, 'Вы хотите перейти к выбору устройства?', 'Работа с БД изделий', mb_IconQuestion or mb_YesNo);
  if f_mesDialog = 7 then
  begin
    f_password := inputbox('Пожалуйста, авторизуйтесь', 'Проверка Ваших полномочий', 'admin');
    if f_password = 'admin' then
    begin
      pnl_newdev.Visible := True;
    end
    else
    begin
      pnl_enterdev.Visible := True;
    end;
  end
  else
  begin;
    pnl_enterdev.Visible := True;
  end;

//
//  if edtDev.CanFocus then
//    edtDev.SetFocus;
// провести прорисовку таблицы !!!!
  for i := 0 to 3 do

    with dbgMain.Columns[i] do
    begin
      Title.Alignment := taCenter;
      Title.Caption := f_caption[i];
      Width := f_width[i];
    end;
end;
// активация режима модификации в названии изделия

procedure TfrmListDevice.chk_enterdev_revisionClick(Sender: TObject);
var
  i: Integer;
begin
  if chk_enterdev_revision.Checked then
  begin
    cbb_enterdev_revision.Enabled := True;
    btn_enterdev_revision.Enabled := True;
    mmo_enterdev_revision.Enabled := True;
    lbl_enterdev_Title_revision.Enabled := True;
    lbl_enterdev_memrevision.Enabled := True;
  end
  else
  begin
    cbb_enterdev_revision.Enabled := False;
    btn_enterdev_revision.Enabled := False;
    mmo_enterdev_revision.Enabled := False;
    lbl_enterdev_Title_revision.Enabled := False;
    lbl_enterdev_memrevision.Enabled := False;
  end;
end;
// обрабатываем кнопку проверка диапазона
procedure TfrmListDevice.btn_new_devClick(Sender: TObject);
var
  i: Integer;
  f_start, f_stop: Integer;
begin
  f_start := se_newdev_start.Value;
  f_stop := se_newdev_stop.Value;
end;




{закрытие формы}
procedure TfrmListDevice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fd_Dev.SaveToFile(FTabDev, sfJSON);
  Self.ModalResult := mrOk;

  fd_Dev.Close;
end;

end.


