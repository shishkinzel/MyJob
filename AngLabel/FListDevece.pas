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
    procedure btnTitleInClick(Sender: TObject);
    procedure dbgrdDevDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
      Column: TColumn; State: TGridDrawState);
    procedure dbgrdDevMouseEnter(Sender: TObject);
    procedure dbgrdDevMouseLeave(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure mniApply_adminClick(Sender: TObject);


  private
    { Private declarations }
    const
      csDev = 'Наименование устройства на СГП';
      csMod = 'Наименование модуля на СК';

    var
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
  MacAdressIterator, StrUtils, IdGlobal, dmMacIterator;

{$R *.dfm}



procedure TfrmListDevice.FormCreate(Sender: TObject);
var
s : string;
begin
   fCanClose := False;
   // проверка наличия файла  'dev_json.fds' - при отсутствии создать пустой

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



// показ формы
procedure TfrmListDevice.FormShow(Sender: TObject);
var
  i: Integer;
begin
//  frmListDevice.Top := 10;
//  frmListDevice.Left := 750;
  if btnExit.CanFocus then
    btnExit.SetFocus;

end;

// обработка кнопок

procedure TfrmListDevice.btnInMemoClick(Sender: TObject);
var
  i: Integer;
  tmp, tmp1: string;
  devEdit, modEdit, modAll: string;
begin
// проверка ввода  на пустые строки
  if (MatchText(edtDev.Text, ['', csDev])) or (MatchText(edtMod.Text, ['', csMod])) then
  begin
    ShowMessage('Проверте правильность ввода');
    exit;
  end;

// считываем состояние полей ввода
  devEdit := Trim(edtDev.Text);
  modEdit := Trim(edtMod.Text);
  tmp := Format('%.3d', [StrToInt(btnedMod.Text)]);
  modAll := modEdit + '*' + tmp + '*' + tmp1;
  if not (Sender is TBitBtn) then
    Exit;

  if (Sender as TBitBtn).Name = btnInTab.Name then   // нажата кнопка "Запись в таблицу"
  begin
//  Проверим на наличие повторяющихся записей устройств
    dbgrdDev.DataSource.DataSet.Open;
    fdmtblDev.First;
    while not fdmtblDev.Eof do
    begin
      if devEdit = Trim(dbgrdDev.Fields[1].AsString) then
      begin
        ShowMessage('Данное устройство существует.' + #10#13 + 'Проверте правильность ввода');
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
  else if (Sender as TBitBtn).Name = btnInForm.Name then  // нажата кнопка "Запись в форму"
  // нажата кнопка "Запись в форму"
  begin
//    ShowMessage('нажал кнопку Форма');
    frmMAC.Show;
    fCanClose := True;
    frmMAC.edtDevice.Text := Trim(edtDev.Text);
    frmMAC.edtMod.Text := Trim(edtMod.Text);
    frmMAC.medtModule.Text := btnedMod.Text;
// вставить бокс для вопроса закрыть форму?
    ShowMessage('Вы перенесли данные!');
    frmMAC.seQuantity.TabOrder := 11;
    frmMAC.btnApply.TabOrder := 12;
    Close;

  end;

end;

// выделение цветом строки
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

// активируем и деактивируем кнопки при наведении на таблицу
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



// перенос из таблицы в форму ввода
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

// Активация режима администратора
procedure TfrmListDevice.mniApply_adminClick(Sender: TObject);
var
  f_admin: string;
begin
  f_admin := LowerCase(Trim(InputBox('Ввод полномочий администрирования', 'Введите пароль', 'Нет')));

  if f_admin = 'admin' then
  begin
    ShowMessage('Все хорошо');
  // активируем необходимые инструменты
    dbnvgrDev.VisibleButtons := dbnvgrDev.VisibleButtons + [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh];

    btnInTab.Enabled := True;
    btnInForm.Enabled := True;

    edtDev.Enabled := True;
    edtMod.Enabled := True;
    btnedMod.Enabled := True;
  end
  else
  begin
    ShowMessage('У Вас нет административных прав');
  end;
end;


// кнопка закрытия
//**********************************

procedure TfrmListDevice.mniCloseClick(Sender: TObject);
begin
  Close;
end;


// перед закрытие формы

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
    status := Application.MessageBox(PWideChar('Вы действительно хотите закрыть окно?'), PWideChar('Внимание?'), MB_ICONWARNING + MB_YESNO);
    case status of
      6:
        begin
      // записываем файлы
          MyFloatingMessage(5, frmMAC);
          fdmtblDev.SaveToFile(FTabDev, sfJSON);
        end;
      7:
        begin
          MyFloatingMessage(6, frmMAC);
          CanClose := False;
        end;
    end;
  end;

end;
//

procedure TfrmListDevice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 // записываем состояние таблицы в json- файл
  fdmtblDev.SaveToFile(FTabDev, sfJSON);
  fdmtblDev.Close;

  frmMAC.Show;
  frmMAC.medtDate.SetFocus;
  Action := caFree;
end;

end.

