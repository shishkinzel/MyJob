object frm_app_mysql: Tfrm_app_mysql
  Left = 0
  Top = 0
  Caption = 'Application for MySQL'
  ClientHeight = 765
  ClientWidth = 1010
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm_app_mysql
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object spl_up: TSplitter
    Left = 0
    Top = 73
    Width = 1010
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 591
  end
  object spl_down: TSplitter
    Left = 0
    Top = 661
    Width = 1010
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 81
  end
  object pnl_up: TPanel
    Left = 0
    Top = 0
    Width = 1010
    Height = 73
    Align = alTop
    TabOrder = 0
  end
  object pnl_down: TPanel
    Left = 0
    Top = 664
    Width = 1010
    Height = 101
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 1
    ExplicitTop = 665
  end
  object pnl_Main: TPanel
    Left = 0
    Top = 76
    Width = 1010
    Height = 585
    Align = alClient
    TabOrder = 2
    ExplicitTop = 400
    ExplicitHeight = 101
    object pgc_app_mysql: TPageControl
      Left = 1
      Top = 1
      Width = 1008
      Height = 583
      ActivePage = ts_four
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 589
      object ts_one: TTabSheet
        Caption = 'ts_one'
      end
      object ts_two: TTabSheet
        Caption = 'ts_two'
        ImageIndex = 1
      end
      object ts_three: TTabSheet
        Caption = 'ts_three'
        ImageIndex = 2
      end
      object ts_four: TTabSheet
        Caption = 'ts_four'
        ImageIndex = 3
      end
    end
  end
  object mm_app_mysql: TMainMenu
    Left = 24
    Top = 24
    object mni_msql_File: TMenuItem
      Caption = #1060#1072#1081#1083
    end
    object mni_msql_connect_db: TMenuItem
      Caption = #1057#1086#1077#1076#1080#1085#1077#1085#1080#1077' '#1089' '#1041#1044
    end
  end
end
