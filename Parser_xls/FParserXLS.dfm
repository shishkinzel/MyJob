object frm_ParserXLS: Tfrm_ParserXLS
  Left = 0
  Top = 0
  Caption = #1055#1072#1088#1089#1077#1088'_ Excel'
  ClientHeight = 735
  ClientWidth = 961
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm_parserxls
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object spl_app: TSplitter
    Left = 0
    Top = 73
    Width = 961
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 662
  end
  object spl_down: TSplitter
    Left = 0
    Top = 621
    Width = 961
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 76
    ExplicitWidth = 548
  end
  object pnl_App: TPanel
    Left = 0
    Top = 0
    Width = 961
    Height = 73
    Align = alTop
    TabOrder = 0
  end
  object pnl_Down: TPanel
    Left = 0
    Top = 624
    Width = 961
    Height = 111
    Align = alBottom
    TabOrder = 1
  end
  object pnl_Main: TPanel
    Left = 0
    Top = 76
    Width = 961
    Height = 545
    Align = alClient
    TabOrder = 2
    object pgc_xls: TPageControl
      Left = 1
      Top = 1
      Width = 959
      Height = 543
      ActivePage = ts_two
      Align = alClient
      TabOrder = 0
      object ts_one: TTabSheet
        Caption = #1055#1077#1088#1074#1072#1103' '#1074#1082#1083#1072#1076#1082#1072
        object mmo1: TMemo
          Left = 0
          Top = 0
          Width = 951
          Height = 515
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 664
          ExplicitTop = 32
          ExplicitWidth = 65
          ExplicitHeight = 41
        end
      end
      object ts_two: TTabSheet
        Caption = #1042#1090#1086#1088#1072#1103'  '#1074#1082#1083#1072#1076#1082#1072
        ImageIndex = 1
        object nv_two: TDBNavigator
          Left = 0
          Top = 0
          Width = 951
          Height = 25
          DataSource = ds_two
          Align = alTop
          TabOrder = 0
          ExplicitLeft = 120
          ExplicitTop = 64
          ExplicitWidth = 240
        end
        object grid_two: TDBGrid
          Left = 0
          Top = 25
          Width = 951
          Height = 490
          Align = alClient
          DataSource = ds_two
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
  end
  object mm_parserxls: TMainMenu
    Left = 48
    Top = 16
    object mni_main_File: TMenuItem
      Caption = #1060#1072#1081#1083
    end
  end
  object ds_two: TDataSource
    Left = 53
    Top = 221
  end
end
