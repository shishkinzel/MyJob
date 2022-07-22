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
    btnApplay: TBitBtn;
    btnReset: TBitBtn;
    btnExit: TBitBtn;
    dsDev: TDataSource;
    edtDev: TEdit;
    edtMod: TEdit;
    edtNMod: TEdit;
    txtTDev: TStaticText;
    txtMod: TStaticText;
    txtNMod: TStaticText;
    btnUpApp: TBitBtn;
    btnUpRes: TBitBtn;
    btnUpClose: TBitBtn;
    fdmtblDev: TFDMemTable;
    fdmtblDevnum: TFDAutoIncField;
    fdmtblDevndev: TStringField;
    fdmtblDevnmod: TStringField;
    fdmtblDevidmod: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
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
  MacAdressIterator;

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




procedure TfrmListDevice.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  frmMAC.Position := poScreenCenter;
  Free;
end;

end.

