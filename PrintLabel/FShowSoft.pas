unit FShowSoft;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FMain,
   Vcl.StdCtrls, Vcl.Menus, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmShowSoft = class(TForm)
    mmoShowSoft: TMemo;
    btnCount: TButton;
    btnClose: TButton;
    mmLoadSoft: TMainMenu;
    mniFileLoadSoft: TMenuItem;
    mniOpenLoadSoft: TMenuItem;
    mniSaveLoadSoft: TMenuItem;
    mniSeparator1: TMenuItem;
    mniExitLoadSoft: TMenuItem;
    mniApplyLoadSoft: TMenuItem;
    mniReadingLostSoft: TMenuItem;
    dlgSaveLoadSoft: TSaveDialog;
    dlgOpenLostSoft: TOpenDialog;
    mniClear: TMenuItem;
    mniSettings: TMenuItem;
    mniFont: TMenuItem;
    mniColorBackGround: TMenuItem;
    dlgFont: TFontDialog;
    dlgColor: TColorDialog;
    mniReset: TMenuItem;
    mniSeparator3: TMenuItem;
    fonShowSoft: TImage;
    mniSetPlace: TMenuItem;
    txtPlace: TStaticText;
    lbl_Place: TLabel;
    txtDevice: TStaticText;
    edtDevice: TEdit;
    chkOrd_13: TCheckBox;
    mniReport: TMenuItem;
    mniRepApply: TMenuItem;
    mniRepSep1: TMenuItem;
    mniRepShow: TMenuItem;
    mniRepPrint: TMenuItem;
    mniRepSep2: TMenuItem;
    mniRepReset: TMenuItem;
    btnApply: TButton;
    mniSeparator4: TMenuItem;
    mniApply: TMenuItem;
    chkScript: TCheckBox;
    mniExtra_Main: TMenuItem;
    mniExtra_Servece: TMenuItem;
    mniExtra_Date: TMenuItem;
    mniExtra_Scope: TMenuItem;
    mniExtra_Separator1: TMenuItem;
    mniExtra_Show: TMenuItem;
    mniExtra_Print: TMenuItem;
    mniExtra_Separator2: TMenuItem;
    mniExtra_Reset: TMenuItem;
    mniExtra_OpenCalendar: TMenuItem;
    mniExtra_DataSeparator1: TMenuItem;
    mniExtra_Apply: TMenuItem;
    mniExtra_DataSeparator2: TMenuItem;
    mniExtra_DataSeparator3: TMenuItem;
    mniExtra_DateShow: TMenuItem;
    mniExtra_DatePrint: TMenuItem;
    mniExtra_DateReset: TMenuItem;
    dtpDate: TDateTimePicker;
    fdService: TFDMemTable;
    fdServicenumber: TStringField;
    procedure btnCountClick(Sender: TObject);
//    procedure mniExitLoadSoftClick(Sender: TObject);
    procedure mniSaveLoadSoftClick(Sender: TObject);
    procedure mniOpenLoadSoftClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mniClearClick(Sender: TObject);
    procedure mniFontClick(Sender: TObject);
    procedure mniColorBackGroundClick(Sender: TObject);
    procedure mniResetClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure mniSetPlaceClick(Sender: TObject);
    procedure mniRepApplyClick(Sender: TObject);
    procedure mniRepShowClick(Sender: TObject);
    procedure mniRepPrintClick(Sender: TObject);
    procedure mniRepResetClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure chkScriptClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mniExtra_OpenCalendarClick(Sender: TObject);
    procedure mniExtra_ScopeClick(Sender: TObject);
    procedure mniExtra_ResetClick(Sender: TObject);
    procedure mniExtra_ShowClick(Sender: TObject);
    procedure mniExtra_PrintClick(Sender: TObject);
    procedure dtpDateClick(Sender: TObject);
    procedure mniExtra_ApplyClick(Sender: TObject);
    procedure mniExtra_DateShowClick(Sender: TObject);
    procedure mniExtra_DatePrintClick(Sender: TObject);
  private
    { Private declarations }

    f_print_576: string;   // для печати даты и номера ремонта

    const
     f_str = 'department-';
      DIR_code = 'DIR_code';

  public
        { Public declarations }
    fTextSoft: string;         // текст в окне
    fText_rmp: string;        // выбор рабочего места программирования

    f_rmp: string;            // текст - номер места программирования
    f_rmp_place: string;      // код для места програмирования 6 .. 8

    f_nameDevice: string;    // имя выбраного устройства

  end;

