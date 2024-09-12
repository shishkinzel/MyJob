unit FMessage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ImgList, System.ImageList, dmMacIterator;

type
  TfrmMsg = class(TForm)
    tmrMsg: TTimer;
    lblMsg: TLabel;
    ilMsg: TImageList;
    imgMsg: TImage;
    lblTitleMsg: TLabel;
    procedure tmrMsgTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMsg: TfrmMsg;

implementation

uses
  FListDevece, MacAdressIterator;

{$R *.dfm}

procedure TfrmMsg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmMsg.FormCreate(Sender: TObject);
var
  RGN: HRGN;
begin
  tmrMsg.Enabled := True;
  RGN := CreateRoundRectRgn(0, //координата верхнего левого угла региона
    0,            // y- координата верхнего левого угла региона
    ClientWidth,  // x- координата нижнего правого угла региона
    ClientHeight, // y- координата нижнего правого угла региона
    30,           // высота эллипса для закругленных углов
    30);          // ширина эллипса для закругленных углов
  SetWindowRgn(Handle, RGN, True);

  case f_flagMsg of
    0:
      begin
        lblMsg.WordWrap := False;
        lblTitleMsg.Caption := cs_MsgTitleAttention;
        lblMsg.Caption := cs_MsgShowFamile;
        tmrMsg.Interval := 1500;
      end;
    1:
      begin
        lblMsg.WordWrap := False;
        lblTitleMsg.Caption := cs_MsgTitleAttention;
        lblMsg.Caption := cs_MsgNoShowFamile;
        tmrMsg.Interval := 1500;
      end;
    2:
      begin
        lblMsg.WordWrap := True;
        lblMsg.Alignment := taCenter;
        lblTitleMsg.Caption := cs_MsgTitleAttention;
        lblMsg.Caption := cs_Title_famile + f_VarFamile;
        tmrMsg.Interval := 1500;
      end;
    3:
      begin
        lblMsg.WordWrap := False;

        lblTitleMsg.Caption := cs_MsgTitleAttention;
        lblMsg.Caption := '      Сохраняем';
        tmrMsg.Interval := 1500;
      end;
    4:
      begin
        lblMsg.WordWrap := False;

        lblTitleMsg.Caption := cs_MsgTitleAttention;
        lblMsg.Caption := '       Не Сохраняем';
        tmrMsg.Interval := 1500;
      end;
    5:
      begin
        lblMsg.WordWrap := False;

        lblTitleMsg.Caption := cs_MsgTitleInfo;
        lblMsg.Caption := '       Закрываем';
        tmrMsg.Interval := 1500;
      end;
    6:
      begin
        lblMsg.WordWrap := False;

        lblTitleMsg.Caption := cs_MsgTitleInfo;
        lblMsg.Caption := '       Не Закрываем';
        tmrMsg.Interval := 1500;
      end;
  end;

end;

procedure TfrmMsg.tmrMsgTimer(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.


