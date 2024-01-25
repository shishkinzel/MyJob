unit FMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Mask, Vcl.Buttons, Vcl.Samples.Spin,
  // ***************************** подсоединёные формы
  Data.DB, System.ImageList, Vcl.ImgList;

type
  TfrmMain = class(TForm)
    medtMAC: TMaskEdit;
    btnStart_Reset: TBitBtn;
    seStep: TSpinEdit;
    seCount: TSpinEdit;
    btnSelection: TBitBtn;
    btnDB: TBitBtn;
    txtTitleDev: TStaticText;
    lbl_NameDev: TLabel;
    lbl_TitID: TLabel;
    lbl_TitMac: TLabel;
    lbl_TitStep: TLabel;
    lbl_TitCount: TLabel;
    imgMain: TImage;
    ds_fd_mem_Dev: TDataSource;
    dtpMain: TDateTimePicker;
    ds_Fill_Tab: TDataSource;
    ilPictureMainMenu: TImageList;
    ilPictureBtn_16: TImageList;
    ilPictureBtn_24: TImageList;
    lbl_Num: TLabel;
    procedure medtMACKeyPress(Sender: TObject; var Key: Char);
//    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure seStepChange(Sender: TObject);
//    procedure chkQR_SOFTClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnStart_ResetClick(Sender: TObject);
    procedure btnDBClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSelectionClick(Sender: TObject);

  private
    { Private declarations }
    F_Path: string;
    function GetPath: string;            // функция получения пути до исполняемого файла

    const
      cnMAC = '68:EB:C5:';
      cnAttention = 'Внимание';

  public
    { Public declarations }
//    f_Soft : Boolean;
{прописываем свойства private данных}
    property Path: string read GetPath;

    var
      f_myarray: array[0..5] of string;


  end;

var
  frmMain: TfrmMain;
//  f_showPrintForm: Boolean;   // активация панели печати или генерации заливки ПО и qr-кода
  f_print_config: string;
  // поля для ID - устройства и его наименования
  f_ID, f_NameDevice: string;

implementation

uses
  IdGlobal, FdbMain, FListDevece, FGrid, FTest;

{$R *.dfm}
// начальные установки в форме

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
i : Integer;
begin

end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
// установка начальной даты
  dtpMain.Date := Date - 1;

// f_Soft := False;                  // активация дополнительного пункта меню
//  f_showPrintForm := True;
{ путь к каталогу с файлами - командами прошивки}
// определяем путь до файла конфигурации
  f_print_config := ExtractFilePath(Application.ExeName) + 'print_config.ini';

end;






procedure TfrmMain.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if (Key = VK_RETURN) then
    FindNextControl(ActiveControl, True, True, false).SetFocus;
end;

procedure TfrmMain.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #13) then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

{методы доступа к private полям}
 function TfrmMain.GetPath: string;
begin
 GetPath := ExtractFilePath(Application.ExeName);
end;

procedure TfrmMain.seStepChange(Sender: TObject);
begin

end;

{ событие show формы }
procedure TfrmMain.FormShow(Sender: TObject);
var
  i: Integer;
begin

end;


{
// работа над автоматическим переходом в окнах  ****************************************************
procedure TfrmMain.edtDeviceChange(Sender: TObject);
begin
  if Length(edtDevice.Text) = 70 then
  begin
    if edtPackage.CanFocus then
      edtPackage.SetFocus;
  end;
end;

procedure TfrmMain.edtPackageChange(Sender: TObject);
begin
  if Length(edtPackage.Text) = 16 then
  begin
    if medtID.CanFocus then
      medtID.SetFocus;
  end;
end;


procedure TfrmMain.fonMainClick(Sender: TObject);
begin

end;

// переход по нажатию кнопки "Ввод" - enter
procedure TfrmMain.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
    FindNextControl(ActiveControl, True, True, false).SetFocus;
end;

}
//**************************************************************************************************

// ограничение ввода символов в mac-адрес
procedure TfrmMain.medtMACKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', 'a'..'f', 'A'..'F']) then
    Key := #0;
end;


procedure TfrmMain.btnDBClick(Sender: TObject);
begin
frmListDevice := TfrmListDevice.Create(nil);
frmListDevice.ShowModal;

if frmListDevice.ModalResult = mrOk  then
  begin
    frmListDevice.fdDev.Close;
    frmListDevice.Free;
  end;

end;

procedure TfrmMain.btnSelectionClick(Sender: TObject);
begin
frmTest.show;
end;

procedure TfrmMain.btnStart_ResetClick(Sender: TObject);
var
  arr_DB: array[0..5] of string;
begin
// вызываем процедуру считывания входных данных
//  Print_mac_id(medtID.Text, medtMAC.Text, lbl_NameDev.Caption, seStep.Value, seCount.Value, dtpMain.Date, dbMain.fd_mem_Dev, arr_DB);
// вызываем процедуру заполнения основной таблицы
  Fill_Tab(arr_DB, dbMain.tbl_DevAll);




  frmGrid.Show;
