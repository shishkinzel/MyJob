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
    pnlCentr: TPanel;
    pnlleft: TPanel;
    splcenter: TSplitter;
    pnlRight: TPanel;
    bvlleft: TBevel;
    bvlRight: TBevel;
    txtLBl: TStaticText;
    txtRBl: TStaticText;
    mmoDevice: TMemo;
    mmoModule: TMemo;
    mmDev: TMainMenu;
    mniFile: TMenuItem;
    mniOpen: TMenuItem;
    mniSave: TMenuItem;
    mniApply: TMenuItem;
    mniOther: TMenuItem;
    dbgrdDev: TDBGrid;
    dbnvgrDev: TDBNavigator;
    btnTitleMemo: TBitBtn;
    btnTitleIn: TBitBtn;
    btnExit: TBitBtn;
    dsDev: TDataSource;
    edtDev: TEdit;
    edtMod: TEdit;
    txtTDev: TStaticText;
    txtMod: TStaticText;
    txtNMod: TStaticText;
    btnInMemo: TBitBtn;
    btnInTab: TBitBtn;
    btnInForm: TBitBtn;
    fdmtblDev: TFDMemTable;
    fdmtblDevnum: TFDAutoIncField;
    fdmtblDevndev: TStringField;
    fdmtblDevnmod: TStringField;
    lblBtnTitle: TLabel;
    txtLot: TStaticText;
    fdmtblLot: TStringField;
    lblBtnTitleUp: TLabel;
    fdmtblDevidmod: TStringField;
    mniClose: TMenuItem;
    mniSepFile: TMenuItem;
    btnedMod: TButtonedEdit;
    btnedLot: TButtonedEdit;
    mniSearch: TMenuItem;
    mniSearchDev: TMenuItem;
    mniSearchMod: TMenuItem;
    mniSearchNumMod: TMenuItem;
    ilPictureMainMenu: TImageList;
    ilPictureBtn: TImageList;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure mniCloseClick(Sender: TObject);
    procedure btnInMemoClick(Sender: TObject);
    procedure mmoDeviceClick(Sender: TObject);
    procedure mmoDeviceDblClick(Sender: TObject);
    procedure mmoModuleClick(Sender: TObject);
    procedure mmoModuleDblClick(Sender: TObject);
    procedure btnTitleInClick(Sender: TObject);
    procedure dbgrdDevDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
      Column: TColumn; State: TGridDrawState);
    procedure btnTitleMemoClick(Sender: TObject);
    procedure dbgrdDevMouseEnter(Sender: TObject);
    procedure dbgrdDevMouseLeave(Sender: TObject);
  private
    { Private declarations }
    const
      csDev = 'Наименование устройства на СГП';
      csMod = 'Наименование модуля на СК';

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
   // проверка наличия файла  'dev_json.fds' - при отсутствии создать пустой

  if not (FileExists(FTabDev)) then
  begin
    fdmtblDev.EmptyDataSet;
    fdmtblDev.SaveToFile(FTabDev, sfJSON);
  end;

  fdmtblDev.Open;
  fdmtblDev.LoadFromFile(FTabDev, sfJSON);
  AssignFile(fileDevice, FDevice);
  AssignFile(fileModule, FModule);

  if not FileExists(FDevice) then
  begin
    Rewrite(fileDevice);
    CloseFile(fileDevice);
  end;
  if not FileExists(FModule) then
  begin
    Rewrite(fileModule);
    CloseFile(fileModule);
  end;

  // читаем текстовые файлы
  Reset(fileDevice);
  Reset(fileModule);
  while (not EOF(fileDevice)) do
  begin
    Readln(fileDevice, s);
    mmoDevice.Lines.Add(s);
  end;
  CloseFile(fileDevice);

    while (not EOF(fileModule)) do
  begin
    Readln(fileModule, s);
    mmoModule.Lines.Add(s);
  end;
  CloseFile(fileModule);

end;
// показ формы

