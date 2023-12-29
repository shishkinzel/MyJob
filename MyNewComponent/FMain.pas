unit FMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, NkCtrls, BtnBeep, Vcl.ExtCtrls, uListAdd,
  uBeepWnd;

type
  Tfrm_NewComp = class(TForm)
    btnbp1: TButtonBeep;
    lstd_1: TListAdd;
    bpwnd1: TBeepWnd;
    procedure btnbp1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_NewComp: Tfrm_NewComp;

implementation

{$R *.dfm}


procedure Tfrm_NewComp.btnbp1Click(Sender: TObject);
begin
Self.Caption := 'Test';
end;

end.
