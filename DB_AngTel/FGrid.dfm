object frmGrid: TfrmGrid
  Left = 0
  Top = 0
  Caption = #1057#1074#1086#1076#1085#1072#1103' '#1090#1072#1073#1083#1080#1094#1072' '#1074#1099#1087#1091#1097#1077#1085#1085#1086#1081' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
  ClientHeight = 720
  ClientWidth = 964
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object splTop: TSplitter
    Left = 0
    Top = 279
    Width = 964
    Height = 2
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 41
    ExplicitWidth = 898
  end
  object splDown: TSplitter
    Left = 0
    Top = 599
    Width = 964
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 43
    ExplicitWidth = 314
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 964
    Height = 279
    Align = alTop
    TabOrder = 0
    object dbnav_Global: TDBNavigator
      Left = 1
      Top = 1
      Width = 962
      Height = 25
      DataSource = ds_Global
      Align = alTop
      TabOrder = 0
    end
    object dbG_Global: TDBGrid
      Left = 1
      Top = 26
      Width = 962
      Height = 252
      Align = alClient
      DataSource = ds_Global
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object pnlDown: TPanel
    Left = 0
    Top = 602
    Width = 964
    Height = 118
    Align = alBottom
    TabOrder = 1
  end
  object pnlMain: TPanel
    Left = 0
    Top = 281
    Width = 964
    Height = 318
    Align = alClient
    TabOrder = 2
    object dbnav_Working: TDBNavigator
      Left = 1
      Top = 1
      Width = 962
      Height = 25
      DataSource = ds_Working
      Align = alTop
      TabOrder = 0
    end
    object dbG_Working: TDBGrid
      Left = 1
      Top = 26
      Width = 962
      Height = 291
      Align = alClient
      DataSource = ds_Working
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object ds_Working: TDataSource
    DataSet = dbMain.db_memTab_Working
    Left = 96
    Top = 544
  end
  object ds_Global: TDataSource
    DataSet = dbMain.db_memTab_Clobal
    Left = 40
    Top = 544
  end
end