procedure TfrmListDevice.FormShow(Sender: TObject);
begin
  frmListDevice.Top := 10;
  frmListDevice.Left := 750;

end;

// опишем выделение цветом строку  в mmoDevice
procedure TfrmListDevice.mmoDeviceClick(Sender: TObject);
var
Line : Integer;
begin
Line := mmoDevice.CaretPos.Y;
// выделение строки в mmoDevice
 with (Sender as TMemo) do
begin
   Line:=Perform(EM_LINEFROMCHAR, SelStart, 0);
   SelStart:=Perform(EM_LINEINDEX, Line, 0);
   SelLength:=Length(Lines[Line]);
end;
end;

procedure TfrmListDevice.mmoDeviceDblClick(Sender: TObject);
var
  Line: Integer;
begin
  Line := mmoDevice.CaretPos.Y;
  edtDev.Text := '';
  edtDev.Text := mmoDevice.Lines.Strings[Line];
  with (Sender as TMemo) do
  begin
    Line := Perform(EM_LINEFROMCHAR, SelStart, 0);
    SelStart := Perform(EM_LINEINDEX, Line, 0);
    SelLength := Length(Lines[Line]);
  end;
end;
//**********************************

// опишем выделение цветом строку  в mmoModule
procedure TfrmListDevice.mmoModuleClick(Sender: TObject);
var
Line : Integer;
begin
Line := mmoModule.CaretPos.Y;
// выделение строки в mmoModule
 with (Sender as TMemo) do
begin
   Line:=Perform(EM_LINEFROMCHAR, SelStart, 0);
   SelStart:=Perform(EM_LINEINDEX, Line, 0);
   SelLength:=Length(Lines[Line]);
end;
end;

procedure TfrmListDevice.mmoModuleDblClick(Sender: TObject);
var
  Line: Integer;
  tmp, tmp1 : string;
begin
  btnedMod.Text := '000';
  btnedLot.Text := '000';
  Line := mmoModule.CaretPos.Y;
  tmp := mmoModule.Lines.Strings[Line];
  tmp1 := Trim(Fetch(tmp, '*'));
  edtMod.Text := '';
  edtMod.Text := tmp1;
  if tmp <> '' then
  begin
    tmp1 := Trim(Fetch(tmp, '*'));
    if tmp1 <> '' then
      btnedMod.Text := tmp1;
    if tmp <> '' then
      btnedLot.Text := tmp;
  end;


  with (Sender as TMemo) do
  begin
    Line := Perform(EM_LINEFROMCHAR, SelStart, 0);
    SelStart := Perform(EM_LINEINDEX, Line, 0);
    SelLength := Length(Lines[Line]);
  end;
end;

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
          Rewrite(fileDevice);
          for i := 0 to mmoDevice.Lines.Count - 1 do
            Writeln(fileDevice, mmoDevice.Lines[i]);
          CloseFile(fileDevice);

          Rewrite(fileModule);
          for i := 0 to mmoDevice.Lines.Count - 1 do
            Writeln(fileModule, mmoModule.Lines[i]);
          CloseFile(fileModule);

          CanClose := True;
        end;
      7:
        begin

          CanClose := False;
        end;
    end;
  end;


  fdmtblDev.SaveToFile(FTabDev, sfJSON);
  fdmtblDev.Close;
end;
//
// обработка кнопок

procedure TfrmListDevice.btnInMemoClick(Sender: TObject);
var
  i: Integer;
  tmp, tmp1: string;
  devEdit, modEdit, modAll: string;
begin
// проверка ввода
  if (MatchText(edtDev.Text, ['', csDev])) or (MatchText(edtMod.Text, ['', csMod])) then
  begin
    ShowMessage('Проверте правильность ввода');
    exit;
  end;

