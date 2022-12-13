unit FPrintSection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Menus,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ActnMenus;

type
  TfrmPrintSection = class(TForm)
    mmPrintSection: TMainMenu;
    mniLabel: TMenuItem;
    mniLabelAdvanced: TMenuItem;
    mniID: TMenuItem;
    mniMAC: TMenuItem;
    mniNlittle: TMenuItem;
    mniNbig: TMenuItem;
    sepLab1: TMenuItem;
    mniNResetLab1: TMenuItem;
    mniNbig58_60: TMenuItem;
    mniNbig100_72: TMenuItem;
    mniNbig100_150: TMenuItem;
    sepLab2: TMenuItem;
    mniNResetLab2: TMenuItem;
    mniNidExecute: TMenuItem;
    mniNShowID: TMenuItem;
    mniNPrintID: TMenuItem;
    mniNLab3: TMenuItem;
    mniNResetLab3: TMenuItem;
    mniNmacExecute: TMenuItem;
    mniNLab4: TMenuItem;
    mniNResetLab4: TMenuItem;
    mniNShowmac: TMenuItem;
    mniNPrintmac: TMenuItem;
    mniNbig_mac: TMenuItem;
    pmmiSh30_20: TMenuItem;
    pmmiPr30_20: TMenuItem;
    pmmiSh58_40: TMenuItem;
    pmmiPr58_40: TMenuItem;
    pmmiSh58_40_mac: TMenuItem;
    pmmiPr58_40_mac: TMenuItem;
    pmmiSh58_60: TMenuItem;
    pmmiPr58_60: TMenuItem;
    pmmiSh100_72: TMenuItem;
    pmmiPr100_72: TMenuItem;
    pmmiSh100_150: TMenuItem;
    pmmiPr100_150: TMenuItem;
    ilPrintSelection_16: TImageList;
    ilPrintSelection_24_sub: TImageList;
    fonPrintSection: TImage;
    lbl_count: TLabel;
    lbl_dev: TLabel;
    lbl_id: TLabel;
    lbl_mac: TLabel;
    lbl_pac: TLabel;
    lbl_step: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mniNShowmacClick(Sender: TObject);
    procedure mniNResetLab4Click(Sender: TObject);
    procedure mniNPrintmacClick(Sender: TObject);
    procedure mniNPrintIDClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrintSection: TfrmPrintSection;

implementation

uses
  FSelection, F_FR_Label, FMain, frxClass;

{$R *.dfm}

procedure TfrmPrintSection.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 mniNResetLab4Click(Self);
ModalResult := 0;
Close;
end;
//   изменение шрифта главного меню
procedure TfrmPrintSection.FormCreate(Sender: TObject);
begin
 Screen.MenuFont.Size := 14;
 Screen.MenuFont.Name := 'Roboto';
end;

procedure TfrmPrintSection.FormShow(Sender: TObject);
var
  i: Integer;
begin
// Заполняем поля "Введеные данные устройства"
  for i := 0 to Self.ComponentCount - 1 do
  begin
    if (Self.Components[i] is TLabel) then
    begin
      case (Self.Components[i] as TLabel).Tag of
        100:
          (Self.Components[i] as TLabel).Caption := frmMain.f_myarray[0];
        101:
          (Self.Components[i] as TLabel).Caption := frmMain.f_myarray[1];
        102:
          (Self.Components[i] as TLabel).Caption := frmMain.f_myarray[2];
        103:
          (Self.Components[i] as TLabel).Caption := frmMain.f_myarray[3];
        104:
          (Self.Components[i] as TLabel).Caption := frmMain.f_myarray[4];
        105:
          (Self.Components[i] as TLabel).Caption := frmMain.f_myarray[5];
      end;
    end;
  end;

end;

// вызываем отчеты

procedure TfrmPrintSection.mniNShowmacClick(Sender: TObject);
var
  i: Integer;
begin
  if not (Sender is TMenuItem) then
    exit;

  frmFR_Label.Top := 10;
  frmFR_Label.Left := 10;

  for i := 0 to Self.ComponentCount - 1 do
  begin
    if Self.Components[i].Tag = (Sender as TMenuItem).Tag then
    begin
      case Self.Components[i].Tag of
        101:
          begin
            if Self.CanFocus then
              self.SetFocus;
          // гасим и зажигаем необходимые пункты меню
            mniNShowID.Enabled := False;
            mniNPrintID.Enabled := True;
            frmFR_Label.Show;
            frmFR_Label.frStic_id_40_12.ShowReport();
          end;
        102:
          begin
            if Self.CanFocus then
              self.SetFocus;
                    // гасим и зажигаем необходимые пункты меню
            mniNShowmac.Enabled := False;
            mniNPrintmac.Enabled := True;

                  // выбираем шрифт печати
            if frmMain.f_size_sticker then
              (frmFR_Label.frStic_mac_40_12.FindObject('mac') as TfrxMemoView).Font.Size := 11
            else
              (frmFR_Label.frStic_mac_40_12.FindObject('mac') as TfrxMemoView).Font.Size := 13;

            frmFR_Label.Show;
            frmFR_Label.frStic_mac_40_12.ShowReport();

          end;
        3020:
        begin

        end;
      5840:
        begin

        end;
      5841:
        begin

        end;
      5860:
        begin

        end;
      10072:
        begin

        end;
      100150:
        begin

        end;
        else
        Continue ;
    end;
    end;
  end;

end;
// вызываем печать
procedure TfrmPrintSection.mniNPrintIDClick(Sender: TObject);
begin
  frmFR_Label.frStic_id_40_12.ShowReport();
  frmFR_Label.frStic_id_40_12.Print;
end;

procedure TfrmPrintSection.mniNPrintmacClick(Sender: TObject);
begin
  frmFR_Label.frStic_mac_40_12.ShowReport();
  frmFR_Label.frStic_mac_40_12.Print;
end;



// сбрасываем все
procedure TfrmPrintSection.mniNResetLab4Click(Sender: TObject);
begin
// сбрасываем отчеты
  frmFR_Label.Close;
  frmFR_Label.frStic_mac_40_12.PreviewPages.Clear;

 // гасим и зажигаем необходимые пункты меню
  // серийный номер
  mniNShowID.Enabled := True;
  mniNPrintID.Enabled := False;
  // mac-адресс
  mniNShowmac.Enabled := True;
  mniNPrintmac.Enabled := False;
  //
end;

end.

