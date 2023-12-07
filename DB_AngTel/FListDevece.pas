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
    procedure dbG_Dev_ListDblClick(Sender: TObject);
    procedure btnFormClick(Sender: TObject);






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
    Columns[1].Width := 500;

    Columns[2].Title.Alignment := taCenter;
    Columns[2].Title.Caption := 'Номер модуля';
    Columns[2].Width := 85;
  end;

  if FileExists(FTabDev) then
  begin
    fdDev.LoadFromFile(FTabDev, sfJSON);
  end;

end;


// показ формы
procedure TfrmListDevice.FormShow(Sender: TObject);
begin
  if edtDev.CanFocus then
    edtDev.SetFocus;


end;

// выбор окна ввода номера модуля

{добавляем запись в таблицу}

procedure TfrmListDevice.btnApplyClick(Sender: TObject);
var
  i: Integer;
  s: string;
begin
// проверяем наличие модификации в полях
//	  s := Format('%.3d', [StrToInt(medt_Dev_number.Text)]);
  if not (edtDev.Modified and medt_Dev_number.Modified) or (edtDev.Text = '') then
    Abort;
// проверка дублирования записи
  with dbG_Dev_List.DataSource.DataSet do
  begin
    First;
    while not fdDev.Eof  do
     begin
        if Fields[1].AsString = Trim(edtDev.Text) then
        begin
         MessageBox(Handle, PWideChar('Данное устройство существует'), PWideChar('Проверте правильность ввода'), MB_OK + MB_ICONERROR );
         Abort
        end;
        if  Fields[2].AsString = medt_Dev_number.Text then
        begin
         MessageBox(Handle, PWideChar('Данный номер уже введен'), PWideChar('Проверте правильность ввода'), MB_OK + MB_ICONERROR );
         Abort
        end;
        Next
    end;
    Last;
    Insert;
    Fields[1].AsString := Trim(edtDev.Text);
    Fields[2].AsString := Trim(Format('%.3d', [StrToInt(medt_Dev_number.Text)]));
    Post;
  end;



end;


// процедура выделения контуром





{добавление на форму}
procedure TfrmListDevice.btnFormClick(Sender: TObject);
var
  f_quest: Word;
begin
// вопрос о переносе на главную форму
  f_quest := MessageBox(handle, PChar('Перенести на главную форму?'), PChar('Переносим!'), MB_YESNO + MB_ICONQUESTION);
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
  medt_Dev_number.Text := dbG_Dev_List.DataSource.DataSet.Fields[2].AsString;
end;


{добавление в поля edit из таблицы}


{закрытие формы}
procedure TfrmListDevice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// сбрасываем данные в файл
  fdDev.SaveToFile(FTabDev, sfJSON);
// закрываем БД
//  fdDev.Close;
// закрытие модальной формы
  Self.ModalResult := mrOk;
end;



end.

