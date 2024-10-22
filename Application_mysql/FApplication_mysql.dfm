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
  Position = poScreenCenter
  OnCreate = FormCreate
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
  end
  object pnl_Main: TPanel
    Left = 0
    Top = 76
    Width = 1010
    Height = 585
    Align = alClient
    TabOrder = 2
    object pgc_app_mysql: TPageControl
      Left = 1
      Top = 1
      Width = 1008
      Height = 583
      ActivePage = ts_one
      Align = alClient
      TabOrder = 0
      object ts_one: TTabSheet
        Caption = 'ts_one'
        object pnl_ts_one: TPanel
          Left = 0
          Top = 448
          Width = 1000
          Height = 107
          Align = alBottom
          TabOrder = 0
          object dtp_ts_ds_one_start: TDateTimePicker
            Left = 3
            Top = 24
            Width = 186
            Height = 21
            Date = 45587.000000000000000000
            Time = 45587.000000000000000000
            TabOrder = 0
            OnChange = dtp_ts_ds_one_startChange
          end
          object dtp_ts_ds_one_end: TDateTimePicker
            Left = 235
            Top = 24
            Width = 186
            Height = 21
            Date = 45587.000000000000000000
            Time = 0.999988425923220300
            TabOrder = 1
            OnChange = dtp_ts_ds_one_endChange
          end
          object btn_ts_one: TBitBtn
            Left = 512
            Top = 24
            Width = 281
            Height = 25
            Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
            TabOrder = 2
            OnClick = btn_ts_oneClick
          end
        end
        object dbnav_ts_One: TDBNavigator
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 994
          Height = 25
          DataSource = ds_ts_one
          Align = alTop
          TabOrder = 1
        end
        object dbG_ts_one: TDBGrid
          Left = 0
          Top = 31
          Width = 1000
          Height = 417
          Align = alClient
          DataSource = ds_ts_one
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object ts_two: TTabSheet
        Caption = 'ts_two'
        ImageIndex = 1
        object DBGrid1: TDBGrid
          Left = 0
          Top = 31
          Width = 1000
          Height = 417
          Align = alClient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object DBNavigator1: TDBNavigator
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 994
          Height = 25
          Align = alTop
          TabOrder = 1
        end
        object Panel1: TPanel
          Left = 0
          Top = 448
          Width = 1000
          Height = 107
          Align = alBottom
          TabOrder = 2
          object DateTimePicker1: TDateTimePicker
            Left = 3
            Top = 24
            Width = 186
            Height = 21
            Date = 45587.000000000000000000
            Time = 0.682479155089822600
            TabOrder = 0
          end
          object DateTimePicker2: TDateTimePicker
            Left = 235
            Top = 24
            Width = 186
            Height = 21
            Date = 45587.000000000000000000
            Time = 0.682479155089822600
            TabOrder = 1
          end
        end
      end
      object ts_three: TTabSheet
        Caption = 'ts_three'
        ImageIndex = 2
        object DBGrid2: TDBGrid
          Left = 0
          Top = 31
          Width = 1000
          Height = 417
          Align = alClient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object DBNavigator2: TDBNavigator
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 994
          Height = 25
          Align = alTop
          TabOrder = 1
        end
        object Panel2: TPanel
          Left = 0
          Top = 448
          Width = 1000
          Height = 107
          Align = alBottom
          TabOrder = 2
          object DateTimePicker3: TDateTimePicker
            Left = 3
            Top = 24
            Width = 186
            Height = 21
            Date = 45587.000000000000000000
            Time = 0.682479155089822600
            TabOrder = 0
          end
          object DateTimePicker4: TDateTimePicker
            Left = 235
            Top = 24
            Width = 186
            Height = 21
            Date = 45587.000000000000000000
            Time = 0.682479155089822600
            TabOrder = 1
          end
        end
      end
      object ts_four: TTabSheet
        Caption = 'ts_four'
        ImageIndex = 3
        object DBGrid3: TDBGrid
          Left = 0
          Top = 31
          Width = 1000
          Height = 417
          Align = alClient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object DBNavigator3: TDBNavigator
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 994
          Height = 25
          Align = alTop
          TabOrder = 1
        end
        object Panel3: TPanel
          Left = 0
          Top = 448
          Width = 1000
          Height = 107
          Align = alBottom
          TabOrder = 2
          object DateTimePicker5: TDateTimePicker
            Left = 3
            Top = 24
            Width = 186
            Height = 21
            Date = 45587.000000000000000000
            Time = 0.682479155089822600
            TabOrder = 0
          end
          object DateTimePicker6: TDateTimePicker
            Left = 235
            Top = 24
            Width = 186
            Height = 21
            Date = 45587.000000000000000000
            Time = 0.682479155089822600
            TabOrder = 1
          end
        end
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
  object ds_ts_one: TDataSource
    DataSet = dm_Application_mysql.fd_g_Date
    Left = 29
    Top = 477
  end
end
