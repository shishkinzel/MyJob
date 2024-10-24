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
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
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
    object txt_Title_operationWork: TStaticText
      Left = 272
      Top = 8
      Width = 4
      Height = 4
      Alignment = taCenter
      TabOrder = 0
    end
  end
  object pnl_down: TPanel
    Left = 0
    Top = 664
    Width = 1010
    Height = 101
    Align = alBottom
    TabOrder = 1
    object chk_id_key: TCheckBox
      Left = 294
      Top = 53
      Width = 102
      Height = 17
      Caption = #1055#1077#1088#1074#1080#1095#1085#1099#1081' '#1082#1083#1102#1095
      TabOrder = 0
    end
    object chk_device_name: TCheckBox
      Left = 8
      Top = 30
      Width = 113
      Height = 17
      Caption = #1048#1084#1103' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
      TabOrder = 1
    end
    object chk_device_selector: TCheckBox
      Left = 294
      Top = 30
      Width = 105
      Height = 17
      Caption = #1057#1086#1089#1090#1072#1074' '#1084#1086#1076#1091#1083#1077#1081
      TabOrder = 2
    end
    object chk_id_serial: TCheckBox
      Left = 8
      Top = 53
      Width = 113
      Height = 17
      Caption = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088
      TabOrder = 3
    end
    object chk_ethaddr: TCheckBox
      Left = 8
      Top = 76
      Width = 121
      Height = 17
      Caption = #1060#1080#1079#1080#1095#1077#1089#1082#1080#1081' '#1072#1076#1088#1077#1089
      TabOrder = 4
    end
    object chk_device_version: TCheckBox
      Left = 135
      Top = 30
      Width = 121
      Height = 17
      Caption = #1053#1072#1095#1072#1083#1100#1085#1072#1103' '#1074#1077#1088#1089#1080#1103
      TabOrder = 5
    end
    object chk_attempt: TCheckBox
      Left = 425
      Top = 30
      Width = 104
      Height = 17
      Caption = #1053#1086#1084#1077#1088' '#1087#1086#1087#1099#1090#1082#1080
      TabOrder = 6
    end
    object chk_request_date: TCheckBox
      Left = 294
      Top = 76
      Width = 105
      Height = 17
      Caption = #1044#1072#1090#1072
      TabOrder = 7
    end
    object chk_original_version: TCheckBox
      Left = 135
      Top = 53
      Width = 113
      Height = 17
      Caption = #1058#1077#1082#1091#1097#1072#1103' '#1074#1077#1088#1089#1080#1103
      TabOrder = 8
    end
    object chk_proposed_version: TCheckBox
      Left = 135
      Top = 76
      Width = 140
      Height = 17
      Caption = #1055#1088#1077#1076#1083#1086#1078#1077#1085#1085#1072#1103' '#1074#1077#1088#1089#1080#1103
      TabOrder = 9
    end
    object chk_All: TCheckBox
      Left = 557
      Top = 30
      Width = 105
      Height = 17
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1074#1089#1077
      TabOrder = 10
    end
    object txt_part_tab: TStaticText
      Left = 8
      Top = 8
      Width = 116
      Height = 17
      Alignment = taCenter
      Caption = #1042#1099#1073#1086#1088' '#1087#1086#1083#1077#1081' '#1090#1072#1073#1083#1080#1094#1099
      TabOrder = 11
    end
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
        Caption = #1042#1099#1073#1086#1088#1082#1072' '#1087#1086' '#1076#1072#1090#1077
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
            Time = 0.041666666664241350
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
          object btn_ts_one_Start: TBitBtn
            Left = 448
            Top = 24
            Width = 193
            Height = 25
            Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
            TabOrder = 2
            OnClick = btn_ts_one_StartClick
          end
          object btn_ts_one_Reset: TBitBtn
            Left = 680
            Top = 24
            Width = 193
            Height = 25
            Caption = #1057#1073#1088#1086#1089#1080#1090#1100
            TabOrder = 3
            OnClick = btn_ts_one_ResetClick
          end
        end
        object dbnav_ts_One: TDBNavigator
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 994
          Height = 25
          DataSource = ds_ts_one
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
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
        Caption = #1042#1099#1073#1086#1088#1082#1072' '#1087#1086' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1091
        ImageIndex = 1
        object dbG_ts_two: TDBGrid
          Left = 0
          Top = 31
          Width = 1000
          Height = 417
          Align = alClient
          DataSource = ds_ts_two
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object dbnav_ts_Two: TDBNavigator
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 994
          Height = 25
          DataSource = ds_ts_two
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
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
          object btn_ts_two_Start: TBitBtn
            Left = 464
            Top = 24
            Width = 193
            Height = 25
            Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
            TabOrder = 2
            OnClick = btn_ts_one_StartClick
          end
        end
      end
      object ts_three: TTabSheet
        Caption = #1042#1099#1073#1086#1088#1082#1072' '#1087#1086' '#1087#1086#1087#1099#1090#1082#1072#1084
        ImageIndex = 2
        object dbG_ts_three: TDBGrid
          Left = 0
          Top = 31
          Width = 1000
          Height = 417
          Align = alClient
          DataSource = ds_ts_Three
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object dbnav_ts_Three: TDBNavigator
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 994
          Height = 25
          DataSource = ds_ts_Three
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
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
        Caption = #1042#1099#1073#1086#1088#1082#1072' '#1087#1086' '#1089#1077#1088#1081#1085#1086#1084#1091' '#1085#1086#1084#1077#1088#1091
        ImageIndex = 3
        object dbG_ts_four: TDBGrid
          Left = 0
          Top = 31
          Width = 1000
          Height = 417
          Align = alClient
          DataSource = ds_ts_Four
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object dbnav_ts_Four: TDBNavigator
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 994
          Height = 25
          DataSource = ds_ts_Four
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
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
    object mni_conn_connect_db: TMenuItem
      Caption = #1057#1086#1077#1076#1080#1085#1077#1085#1080#1077' '#1089' '#1041#1044
      object mni_conn_Connection: TMenuItem
        Caption = #1057#1086#1077#1076#1080#1085#1077#1085#1080#1077
        OnClick = mni_conn_ConnectionClick
      end
      object mni_conn_SeparatorOne: TMenuItem
        Caption = '-'
      end
      object mni_conn_DB_internal: TMenuItem
        Caption = #1040#1074#1090#1086#1085#1086#1084#1085#1072#1103' '#1041#1044
        OnClick = mni_conn_DB_internalClick
      end
    end
    object mni_msql_File: TMenuItem
      Caption = #1060#1072#1081#1083
      object mni_msql_MainOpen: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
      end
      object mni_msql_MainSave: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      end
    end
    object mni_msql_OperationWork: TMenuItem
      Caption = #1056#1077#1078#1080#1084' '#1088#1072#1073#1086#1090#1099' '#1089' '#1041#1044
      Visible = False
      object mni_msql_internal: TMenuItem
        Caption = #1040#1074#1090#1086#1085#1086#1084#1085#1072#1103' '#1041#1044
        OnClick = mni_msql_internalClick
      end
      object mni_msql_DB_server: TMenuItem
        Caption = #1041#1044' '#1085#1072' '#1089#1077#1088#1074#1077#1088#1077
        Enabled = False
        OnClick = mni_msql_DB_serverClick
      end
    end
  end
  object ds_ts_one: TDataSource
    DataSet = dm_Application_mysql.fd_g_Date
    Left = 21
    Top = 493
  end
  object ds_ts_two: TDataSource
    DataSet = dm_Application_mysql.db_memTab_app_mysql
    Left = 77
    Top = 493
  end
  object ds_ts_Three: TDataSource
    Left = 141
    Top = 493
  end
  object ds_ts_Four: TDataSource
    Left = 197
    Top = 493
  end
end
