unit FShowSoft;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TfrmShowSoft = class(TForm)
    mmoShowSoft: TMemo;
    btnCount: TButton;
    btnApply: TButton;
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
    cbb_rmp: TComboBox;
    mniReset: TMenuItem;
    mniSeparator3: TMenuItem;
    chkOrd_13: TCheckBox;
    txtNameDevice: TStaticText;
    lbl_NameDevice: TLabel;
    procedure btnCountClick(Sender: TObject);
    procedure mniExitLoadSoftClick(Sender: TObject);
    procedure mniSaveLoadSoftClick(Sender: TObject);
    procedure mniOpenLoadSoftClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mniClearClick(Sender: TObject);
    procedure mniFontClick(Sender: TObject);
    procedure mniColorBackGroundClick(Sender: TObject);
    procedure cbb_rmpChange(Sender: TObject);
    procedure mniResetClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fTextSoft: string;         // текст в окне
    fText_rmp : string;        // выбор рабочего места программирования
    flag_fTextSoft : Boolean;  // наличие данных в окне
  end;

var
  frmShowSoft: TfrmShowSoft;

implementation

uses
  MacAdressIterator;

{$R *.dfm}

// показываем форму
procedure TfrmShowSoft.FormShow(Sender: TObject);
begin
// выставляем необходимые флаги
cbb_rmp.Enabled := True;
flag_fTextSoft := False;
// отображаем название устройства
  if frmMAC.edtDevice.Text = '' then

  else
    txtNameDevice.Caption := frmMAC.edtDevice.Text;

// начальная конфигурация формы
  mmoShowSoft.Enabled := False;
  btnCount.Enabled := False;
  btnApply.Enabled := False;

end;

procedure TfrmShowSoft.btnCountClick(Sender: TObject);
var
  i: Integer;
begin
  fTextSoft := '';
  for i := 0 to mmoShowSoft.Lines.Count - 1 do
  begin
    if chkOrd_13.Checked then
    begin
      fTextSoft := fTextSoft + mmoShowSoft.Lines.Strings[i] + #13;
      fText_rmp := cbb_rmp.Text;
    end
    else
    begin
      fTextSoft := fTextSoft + mmoShowSoft.Lines.Strings[i];
      fText_rmp := cbb_rmp.Text;
    end;
  end;
  if fTextSoft <> '' then
    ShowMessage('Информация считана' + #13 + 'Можно закрыть окно')
  else
    ShowMessage('Вы ничего не ввели' + #13 + 'Можно закрыть окно');
// Сброс Memo после считывания
  mmoShowSoft.Clear;
 fTextSoft := TrimLeft(fTextSoft);
end;

procedure TfrmShowSoft.mniOpenLoadSoftClick(Sender: TObject);
begin
  if dlgOpenLostSoft.Execute then
  begin
    mmoShowSoft.Lines.LoadFromFile(dlgOpenLostSoft.FileName);
    ShowMessage('Вы успешно выбрали сохраненную конфигурацию командной строки!!!');
  end
  else
  begin
    ShowMessage('Вы отказались от выбора конфигурации командной строки!!!');
  end;
end;

procedure TfrmShowSoft.mniResetClick(Sender: TObject);
begin
mmoShowSoft.Enabled := False;
btnCount.Enabled := False;
btnApply.Enabled := False;
cbb_rmp.Enabled := True;
cbb_rmp.ItemIndex := 0;
end;

procedure TfrmShowSoft.mniSaveLoadSoftClick(Sender: TObject);
begin
  if dlgSaveLoadSoft.Execute then
  begin
    if AnsiPos('.', dlgSaveLoadSoft.FileName) > 0 then
      mmoShowSoft.Lines.SaveToFile(dlgSaveLoadSoft.FileName)
    else
    begin
      mmoShowSoft.Lines.SaveToFile(dlgSaveLoadSoft.FileName + '.load_txt');
      ShowMessage('Вы успешно сохранили конфигурацию командной строки!!!');
    end;
  end
  else
  begin
    ShowMessage('Вы отказались от сохранения конфигурации командной строки!!!');
  end;

end;

procedure TfrmShowSoft.mniClearClick(Sender: TObject);
begin
  mmoShowSoft.Clear;
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
// закрытие окна
procedure TfrmShowSoft.cbb_rmpChange(Sender: TObject);
begin
ShowMessage('Вы выбрали "Рабочее место программирования"' + #10#13 + cbb_rmp.Text);
  cbb_rmp.Enabled := False;
  mmoShowSoft.Enabled := True;
  btnCount.Enabled :=True;
  btnApply.Enabled :=True;

end;

procedure TfrmShowSoft.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fTextSoft = '' then
    flag_fTextSoft := True;   // данных нет

  cbb_rmp.Visible := False;
  mniExitLoadSoftClick(nil);

end;

procedure TfrmShowSoft.mniExitLoadSoftClick(Sender: TObject);
begin
  mmoShowSoft.Clear;
  frmShowSoft.Close;
end;

end.