var
  frmShowSoft: TfrmShowSoft;

implementation

uses
  FSelection, FPrintSection, F_FR_Label, unit_ini, FdbmPrintLabel, // подключение форм
  F_FR_List, IdGlobal, frxClass, frxPreview, frxBarcode, frxBarcode2D;



{$R *.dfm}


// показ формы
procedure TfrmShowSoft.FormShow(Sender: TObject);
begin
// подключаем принтер по умолчанию
  IniOptions.LoadFromFile(f_print_config);
  f_print_576 := IniOptions.f_print_576;

  f_nameDevice := frmMain.edtDevice.Text;
  edtDevice.Text := f_nameDevice;          // считываем наименование устройства
end;


//*************** Сейчас работаю
{считать с memo}
procedure TfrmShowSoft.btnCountClick(Sender: TObject);
var
  i: Integer;
  f_pos_first: Integer;
begin
  fTextSoft := '';
  for i := 0 to mmoShowSoft.Lines.Count - 1 do
  begin
    if chkOrd_13.Checked then
      fTextSoft := fTextSoft + mmoShowSoft.Lines.Strings[i] + #13
    else
      fTextSoft := fTextSoft + mmoShowSoft.Lines.Strings[i];

  end;
  if fTextSoft <> '' then
    ShowMessage('Информация считана' + #13 + 'Можно закрыть окно')
  else
    ShowMessage('Вы ничего не ввели' + #13 + 'Можно закрыть окно');
// активация кнопки "Выполнить"  и пункта меню
  btnApply.Enabled := True;
  mniApply.Enabled := True;

// Сброс Memo после считывания
  mmoShowSoft.Clear;
  fTextSoft := TrimLeft(fTextSoft);
// коррекция команды для рабочего места "department- " 6..8
  if not (chkScript.Checked) then        // если скрип не выбран
  begin
    f_pos_first := Pos(f_str, fTextSoft) + 11;
    if f_pos_first <> 11 then
    begin
      Delete(fTextSoft, f_pos_first, 1);
      Insert(f_rmp_place, fTextSoft, f_pos_first);

    end;
    mmoShowSoft.Lines.Add(fTextSoft);
  end;

// сброс кнопок
  btnCount.Enabled := False;
  mniReadingLostSoft.Enabled := False;
// активация отчета
  mniReport.Enabled := True;
end;


// печать скрипта
procedure TfrmShowSoft.chkScriptClick(Sender: TObject);
var
  i: Integer;
begin
  if chkScript.Checked then        // работа со скриптом
  begin
        //  TODO
    mniSetPlace.Visible := False;          // гасим пункт - "Рабочее место"
    mniReadingLostSoft.Enabled := True;
    chkOrd_13.Checked := True;
    btnCount.Enabled := True;
    // гасим выбор рабочего места
    lbl_Place.Caption := 'Поле не заполняется';
    lbl_Place.Enabled := False;
  end
  else
  begin
       //  TODO
    mniSetPlace.Visible := True;
    mniReadingLostSoft.Enabled := False;
    chkOrd_13.Checked := False;
    btnCount.Enabled := False;
        // зажигаем выбор рабочего места
    lbl_Place.Caption := 'Рабочее место не выбрано';
    lbl_Place.Enabled := True;
    mniSetPlace.Enabled := True;
  end;

end;

//*************************************************
{диалоги открытия и записи}
procedure TfrmShowSoft.mniOpenLoadSoftClick(Sender: TObject);
var
  f_name_file: string;
  f_name_path: string;
  i: Integer;
begin

  dlgOpenLostSoft.InitialDir := frmMain.Path + DIR_code;
  f_name_path := dlgOpenLostSoft.InitialDir;
  if not (DirectoryExists(DIR_code)) then
    CreateDir(DIR_code);
  if dlgOpenLostSoft.Execute then
  begin
    mmoShowSoft.Clear;
    mmoShowSoft.Lines.LoadFromFile(dlgOpenLostSoft.FileName);
    f_name_file := dlgOpenLostSoft.FileName;
    Fetch(f_name_file, f_name_path + '\');
    f_name_file := Fetch(f_name_file, '.code_txt');
    // цикл for in
    for i := 1 to Length(f_name_file) do
    begin
      if f_name_file[i] = '_' then
        f_name_file[i] := '-';

    end;
 // сбросить главное меню и кнопку
    lbl_Place.Caption := 'Рабочее место не выбрано';
    edtDevice.Text := 'Устройство не выбрано';
    mniSetPlace.Enabled := True;
    btnCount.Enabled := False;
    mniReadingLostSoft.Enabled := False;

    edtDevice.Text := f_name_file;
  end
  else
  begin
    ShowMessage('Вы отказались от выбора конфигурации командной строки!!!');
  end;
end;

procedure TfrmShowSoft.mniSaveLoadSoftClick(Sender: TObject);
begin
    dlgSaveLoadSoft.InitialDir := frmMain.Path + dlgSaveLoadSoft.InitialDir;

  if dlgSaveLoadSoft.Execute then
  begin
    if AnsiPos('.', dlgSaveLoadSoft.FileName) > 0 then
      mmoShowSoft.Lines.SaveToFile(dlgSaveLoadSoft.FileName)
    else
    begin
      mmoShowSoft.Lines.SaveToFile(dlgSaveLoadSoft.FileName + '.code_txt');
      ShowMessage('Вы успешно сохранили конфигурацию командной строки!!!');
    end;
  end
  else
  begin
    ShowMessage('Вы отказались от сохранения конфигурации командной строки!!!');
  end;

end;

// Settings
{выбираме рабочее место}
procedure TfrmShowSoft.mniSetPlaceClick(Sender: TObject);
var
f_setPlace : Integer;
begin
  f_setPlace := StrToIntDef(InputBox('Выбор рабочего места', 'Введите от 1 до 3', '1'), 1);
  if f_setPlace in [1..3] then
  begin
    case f_setPlace of
      1:
        begin
          f_rmp := 'РМП № 1';
          f_rmp_place := '6';
          lbl_Place.Caption := 'Рабочее место № 1';
        end;
      2:
        begin
          f_rmp := 'РМП № 2';
          f_rmp_place := '8';
          lbl_Place.Caption := 'Рабочее место № 2';
        end;
      3:
        begin
          f_rmp := 'РМП № 3';
          f_rmp_place := '7';
          lbl_Place.Caption := 'Рабочее место № 3';
        end;
    end;
    mniSetPlace.Enabled := False;
    mniReadingLostSoft.Enabled := True;
    btnCount.Enabled := True;
  end;

end;

procedure TfrmShowSoft.mniResetClick(Sender: TObject);
begin
mmoShowSoft.Enabled := False;
btnCount.Enabled := False;
btnApply.Enabled := False;
// деактивация кнопки "Выполнить"  и пункта меню
  btnApply.Enabled := False;
  mniApply.Enabled := False;

end;


procedure TfrmShowSoft.mniClearClick(Sender: TObject);
begin
  mmoShowSoft.Clear;
  mniSetPlace.Enabled := True;
  mniReadingLostSoft.Enabled := False;
// востанавливаем надписи по умолчанию
  lbl_Place.Caption := 'Рабочее место не выбрано';
  edtDevice.Text := 'Устройство не выбрано';
 // деактивация отчета
  mniReport.Enabled := False;
end;

procedure TfrmShowSoft.mniColorBackGroundClick(Sender: TObject);
begin
 if dlgColor.Execute then
  mmoShowSoft.Color := dlgColor.Color;
end;

procedure TfrmShowSoft.mniFontClick(Sender: TObject);
begin
if dlgFont.Execute then
  mmoShowSoft.Font := dlgFont.Font;
end;

{формирование отчета}
procedure TfrmShowSoft.mniRepApplyClick(Sender: TObject);
var
  i: Integer;
begin
  (frmFR_List.frxRe.FindObject('memJobPlace') as TfrxMemoView).Text := f_rmp;
  (frmFR_List.frxRe.FindObject('memTextCode') as TfrxMemoView).Text := fTextSoft;
  (frmFR_List.frxRe.FindObject('bcPlace') as TfrxBarcode2DView).Text := fTextSoft;
  (frmFR_List.frxRe.FindObject('memNameDevice') as TfrxMemoView).Text := edtDevice.Text;

end;
{просмотр отчета}
procedure TfrmShowSoft.mniRepShowClick(Sender: TObject);
begin
  frmFR_List.Top := 5;
  frmFR_List.Left := 5;
  Self.SetFocus;
  frmFR_List.Show;
  frmFR_List.frxRe.ShowReport();
end;
{печать отчета}
procedure TfrmShowSoft.mniRepPrintClick(Sender: TObject);
begin
  frmFR_List.frxRe.ShowReport();
  frmFR_List.frxRe.Print;
end;
{сброс отчета}
procedure TfrmShowSoft.mniRepResetClick(Sender: TObject);
begin
  frmFR_List.Close;
  frmFR_List.frxRe.PreviewPages.Clear;

end;

// закрытие окна
procedure TfrmShowSoft.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  mmoShowSoft.Clear;
  btnCloseClick(nil);
  frmShowSoft.ModalResult := mrOk;
  frmSelection.ModalResult := mrOk;
end;



// сформировать отчет с qr-кодом
procedure TfrmShowSoft.btnApplyClick(Sender: TObject);
var
i : Integer;
begin
  frmPrintSection := TfrmPrintSection.Create(nil);
  frmPrintSection.Menu := nil;
  frmPrintSection.Menu := frmPrintSection.mmPrintQR;

// показываем пункты
  frmPrintSection.lbledtOne.Visible := True;
  frmPrintSection.lbledtTwo.Visible := True;
  frmPrintSection.lbledtThree.Visible := True;
  frmPrintSection.lbledtFour.Visible := True;
  frmPrintSection.lbledtFive.Visible := True;
  frmPrintSection.lbledtSix.Visible := True;

  frmPrintSection.ShowModal;
  if frmPrintSection.ModalResult > 0 then
  begin
    frmPrintSection.Free;
//    ModalResult := mrOk;
  end;
end;
//**************************************************************************************************
// Работа с дополнительными функциями

// блок печати номера ремонта и даты для паспорта на устройство ************************************

procedure TfrmShowSoft.mniExtra_ScopeClick(Sender: TObject);  // ввод диапазона
var
  f_range: Integer;
  f_startNumber: Integer;
  i: Integer;
begin
// выбираем начальный номер и диапазон
  f_startNumber := StrToIntDef(InputBox('Ввод начального номера ремонта', 'Введите номер ремонта', '1'), 1);
  f_range := StrToIntDef(InputBox('Ввод диапазона ремонта', 'Введите диапазон от 1 до 100', '0'), 0);
// открываем таблицу для записи
  with fdService do
  begin
    Close;
    Open;
    First;
    if f_range in [1..100] then
    begin
      for i := 0 to f_range - 1 do
      begin
        Append;
        Fields[0].AsString := IntToStr(f_startNumber + i);
        Next;
      end;
      mniExtra_Scope.Enabled := False;
      mniExtra_Show.Enabled := True;
    end
    else
    begin
      ShowMessage('Некорректный ввод');
    end;
    if frmShowSoft.CanFocus then
    frmShowSoft.SetFocus;


  end;
end;
// просмотр
procedure TfrmShowSoft.mniExtra_ShowClick(Sender: TObject);
var
  f_checked: Integer;
begin
  // задаем место открытие окна
  frmFR_Label.Top := 5;
  frmFR_Label.Left := 5;
  // гасим и зажигаем необходимые пункты меню
  mniExtra_Show.Enabled := False;
  mniExtra_Print.Enabled := True;

   // выбираем шрифт печати
  f_checked := StrToIntDef(InputBox('Ввод размера шрифта', 'Введите размер шрифта от 16 до 22', '18'), 18);

  // проверка
  if not (f_checked in [16..22]) then
  begin
       f_checked := 18;
       ShowMessage('Размер шрифта установлен по умолчанию - 18');
  end;

   // устанавливаем шрифт
   (frmFR_Label.frp_LabService.FindObject('memText') as TfrxMemoView).Font.Size := f_checked;

   // выводим отчет
   frmFR_Label.Show;
   frmFR_Label.frp_LabService.ShowReport();

   if frmShowSoft.CanFocus then
      frmShowSoft.SetFocus;

end;
// печать

procedure TfrmShowSoft.mniExtra_PrintClick(Sender: TObject);
begin
    // задаем принтер по умолчанию
  frmFR_Label.frp_LabService.Report.PrintOptions.Printer := f_print_576;

  frmFR_Label.frp_LabService.ShowReport();
  frmFR_Label.frp_LabService.Print;
end;

// общий сброс Дополнительных окон
procedure TfrmShowSoft.mniExtra_ResetClick(Sender: TObject);
begin
 // гасим и зажигаем необходимые пункты меню
  mniExtra_Scope.Enabled := True;
  mniExtra_Show.Enabled := False;
  mniExtra_Print.Enabled := False;
  // дата
   mniExtra_OpenCalendar.Enabled := True;
   mniExtra_DatePrint.Enabled := False;


  // прописываем сброс отчетов
  // сбрасываем отчеты
  frmFR_Label.Close;
  frmFR_Label.frp_LabService.PreviewPages.Clear;
  frmFR_Label.frp_LabDate.PreviewPages.Clear;

end;
// начало блока печати стикера даты

procedure TfrmShowSoft.mniExtra_OpenCalendarClick(Sender: TObject);
begin
  dtpDate.Visible := True;
  dtpDate.Date := Now;
end;

procedure TfrmShowSoft.dtpDateClick(Sender: TObject);
begin
  mniExtra_OpenCalendar.Enabled := False;
  mniExtra_Apply.Enabled := True;

end;
// команды выполнить

procedure TfrmShowSoft.mniExtra_ApplyClick(Sender: TObject);
var
  f_date: string;
  f_checked: Integer;
  f_font_style: Integer;
  f_checked_style: Boolean;
begin
// закроем календарь
  dtpDate.Visible := False;

  f_date := DateToStr(dtpDate.Date);

  f_date := ReverseDate(f_date);

  if f_date = '' then
    f_date := '0000.00.00';

  f_checked := StrToIntDef(InputBox('Ввод размера шрифта', 'Введите размер шрифта от 10 до 14', '14'), 14);
  f_font_style := StrToIntDef(InputBox('Ввод толщины шрифта', 'Введите толщину шрифта 1[Bold] или 0', '0'), 0);
// проверка
  if not (f_checked in [10..14]) then
    f_checked := 14;

  if f_font_style in [0..1] then
  begin
    case f_font_style of
      0:
        (frmFR_Label.frp_LabDate.FindObject('memDate') as TfrxMemoView).Font.Style := [];
      1:
        (frmFR_Label.frp_LabDate.FindObject('memDate') as TfrxMemoView).Font.Style := [fsBold];
    end;
  end
  else
    (frmFR_Label.frp_LabDate.FindObject('memDate') as TfrxMemoView).Font.Style := [];
// установить переменные в отчет -размер шрифта и дату в формате yyyy.mm.dd

  (frmFR_Label.frp_LabDate.FindObject('memDate') as TfrxMemoView).Font.Size := f_checked;

  (frmFR_Label.frp_LabDate.FindObject('memDate') as TfrxMemoView).Text := f_date;
  // гасим ненужные окна и зажигаем нужные
  mniExtra_Apply.Enabled := False;
  mniExtra_DateShow.Enabled := True;
  mniExtra_DatePrint.Enabled := True;
end;
 // предосмотр
procedure TfrmShowSoft.mniExtra_DateShowClick(Sender: TObject);
begin
  // задаем место открытие окна
  frmFR_Label.Top := 5;
  frmFR_Label.Left := 5;
// гасим ненужные окна
  mniExtra_DateShow.Enabled := False;

  frmFR_Label.Show;
  frmFR_Label.frp_LabDate.ShowReport();

end;
// печать
procedure TfrmShowSoft.mniExtra_DatePrintClick(Sender: TObject);
begin
   // задаем принтер по умолчанию
  frmFR_Label.frp_LabDate.Report.PrintOptions.Printer := f_print_576;

  frmFR_Label.frp_LabDate.ShowReport();
  frmFR_Label.frp_LabDate.Print;
end;

// конец блока номера ремонта и даты ***************************************************************

//**************************************************************************************************
procedure TfrmShowSoft.btnCloseClick(Sender: TObject);
begin
Close;
end;

end.