// считываем состояние полей ввода
  devEdit := Trim(edtDev.Text);
  modEdit := Trim(edtMod.Text);
  tmp := Format('%.3d', [StrToInt(btnedMod.Text)]);
  tmp1 := Format('%.3d', [StrToInt(btnedLot.Text)]);
  modAll := modEdit + '*' + tmp + '*' + tmp1;
  if not (Sender is TBitBtn) then
    Exit;

  if (Sender as TBitBtn).Name = btnInMemo.Name then  // нажата кнопка "Запись в Редактор"
  // кнопка "Редактор" верхняя панель
  begin
//    ShowMessage('нажал кнопку Редактор');
    for i := 0 to mmoDevice.Lines.Count - 1 do
      if devEdit = mmoDevice.Lines.Strings[i] then
      begin
        ShowMessage('Данное устройство существует.' + #10#13 + 'Проверте правильность ввода');
        Abort;
      end;

    for i := 0 to mmoModule.Lines.Count - 1 do
      if modAll = mmoModule.Lines.Strings[i] then
      begin
        ShowMessage('Модуль уже существует.' + #10#13 + 'Проверте правильность ввода');
        Abort;
      end;
  // если все прошло записываем в memo
     mmoDevice.Lines.Add(devEdit);
     mmoModule.Lines.Add(modAll);
     ShowMessage('Вы сделали запись в редакторе!');
  end
  else if (Sender as TBitBtn).Name = btnInTab.Name then   // нажата кнопка "Запись в таблицу"
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
      Fields[4].AsString := Trim(btnedLot.Text);
    end;
    dbgrdDev.DataSource.DataSet.Post;
  end
  else if (Sender as TBitBtn).Name = btnInForm.Name then  // нажата кнопка "Запись в форму"
  begin
//    ShowMessage('нажал кнопку Форма');
    fCanClose := True;
    frmMAC.edtDevice.Text := Trim(edtDev.Text);
    frmMAC.edtMod.Text := Trim(edtMod.Text);
    frmMAC.medtModule.Text := btnedMod.Text;
    Close;
    frmMAC.seQuantity.TabOrder := 11;
    frmMAC.btnApply.TabOrder := 12;
    frmMAC.medtDate.SetFocus;

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
  btnTitleMemo.Enabled := True;
  btnTitleIn.Enabled := True;
end;

procedure TfrmListDevice.dbgrdDevMouseLeave(Sender: TObject);
var
  i: Integer;
  fChose_str: Boolean;
begin
  if dbgrdDev.SelectedRows.Count = 0 then
  begin
    btnTitleMemo.Enabled := False;
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
  btnedLot.Text := dbgrdDev.Fields[4].AsString;
  dbgrdDev.SelectedRows.Clear;
  btnTitleMemo.Enabled := False;
  btnTitleIn.Enabled := False;
end;

// перенос из таблицы в редактор
procedure TfrmListDevice.btnTitleMemoClick(Sender: TObject);
var
  i: Integer;
  f_dev_str, f_mod_str: string;
begin
  f_dev_str := dbgrdDev.Fields[1].AsString;
  f_mod_str := dbgrdDev.Fields[2].AsString + '*' + dbgrdDev.Fields[3].AsString + '*' + dbgrdDev.Fields[4].AsString;
// проверяем на повторяемость
  for i := 0 to mmoDevice.Lines.Count - 1 do
  begin
    if f_dev_str = mmoDevice.Lines.Strings[i] then
    begin
      ShowMessage('Данное устройство уже внесено в редактор!');
      Abort;
    end;
  end;
  for i := 0 to mmoModule.Lines.Count - 1 do
  begin
    if f_mod_str = mmoModule.Lines.Strings[i] then
    begin
      ShowMessage('Данный модуль уже внесено в редактор!');
      Abort;
    end;

  end;
// если все хорошо пишем в редактор
  mmoDevice.Lines.Add(f_dev_str);
  mmoModule.Lines.Add(f_mod_str);
// деактивируем кнопки и снимаем выделение строки
  dbgrdDev.SelectedRows.Clear;
  btnTitleMemo.Enabled := False;
  btnTitleIn.Enabled := False;

end;

procedure TfrmListDevice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmMAC.Position := poScreenCenter;
  Free;
end;
end.