end;


{

// кнопка ввода и сброса данных
procedure TfrmMain.btnStart_ResetClick(Sender: TObject);
var
  i, j: Integer;
  tmp, tmp1: string;
begin
  if not (Sender is TBitBtn) then
    exit;
  if (Sender as TBitBtn).Caption = 'Принять данные' then
  begin
    for i := 0 to Self.ComponentCount - 1 do
      case Self.Components[i].Tag of
        0:
          begin
            f_myarray[0] := edtDevice.Text;
          end;
        1:
          begin
             f_myarray[1] := edtPackage.Text;
          end;
        2:
          begin
            tmp := medtID.Text;
            tmp1 := '';
            for j := 0 to 2 do
            begin
              tmp1 := tmp1 + Trim(Fetch(tmp, '_')) + ' ';
            end;
              tmp1 := tmp1 + tmp;
            f_myarray[2] := tmp1;
          end;
        3:
          begin
            f_myarray[3] := medtMAC.Text;
          end;
        4:
          begin
            f_myarray[4] := seStep.Value.ToString;
          end;
        5:
          begin
            f_myarray[5] := seCount.Value.ToString;
          end;
      else
        Continue;
      end;

    (Sender as TBitBtn).Caption := 'Сбросить данные';
    Print_mac_id(medtID.Text, medtMAC.text, seStep.Value, seCount.Value, dbmPrintLabel.fdmtblPrint);
  // зажигаем кнопку  "Выбор утилиты печати"
    btnSelection.Enabled := True;

//        frmTest.Show;
  // гасим поля ввода данных
    for i := 0 to Self.ComponentCount - 1 do
    begin
      if Self.Components[i] is TEdit then
        (Self.Components[i] as TEdit).Enabled := False;
      if Self.Components[i] is TMaskEdit then
        (Self.Components[i] as TMaskEdit).Enabled := False;
      if Self.Components[i] is TSpinEdit then
        (Self.Components[i] as TSpinEdit).Enabled := False;
    end;
  end
  else
  begin
    (Sender as TBitBtn).Caption := 'Принять данные';
    ClearArr(f_myarray);
// очищаем окна
    edtDevice.Clear;
    edtPackage.Clear;
    medtID.Text := '000_000_000_000';
    medtMAC.Text := '68:EB:C5:00:00:00';
    seStep.Value := 1;
    seCount.Value := 1;
    edtDevice.Text := 'Не задано';
    edtPackage.Text := 'Не задано';
    chkStiker.Checked := True;

  // включаем поля ввода данных
    for i := 0 to Self.ComponentCount - 1 do
    begin
      if not (chkStiker.Checked) then
      begin
        if Self.Components[i] is TEdit then
          (Self.Components[i] as TEdit).Enabled := True;
      end;
      if Self.Components[i] is TMaskEdit then
        (Self.Components[i] as TMaskEdit).Enabled := True;
      if Self.Components[i] is TSpinEdit then
        (Self.Components[i] as TSpinEdit).Enabled := True;
    end;

  // гасим кнопку  "Выбор утилиты печати"
    btnSelection.Enabled := False;
    if chkStiker.Checked then
    begin
      if medtID.CanFocus then
        medtID.SetFocus;
    end
    else
    begin
      if edtDevice.CanFocus then
        edtDevice.SetFocus;
    end;
// если включен чекбокс "Режим установки ПО" - включаем доступ к "Наименованию комплекта"
//    if chkQR_SOFT.Checked then
//      edtPackage.Enabled := True;
  end;

end;
// отключение режима стикера
procedure TfrmMain.chkStikerClick(Sender: TObject);
begin
  if not (chkStiker.Checked) then
  begin
    edtDevice.Enabled := True;
    edtPackage.Enabled := True;
    btnDB.Enabled := True;
    if edtDevice.CanFocus then
      edtDevice.SetFocus;
  end
  else
  begin
    edtDevice.Enabled := False;
    edtPackage.Enabled := False;
    btnDB.Enabled := False;
    if medtID.CanFocus then
      medtID.SetFocus;
  end;

end;    }
// включение расширенного режима
//procedure TfrmMain.chkQR_SOFTClick(Sender: TObject);
//begin
//     if chkQR_SOFT.Checked then
//     begin
//      f_Soft := True;
//    f_showPrintForm := False;
//    chkStiker.Enabled := False;
//    chkStiker.Checked := True;
//    edtPackage.Enabled := True;
//  end
//  else
//  begin
////    f_showPrintForm := True;
//    chkStiker.Enabled := True;
//    edtPackage.Enabled := False;
//  end;
//end;



// переход на форму выбора утилиты печати










// закрытие формы
end.
