unit FMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Mask, Vcl.Buttons, Vcl.Samples.Spin,
  // ***************************** подсоединёные формы
  FdbmPrintLabel, FSelection, Data.DB, System.ImageList, Vcl.ImgList, F_FR_Table, F_FR_Stick;

type
  TfrmMain = class(TForm)
    fonMain: TImage;
    edtDevice: TEdit;
    edtPackage: TEdit;
    medtID: TMaskEdit;
    medtMAC: TMaskEdit;
    btnStart_Reset: TBitBtn;
    seStep: TSpinEdit;
    seCount: TSpinEdit;
    btnSelection: TBitBtn;
    chkStiker: TCheckBox;
    ilMain: TImageList;
    btnDB: TBitBtn;
    procedure medtMACKeyPress(Sender: TObject; var Key: Char);
    procedure btnStart_ResetClick(Sender: TObject);
    procedure btnSelectionClick(Sender: TObject);
    procedure chkStikerClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtDeviceChange(Sender: TObject);
    procedure edtPackageChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure seStepChange(Sender: TObject);
//    procedure chkQR_SOFTClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnDBClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

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
      f_size_sticker: Boolean;   // установка размера шрифта для печати стикера mac -false - 13 point

  end;

var
  frmMain: TfrmMain;
//  f_showPrintForm: Boolean;   // активация панели печати или генерации заливки ПО и qr-кода
  f_print_config: string;
  // переменные для чтения конфигурации принтеров по умолчанию
  f_print_924: string;
  f_print_940: string;
  f_print_2824: string;
  f_print_908: string;
  f_print_576: string;

implementation

uses
  FTest, FShowSoft, FListDevece, IdGlobal, unit_ini, IniFiles;


{$R *.dfm}

// начальные установки в форме

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  ClearArr(f_myarray);
  f_size_sticker := False;          // шрифт 13 пунктов True - 11 пунктов
// f_Soft := False;                  // активация дополнительного пункта меню
//  f_showPrintForm := True;
{ путь к каталогу с файлами - командами прошивки}
// определяем путь до файла конфигурации
  f_print_config := ExtractFilePath(Application.ExeName) + 'print_config.ini';
  // создаем ini-файл



end;



{методы доступа к private полям}
 function TfrmMain.GetPath: string;
begin
 GetPath := ExtractFilePath(Application.ExeName);
end;

procedure TfrmMain.seStepChange(Sender: TObject);
begin
  if seStep.Value > 1 then
    f_size_sticker := True
  else
    f_size_sticker := False;
end;
{событие show формы}
procedure TfrmMain.FormShow(Sender: TObject);
var
i : Integer;
begin

end;



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

// переход по нажатию кнопки "Ввод" - enter
procedure TfrmMain.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
    FindNextControl(ActiveControl, True, True, false).SetFocus;
end;


//**************************************************************************************************

// ограничение ввода символов в mac-адрес
procedure TfrmMain.medtMACKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', 'a'..'f', 'A'..'F']) then
    Key := #0;
end;



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

end;
// включение расширенного режима
//procedure TfrmMain.chkQR_SOFTClick(Sender: TObject);
//begin
//     if chkQR_SOFT.Checked then
//     begin
////      f_Soft := True;
////    f_showPrintForm := False;
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

procedure TfrmMain.btnSelectionClick(Sender: TObject);
begin
  frmSelection := TfrmSelection.Create(nil);
  if chkStiker.Checked  then
    frmSelection.btnLabel.Enabled := False
    else
    frmSelection.btnLabel.Enabled := True;
//  if chkQR_SOFT.Checked then
//  begin
//   MessageBox(Handle, Pchar('Прочие утилиты!'), cnAttention, MB_ICONINFORMATION + MB_OK);
//  end
//  else
//  begin
//   // проверяем состояния чекбокса - если стоит галочка не зажигаем печать этикеток
//    if chkStiker.Checked then
//    begin
//      MessageBox(Handle, Pchar('Доступна только печать стикеров!'), cnAttention, MB_ICONINFORMATION + MB_OK);
//    end
//    else
//    begin
////      frmSelection.btnAdvacedLabel.Enabled := True;
//      frmSelection.btnLabel.Enabled := True;
//      MessageBox(Handle, Pchar('Полный функционал для печати стикеров и этикеток!' + #10#13 + 'Проверте правильность заполнения полей!'), cnAttention, MB_ICONINFORMATION + MB_OK);
//    end;
//  end;

//  frmMain.Hide;
  frmSelection.ShowModal;

    // получение сообщения от формы FSelection о закрыти

  if frmSelection.ModalResult > 0 then
  begin
    frmSelection.Free;
  end;
end;
{переход на форму выбора устройств}

procedure TfrmMain.btnDBClick(Sender: TObject);
var
  i: Integer;
begin
  frmListDevice := TfrmListDevice.Create(nil);

  frmListDevice.ShowModal;

  if frmListDevice.ModalResult > 0 then
  begin
    frmListDevice.Free;
    if frmMain.medtID.CanFocus then
      frmMain.medtID.SetFocus;
  end;

end;


// закрытие формы
procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  f_ini: TIniFile;
  f_iniPath: string;
begin
  f_iniPath := ExtractFilePath(Application.ExeName) + 'print_config.ini';
  f_ini := TIniFile.Create(f_iniPath);
            // сохраняем путь к принтерам по умолчанию
  IniOptions.f_print_924 := f_print_924;
  IniOptions.f_print_940 := f_print_940;
  IniOptions.f_print_908 := f_print_908;
  IniOptions.f_print_576 := f_print_576;
  IniOptions.f_print_2824 := f_print_2824;
  IniOptions.SaveToFile(f_iniPath);
  f_ini.Free;

end;

end.


