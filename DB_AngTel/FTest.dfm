object frmTest: TfrmTest
  Left = 0
  Top = 0
  Caption = #1058#1077#1089#1090#1086#1074#1072#1103' '#1092#1086#1088#1084#1072
  ClientHeight = 700
  ClientWidth = 1025
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrdTest1: TDBGrid
    Left = 0
    Top = 0
    Width = 1025
    Height = 105
    Align = alTop
    DataSource = dsTest
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbgrdReport: TDBGrid
    Left = 0
    Top = 105
    Width = 1025
    Height = 256
    Align = alTop
    DataSource = dsReport
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object pnl1: TPanel
    Left = 576
    Top = 361
    Width = 449
    Height = 339
    Align = alRight
    TabOrder = 2
    object btnEd1: TButtonedEdit
      Left = 48
      Top = 80
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edt_1: TEdit
      Left = 48
      Top = 24
      Width = 121
      Height = 21
      MaxLength = 3
      TabOrder = 1
    end
    object se1: TSpinEdit
      Left = 224
      Top = 24
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 0
    end
  end
  object dsTest: TDataSource
    DataSet = dbMain.fd_mem_Dev
    Left = 16
    Top = 384
  end
  object dsReport: TDataSource
    DataSet = dbMain.tbl_DevAll
    Left = 64
    Top = 384
  end
end
