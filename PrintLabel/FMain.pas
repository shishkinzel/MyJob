unit FMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Mask, Vcl.Buttons, Vcl.Samples.Spin;

type
  TfrmMain = class(TForm)
    fonMain: TImage;
    txtTitle: TStaticText;
    lblDevice: TLabel;
    lblPackage: TLabel;
    redtDevice: TRichEdit;
    edtPackage: TEdit;
    lblID: TLabel;
    lblMAC: TLabel;
    medtID: TMaskEdit;
    lblMAChigt: TLabel;
    medtMAC: TMaskEdit;
    lblStep: TLabel;
    lblCount: TLabel;
    btnStart_Reset: TBitBtn;
    seStep: TSpinEdit;
    seCount: TSpinEdit;
    procedure medtMACKeyPress(Sender: TObject; var Key: Char);
    procedure btnStart_ResetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}
// ограничение ввода символов в mac-адрес

procedure TfrmMain.medtMACKeyPress(Sender: TObject; var Key: Char);
begin
 if not(Key in ['0' ..'9', 'a' ..'f', 'A' .. 'F']) then
    Key := #0;
end;

// кнопка ввода и сброса данных
procedure TfrmMain.btnStart_ResetClick(Sender: TObject);
begin
  if not (Sender is TBitBtn) then
    exit;
  if (Sender as TBitBtn).Caption = 'Принять данные' then
  begin
    (Sender as TBitBtn).Caption := 'Сбросить данные';
    ShowMessage('Принять данные');
  end
  else
  begin
    (Sender as TBitBtn).Caption := 'Принять данные';
    ShowMessage('Сбросить данные');
  end;


end;

end.
