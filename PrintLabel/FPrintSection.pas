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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrintSection: TfrmPrintSection;

implementation

uses
  FSelection, F_FR_Label;

{$R *.dfm}

procedure TfrmPrintSection.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ModalResult := 0;
Close;
end;
//   изменение шрифта главного меню
procedure TfrmPrintSection.FormCreate(Sender: TObject);
begin
 Screen.MenuFont.Size := 14;
 Screen.MenuFont.Name := 'Roboto';
end;

end.
