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
  object dsTest: TDataSource
    DataSet = dbmPrintLabel.fdmtblPrint
    Left = 32
    Top = 456
  end
  object dsReport: TDataSource
    DataSet = dbmPrintLabel.fdmtblReport
    Left = 200
    Top = 480
  end
end
