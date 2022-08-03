unit FListDevece;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Menus, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  FMessage;

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
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure mniCloseClick(Sender: TObject);
    procedure btnInMemoClick(Sender: TObject);
  private
    { Private declarations }
    const
      csDev = 'Наименование устройства на СГП';
      csMod = 'Наименование модуля на СК';

    var
      fileDevice: TextFile;
      fileModule: TextFile;

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
  status := Application.MessageBox(PWideChar('Записать файлы?'), PWideChar('Внимание?'), MB_ICONWARNING + MB_YESNO);
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

  fdmtblDev.SaveToFile(FTabDev, sfJSON);
  fdmtblDev.Close;
  // CanClose := True;
end;
//
// обработка кнопок
procedure TfrmListDevice.btnInMemoClick(Sender: TObject);
var
  i: Integer;
  tmp, tmp1: string;
  devEdit, modEdit: string;
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
  if not (Sender is TBitBtn) then Exit;

  if (Sender as TBitBtn).Name = btnInMemo.Name then
  // кнопка "Редактор" верхняя панель
  begin
    ShowMessage('нажал кнопку Редактор');
  end
  else if (Sender as TBitBtn).Name = btnInTab.Name then
  begin
    ShowMessage('нажал кнопку Таблица');
  end
  else if (Sender as TBitBtn).Name = btnInForm.Name then
  begin
    ShowMessage('нажал кнопку Форма');
  end;

end;
















// кнопка "Таблица" верхняя панель

// кнопка "Форма" верхняя панель
procedure TfrmListDevice.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  frmMAC.Position := poScreenCenter;
  Free;
end;



end.

