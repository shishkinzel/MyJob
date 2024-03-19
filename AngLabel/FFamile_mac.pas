unit FFamile_mac;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmFamily_mac = class(TForm)
    btn_Reset: TBitBtn;
    txt_Title: TStaticText;
    lbl_Title_mac: TLabel;
    lbl_Title_falmile: TLabel;
    btn_Atlanta: TBitBtn;
    lbl_Atlanta: TLabel;
    btn_Topaz: TBitBtn;
    lbl_Topaz: TLabel;
    btn_ksk: TBitBtn;
    lbl_ksk: TLabel;
    btn_Corundum: TBitBtn;
    lbl_Corundum: TLabel;
    lbl_Title_date: TLabel;
    lbl_date_valid: TLabel;
    lbl_time_valid: TLabel;
    lbl_date_atlanta: TLabel;
    lbl_date_topaz: TLabel;
    lbl_date_ksk: TLabel;
    lbl_date_corundum: TLabel;
    procedure btn_ResetClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_AtlantaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    const
    cs_mac = '68:EB:C5:' ;
  public
    { Public declarations }
  end;

var
  frmFamily_mac: TfrmFamily_mac;

implementation

uses
  MacAdressIterator, IniFiles;
{$R *.dfm}




 // создание формы и чтение конфигурационного файла

procedure TfrmFamily_mac.FormCreate(Sender: TObject);
var
  f_ini: TIniFile;
begin
// читаем валидную дату
  lbl_date_valid.Caption := frmMAC.f_date_valid;
  lbl_time_valid.Caption := frmMAC.f_time_valid;

//    читаем значение mac-адресов
  lbl_Atlanta.Caption := cs_mac + f_LastMAC_atlanta;
  lbl_Topaz.Caption := cs_mac + f_LastMAC_topaz;
  lbl_ksk.Caption := cs_mac + f_LastMAC_ksk;
  lbl_Corundum.Caption := cs_mac + f_LastMAC_corundum;

// читаем времени изменения по категориям
  lbl_date_atlanta.Caption := f_date_atlanta;
  lbl_date_topaz.Caption := f_date_topaz;
  lbl_date_ksk.Caption := f_date_ksk;
  lbl_date_corundum.Caption := f_date_corundum;

end;






// показ формы
procedure TfrmFamily_mac.FormShow(Sender: TObject);
var
  i: Integer;
begin

end;
// клик на выборе семейства устройств
{ TODO :
Описать выбор адреса из семейства по общему событию, клик по кнопке
Присвоить признак выбора семейства переменная global_f_mac: Byte }

procedure TfrmFamily_mac.btn_AtlantaClick(Sender: TObject);
var
  i: Integer;
begin
  if Sender is TBitBtn then
  begin
    case (Sender as TBitBtn).Tag of
      0:
        begin
          global_f_mac := 0;
          f_LastMAC := f_LastMAC_atlanta;
          f_VarFamile := cs_atlanta;
        end;
      1:
        begin
          global_f_mac := 1;
          f_LastMAC := f_LastMAC_topaz;
          f_VarFamile := cs_topaz;
        end;
      2:
        begin
          global_f_mac := 2;
          f_LastMAC := f_LastMAC_ksk;
          f_VarFamile := cs_ksk;
        end;
      3:
        begin
          global_f_mac := 3;
          f_LastMAC := f_LastMAC_corundum;
          f_VarFamile := cs_corundum;
        end;
    end;
  end
  else
    exit;
  frmMAC.ModalResult := mrOk;
  Close;
end;
































































































































































































































































// переход по нажатию кнопки "Ввод" - enter
procedure TfrmFamily_mac.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
    FindNextControl(ActiveControl, True, True, false).SetFocus;
end;

procedure TfrmFamily_mac.btn_ResetClick(Sender: TObject);
begin
  ModalResult := mrNo;
end;

end.

