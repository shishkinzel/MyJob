unit FSelection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls,
  Vcl.Buttons,
//  подсоединёные формы
   FPrintSection, System.ImageList, Vcl.ImgList;

type
  TfrmSelection = class(TForm)
    btnAdvacedLabel: TSpeedButton;
    btnLabel: TSpeedButton;
    btnMAC: TSpeedButton;
    btnID: TSpeedButton;
    btnPrint_QR: TSpeedButton;
    btnSOFT: TSpeedButton;
    ilSelection: TImageList;
    fonSelection: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnLabelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPrint_QRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelection: TfrmSelection;

implementation

uses
  FMain, FShowSoft;

{$R *.dfm}
procedure TfrmSelection.btnLabelClick(Sender: TObject);
begin
  frmPrintSection := TfrmPrintSection.Create(nil);

  if not (Sender is TSpeedButton) then
    exit;
  case (Sender as TSpeedButton).Tag of
    1:
      begin
        frmPrintSection.mniLabel.Enabled := True;
      end;
    2:
      begin
        frmPrintSection.mniLabelAdvanced.Enabled := True;
      end;
    3:
      begin
        frmPrintSection.mniMAC.Enabled := True;
      end;
    4:
      begin
        frmPrintSection.mniID.Enabled := True;
      end;
  end;

  frmPrintSection.ShowModal;
  if ModalResult = 0 then
    frmPrintSection.Free;
end;




procedure TfrmSelection.btnPrint_QRClick(Sender: TObject);
begin
frmShowSoft.Show;
end;

procedure TfrmSelection.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmSelection.Free;
  frmMain.Show;
end;
// прорисовка формы

procedure TfrmSelection.FormShow(Sender: TObject);
begin
// активация меню выбора печати
  if f_showPrintForm then
  begin
//    pnlPrintSelection.Visible := True;
//    pnlPrintSelection_qr.Visible := False;
  end
  else
  begin
//    pnlPrintSelection.Visible := False;
//    pnlPrintSelection_qr.Visible := True;
  end;
//
//  labDevice.Caption := frmMain.edtDevice.Text;
//  labPackage.Caption := frmMain.edtPackage.Text;
//  labID.Caption := frmMain.medtID.Text;
//  labMAC.Caption := frmMain.medtMAC.Text;
//
//  lblStep_num.Caption  := frmMain.seStep.Value.ToString;
//  lblCount_num.Caption := frmMain.seCount.Value.ToString;

  // активация кнопки
//  if frmMain.f_Soft then
//     btnPrint_QR.Enabled := True;
end;

end.





