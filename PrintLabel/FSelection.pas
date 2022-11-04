unit FSelection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls,
  Vcl.Buttons,
//  подсоединёные формы
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
    lblIDnumber: TLabel;
    lblMACnumber: TLabel;
    btnSOFT: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TfrmSelection.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmSelection.Free;
  frmMain.Show;
end;

end.

