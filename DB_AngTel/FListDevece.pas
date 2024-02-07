unit FListDevece;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Menus, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage, FireDAC.Stan.StorageJSON, FMain, Vcl.Mask,
  Vcl.Samples.Spin;

type
  TfrmListDevice = class(TForm)
    pnlMain: TPanel;
    pnlTop: TPanel;
    pnlDown: TPanel;
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
    fdDevkey: TFDAutoIncField;
    fdDevname: TStringField;
    fdDevid_mod: TStringField;
    pnlRight: TPanel;
    chk_id: TCheckBox;
    lbl_date: TLabel;
    lbl_modify: TLabel;
    lbl_num: TLabel;
    txt_Right_title: TStaticText;
    se_Quarter: TSpinEdit;
    lbl_Quarter: TLabel;
    se_Year: TSpinEdit;
    lbl_Year: TLabel;
    se_NumMod: TSpinEdit;
    se_Series: TSpinEdit;
    se_Number: TSpinEdit;
    medt_MAC: TMaskEdit;
    lbl_TitMac: TLabel;
    chk_MAC: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure dbG_Dev_ListDblClick(Sender: TObject);
    procedure btnFormClick(Sender: TObject);
    procedure edt_dateKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure chk_idClick(Sender: TObject);
    procedure se_NumModExit(Sender: TObject);
    procedure chk_MACClick(Sender: TObject);
    procedure medt_MACKeyPress(Sender: TObject; var Key: Char);



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
      fCanClose: Boolean;

      f_numModule: string;  // защищеная переменная номер модуля

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
// проверка наличия файла  'dev_json.fds' - при отсутствии создать пустой

  fdDev.Open;


// настройка сетки грида
  dbG_Dev_List.SelectedRows.CurrentRowSelected := True; // выделить текущую строку

  with dbG_Dev_List do
  begin
    Columns[0].Title.Alignment := taCenter;
    Columns[0].Title.Caption := '№';
    Columns[0].Width := 55;

    Columns[1].Title.Alignment := taCenter;
    Columns[1].Title.Caption := 'Наименование устройства';
    Columns[1].Width := 480;

    Columns[2].Title.Alignment := taCenter;
    Columns[2].Title.Caption := 'Артикул';
    Columns[2].Width := 65;
  end;

  if FileExists(FTabDev) then
  begin
    fdDev.LoadFromFile(FTabDev, sfJSON);
  end;

end;


// переход по нажатию кнопки "Ввод" - enter
procedure TfrmListDevice.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
    FindNextControl(ActiveControl, True, True, false).SetFocus;
end;


procedure TfrmListDevice.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if (Key = #13) then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

// показ формы
procedure TfrmListDevice.FormShow(Sender: TObject);
var
i : Integer;
begin
  if edtDev.CanFocus then
    edtDev.SetFocus;


end;

 // ограничение ввода символов в mac-адрес
procedure TfrmListDevice.medt_MACKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', 'a'..'f', 'A'..'F']) then
    Key := #0;
end;


// ухожу с компонента номер модуля
procedure TfrmListDevice.se_NumModExit(Sender: TObject);
var
i : Integer;
begin
if se_NumMod.Value <> 0 then
begin
  pnlRight.Enabled := True;
end;

end;

// выбор окна ввода номера модуля

{ добавляем запись в таблицу }

procedure TfrmListDevice.btnApplyClick(Sender: TObject);
var
  i: Integer;
begin
// проверяем наличие модификации в полях
	 f_numModule := Format('%.3d', [se_NumMod.Value]);

  end;

// *********** формируем полный серийный номер устройства *****************************************

procedure TfrmListDevice.chk_idClick(Sender: TObject);
var
i : Integer;
f_date, f_series, f_number : string; // соответственно код даты, код модификации изделия и порядковый номер

begin
  if chk_id.Checked then
  begin
    f_numModule := Format('%.3d', [se_NumMod.Value]);
    f_date := IntToStr(se_Quarter.Value) + Format('%.2d', [se_Year.Value]);
    f_series := Format('%.3d', [se_Series.Value]);
    f_number := Format('%.3d', [se_Number.Value]);
// инициализируем глобальную переменную ID и наименование устройства
    f_ID_High := f_numModule + ' ' + f_date + ' ' + f_series;
    f_ID_Lower := f_number;
    ShowMessage(f_ID_High);
// инициализируем mac-адрес
    f_mac_dev := medt_MAC.Text;
    ShowMessage(f_mac_dev);
  end
  else
  begin
       ShowMessage('Reset');
  end;



end;

// $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$


// процедура выделения контуром

{ добавление на форму }
procedure TfrmListDevice.btnFormClick(Sender: TObject);
var
  f_quest: Word;
begin
  // вопрос о переносе на главную форму
  f_quest := MessageBox(handle, PChar('Перенести на главную форму?'),
    PChar('Переносим!'), MB_YESNO + MB_ICONQUESTION);
  case f_quest of
    IDYES:
      begin
        frmMain.lbl_NameDev.Caption := dbG_Dev_List.Fields[1].AsString;
        ShowMessage('Выполнено!!!!');
        Self.Close;
      end;
    IDNO:
      begin
        ShowMessage('Отмена!!!!')
      end;
  end;
end;

procedure TfrmListDevice.dbG_Dev_ListDblClick(Sender: TObject);
begin
  edtDev.Text := dbG_Dev_List.DataSource.DataSet.Fields[1].AsString;

end;

// работа с добавление полей в серийный номер
procedure TfrmListDevice.edt_dateKeyPress(Sender: TObject; var Key: Char);
var
  i: Integer;
begin
  if not (Sender is TEdit) then
    Abort;
// вводим только цифры
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

// ввод mac-адреса в ручном режиме
procedure TfrmListDevice.chk_MACClick(Sender: TObject);
begin
  if chk_MAC.Checked then
  begin
    medt_MAC.Enabled := True;
    if medt_MAC.CanFocus then
      medt_MAC.SetFocus;
  end
  else
    medt_MAC.Enabled := False;
end;




{добавление в поля edit из таблицы}


{закрытие формы}
procedure TfrmListDevice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// сбрасываем данные в файл
  fdDev.SaveToFile(FTabDev, sfJSON);

  Self.ModalResult := mrOk;
end;



end.
