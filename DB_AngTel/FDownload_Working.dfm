object frm_Download_Working: Tfrm_Download_Working
  Left = 0
  Top = 0
  Caption = #1058#1072#1073#1083#1080#1094#1072' '#1089' '#1079#1072#1075#1088#1091#1078#1077#1085#1085#1099#1084#1080' '#1076#1072#1085#1085#1099#1084#1080
  ClientHeight = 619
  ClientWidth = 1015
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm_Working
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object spl_Up: TSplitter
    Left = 0
    Top = 120
    Width = 1015
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 499
  end
  object spl_Down: TSplitter
    Left = 0
    Top = 496
    Width = 1015
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 128
  end
  object pnl_Up: TPanel
    Left = 0
    Top = 0
    Width = 1015
    Height = 120
    Align = alTop
    TabOrder = 0
  end
  object pnl_Main: TPanel
    Left = 0
    Top = 123
    Width = 1015
    Height = 373
    Align = alClient
    TabOrder = 1
    ExplicitTop = 120
    object dbG_Working: TDBGrid
      Left = 1
      Top = 26
      Width = 1013
      Height = 346
      Align = alClient
      DataSource = ds_Working
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object dbnav_Working: TDBNavigator
      Left = 1
      Top = 1
      Width = 1013
      Height = 25
      DataSource = ds_Working
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 962
    end
  end
  object pnl_Down: TPanel
    Left = 0
    Top = 499
    Width = 1015
    Height = 120
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 578
  end
  object ds_Working: TDataSource
    DataSet = dbMain.db_memTab_Working
    Left = 32
    Top = 443
  end
  object mm_Working: TMainMenu
    Left = 32
    Top = 16
  end
end
