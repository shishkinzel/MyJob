unit FShowSoft;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FMain,
   Vcl.StdCtrls, Vcl.Menus, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

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
  private
    { Private declarations }
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
  FSelection, FPrintSection,  // подключение форм
  F_FR_List, IdGlobal, frxClass, frxPreview, frxBarcode, frxBarcode2D;



{$R *.dfm}


// показ формы
procedure TfrmShowSoft.FormShow(Sender: TObject);
begin
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

procedure TfrmShowSoft.btnCloseClick(Sender: TObject);
begin
Close;
end;

end.

