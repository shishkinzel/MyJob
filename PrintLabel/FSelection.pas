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
    lbl_dev: TLabel;
    lbl_pac: TLabel;
    lbl_id: TLabel;
    lbl_mac: TLabel;
    lbl_step: TLabel;
    lbl_count: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnLabelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPrint_QRClick(Sender: TObject);
    procedure btnSOFTClick(Sender: TObject);
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
  frmShowSoft := TfrmShowSoft.Create(nil);
  frmSelection.Hide;
  frmShowSoft.ShowModal;
  if frmShowSoft.ModalResult = mrOk then
  begin
    frmShowSoft.Free;
    frmMain.Show;
  end;
end;

procedure TfrmSelection.btnSOFTClick(Sender: TObject);
begin
  frmPrintSection := TfrmPrintSection.Create(nil);
  frmPrintSection.Menu := nil;
  frmPrintSection.Menu := frmPrintSection.mmReport;
  frmPrintSection.ShowModal;
  if frmPrintSection.ModalResult > 0 then
  begin
    frmPrintSection.Free;
//    ModalResult := mrOk;
  end;
end;

procedure TfrmSelection.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmSelection.ModalResult := mrOk;

//  frmSelection.Free;

  frmMain.Show;
end;
// прорисовка формы

procedure TfrmSelection.FormShow(Sender: TObject);
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

end.





