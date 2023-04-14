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
    fdmtblDev: TFDMemTable;
    fdmtblDevnum: TFDAutoIncField;
    ssDevnameDev: TStringField;
    ssDevnamePack: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);


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
      FTabDev = 'dev_json.fds';
  end;

var
  frmListDevice: TfrmListDevice;

implementation


uses
StrUtils, IdGlobal, FMain;

{$R *.dfm}



procedure TfrmListDevice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fdmtblDev.SaveToFile(FTabDev, sfJSON);
end;

procedure TfrmListDevice.FormCreate(Sender: TObject);
var
  s: string;
begin
// проверка наличия файла  'dev_json.fds' - при отсутствии создать пустой

  if not (FileExists(FTabDev)) then
  begin
    fdmtblDev.EmptyDataSet;
    fdmtblDev.SaveToFile(FTabDev, sfJSON);
  end;
  fdmtblDev.Open;
  fdmtblDev.LoadFromFile(FTabDev, sfJSON);

end;
// показ формы


{
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
}

{
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

}



end.

