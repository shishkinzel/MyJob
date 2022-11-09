unit FSelection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls,
  Vcl.Buttons,
//  ������������ �����
   FPrintSection;

type
  TfrmSelection = class(TForm)
    imgSelection: TImage;
    txtSelection: TStaticText;
    btnAdvacedLabel: TSpeedButton;
    btnLabel1: TSpeedButton;
    btnMAC: TSpeedButton;
    btnID: TSpeedButton;
    txtOtherUtill: TStaticText;
    btnPrint_QR: TSpeedButton;
    txtDevice: TStaticText;
    lblDevice: TLabel;
    lblPackage: TLabel;
    lblID: TLabel;
    lblMAC: TLabel;
    edtDevice: TEdit;
    edtPackage: TEdit;
    edtID: TEdit;
    edtMAC: TEdit;
    lblStep: TLabel;
    lblCount: TLabel;
    lblStep_num: TLabel;
    lblCount_num: TLabel;
    btnSOFT: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnLabel1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelection: TfrmSelection;
implementation

uses
  FMain;

{$R *.dfm}

procedure TfrmSelection.btnLabel1Click(Sender: TObject);
begin
frmPrintSection := TfrmPrintSection.Create(nil);
frmPrintSection.ShowModal;
if ModalResult = 0 then
  frmPrintSection.Free;
end;

procedure TfrmSelection.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmSelection.Free;
  frmMain.Show;
end;
// ���������� �����
procedure TfrmSelection.FormShow(Sender: TObject);
begin
  edtDevice.Text := frmMain.edtDevice.Text;
  edtPackage.Text := frmMain.edtPackage.Text;
  edtID.Text := frmMain.medtID.Text;
  edtMAC.Text := frmMain.medtMAC.Text;

  lblStep_num.Caption  := frmMain.seStep.Value.ToString;
  lblCount_num.Caption := frmMain.seCount.Value.ToString;
end;

end.

