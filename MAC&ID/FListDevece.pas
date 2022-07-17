unit FListDevece;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmListDevice = class(TForm)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListDevice: TfrmListDevice;

implementation

uses
  MacAdressIterator;

{$R *.dfm}

procedure TfrmListDevice.FormShow(Sender: TObject);
begin
frmListDevice.Top := 10;
frmListDevice.Left := 750;
end;

end.
