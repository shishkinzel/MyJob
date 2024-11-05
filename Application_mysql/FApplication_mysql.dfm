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
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
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
    object btn_pn_up_reset: TBitBtn
      Tag = 111
      Left = 792
      Top = 27
      Width = 201
      Height = 21
      Caption = #1054#1073#1097#1080#1081' '#1089#1073#1088#1086#1089
      TabOrder = 1
      OnClick = btn_pn_up_resetClick
    end
  end
  object pnl_down: TPanel
    Left = 0
    Top = 664
    Width = 1010
    Height = 101
    Align = alBottom
    TabOrder = 1
    object chk_device_name: TCheckBox
      Tag = 101
      Left = 5
      Top = 30
      Width = 113
      Height = 17
      Caption = #1048#1084#1103' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 0
    end
    object chk_id_serial: TCheckBox
      Tag = 102
      Left = 6
      Top = 53
      Width = 113
      Height = 17
      Caption = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 1
    end
    object chk_ethaddr: TCheckBox
      Tag = 103
      Left = 6
      Top = 76
      Width = 121
      Height = 17
      Caption = #1060#1080#1079#1080#1095#1077#1089#1082#1080#1081' '#1072#1076#1088#1077#1089
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 2
    end
    object chk_device_version: TCheckBox
      Tag = 104
      Left = 135
      Top = 30
      Width = 121
      Height = 17
      Caption = #1053#1072#1095#1072#1083#1100#1085#1072#1103' '#1074#1077#1088#1089#1080#1103
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 3
    end
    object chk_attempt: TCheckBox
      Tag = 105
      Left = 133
      Top = 53
      Width = 104
      Height = 17
      Caption = #1053#1086#1084#1077#1088' '#1087#1086#1087#1099#1090#1082#1080
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 4
    end
    object chk_request_date: TCheckBox
      Tag = 106
      Left = 135
      Top = 76
      Width = 105
      Height = 17
      Caption = #1044#1072#1090#1072
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 5
    end
    object chk_original_version: TCheckBox
      Tag = 107
      Left = 272
      Top = 29
      Width = 113
      Height = 17
      Caption = #1058#1077#1082#1091#1097#1072#1103' '#1074#1077#1088#1089#1080#1103
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 6
    end
    object chk_proposed_version: TCheckBox
      Tag = 108
      Left = 272
      Top = 53
      Width = 140
      Height = 17
      Caption = #1055#1088#1077#1076#1083#1086#1078#1077#1085#1085#1072#1103' '#1074#1077#1088#1089#1080#1103
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 7
    end
    object chk_device_selector: TCheckBox
      Tag = 109
      Left = 272
      Top = 76
      Width = 105
      Height = 17
      Caption = #1057#1086#1089#1090#1072#1074' '#1084#1086#1076#1091#1083#1077#1081
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 8
    end
    object chk_All: TCheckBox
      Tag = 110
      Left = 477
      Top = 30
      Width = 105
      Height = 17
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1074#1089#1077
      Checked = True
      State = cbChecked
      TabOrder = 10
      OnClick = chk_AllClick
    end
    object txt_part_tab: TStaticText
      Left = 8
      Top = 8
      Width = 116
      Height = 17
      Alignment = taCenter
      Caption = #1042#1099#1073#1086#1088' '#1087#1086#1083#1077#1081' '#1090#1072#1073#1083#1080#1094#1099
      TabOrder = 9
    end
    object btn_down_select: TBitBtn
      Tag = 111
      Left = 477
      Top = 64
      Width = 468
      Height = 21
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1087#1086#1083#1103' '#1090#1072#1073#1083#1080#1094#1099
      TabOrder = 11
      OnClick = btn_down_selectClick
    end
  end
  object pnl_Main: TPanel
    Left = 0
    Top = 76
    Width = 1010
    Height = 585
    Align = alClient
    Enabled = False
    TabOrder = 2
    object pgc_app_mysql: TPageControl
      Left = 1
      Top = 1
      Width = 1008
      Height = 583
      ActivePage = ts_six
      Align = alClient
      TabOrder = 0
      object ts_one: TTabSheet
        Caption = #1042#1099#1073#1086#1088#1082#1072' '#1087#1086' '#1076#1072#1090#1077
        OnShow = ts_oneShow
        object pnl_ts_one: TPanel
          Left = 0
          Top = 448
          Width = 1000
          Height = 107
          Align = alBottom
          TabOrder = 0
          object lbl_start_date: TLabel
            Left = 16
            Top = 32
            Width = 12
            Height = 13
            Caption = #1086#1090
          end
          object lbl_end_date: TLabel
            Left = 219
            Top = 32
            Width = 13
            Height = 13
            Caption = #1076#1086
          end
          object dtp_ts_ds_one_start: TDateTimePicker
            Left = 16
            Top = 51
            Width = 186
            Height = 21
            Date = 45587.000000000000000000
            Time = 0.041666666664241350
            TabOrder = 0
            OnChange = dtp_ts_ds_one_startChange
          end
          object dtp_ts_ds_one_end: TDateTimePicker
            Left = 219
            Top = 51
            Width = 186
            Height = 21
            Date = 45587.000000000000000000
            Time = 0.999988425923220300
            TabOrder = 1
            OnChange = dtp_ts_ds_one_endChange
          end
          object btn_ts_one_Start: TBitBtn
            Left = 450
            Top = 51
            Width = 180
            Height = 21
            Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
            TabOrder = 2
            OnClick = btn_ts_one_StartClick
          end
          object btn_ts_one_Reset: TBitBtn
            Left = 680
            Top = 51
            Width = 180
            Height = 21
            Caption = #1057#1073#1088#1086#1089#1080#1090#1100
            Enabled = False
            TabOrder = 3
            OnClick = btn_ts_one_ResetClick
          end
          object txt_Title_date: TStaticText
            Left = 1
            Top = 1
            Width = 998
            Height = 17
            Align = alTop
            Alignment = taCenter
            Caption = #1042#1099#1073#1086#1088#1082#1072' '#1087#1086' '#1076#1072#1090#1077
            TabOrder = 4
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
        OnShow = ts_twoShow
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
          object btn_ts_two_Start: TBitBtn
            Left = 450
            Top = 24
            Width = 180
            Height = 21
            Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
            TabOrder = 1
            OnClick = btn_ts_two_StartClick
          end
          object cbb_app_mysql: TComboBox
            Left = 3
            Top = 24
            Width = 391
            Height = 21
            Style = csDropDownList
            TabOrder = 0
          end
          object btn_ts_two_Reset: TBitBtn
            Left = 680
            Top = 24
            Width = 180
            Height = 21
            Caption = #1057#1073#1088#1086#1089#1080#1090#1100
            Enabled = False
            TabOrder = 3
            OnClick = btn_ts_two_ResetClick
          end
          object txt_Title_device: TStaticText
            Left = 1
            Top = 1
            Width = 998
            Height = 17
            Align = alTop
            Alignment = taCenter
            Caption = #1042#1099#1073#1086#1088#1082#1072' '#1087#1086' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1091
            TabOrder = 2
          end
        end
      end
      object ts_three: TTabSheet
        Caption = #1042#1099#1073#1086#1088#1082#1072' '#1087#1086' '#1087#1086#1087#1099#1090#1082#1072#1084
        ImageIndex = 2
        OnShow = ts_threeShow
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
          object lbl_start_attempt: TLabel
            Left = 24
            Top = 24
            Width = 12
            Height = 13
            Caption = #1086#1090
          end
          object lbl_end_attempt: TLabel
            Left = 104
            Top = 24
            Width = 13
            Height = 13
            Caption = #1076#1086
          end
          object txt_Title_attempt: TStaticText
            Left = 1
            Top = 1
            Width = 998
            Height = 17
            Align = alTop
            Alignment = taCenter
            Caption = #1042#1099#1073#1086#1088#1082#1072' '#1087#1086' '#1087#1086#1087#1099#1090#1082#1072#1084' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103' '#1055#1054
            TabOrder = 0
          end
          object se_startAttempt: TSpinEdit
            Left = 24
            Top = 43
            Width = 60
            Height = 22
            MaxValue = 1
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object se_endAttempt: TSpinEdit
            Left = 104
            Top = 43
            Width = 60
            Height = 22
            MaxValue = 1
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object btn_ts_three_Reset: TBitBtn
            Left = 688
            Top = 32
            Width = 180
            Height = 21
            Caption = #1057#1073#1088#1086#1089#1080#1090#1100
            Enabled = False
            TabOrder = 4
            OnClick = btn_ts_three_ResetClick
          end
          object btn_ts_three_start: TBitBtn
            Left = 450
            Top = 32
            Width = 180
            Height = 21
            Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
            TabOrder = 3
            OnClick = btn_ts_three_startClick
          end
        end
      end
      object ts_four: TTabSheet
        Caption = #1042#1099#1073#1086#1088#1082#1072' '#1087#1086' '#1089#1077#1088#1081#1085#1086#1084#1091' '#1085#1086#1084#1077#1088#1091
        ImageIndex = 3
        OnShow = ts_fourShow
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
          object lbl_end_id: TLabel
            Left = 160
            Top = 21
            Width = 13
            Height = 13
            Caption = #1076#1086
          end
          object lbl_start_id: TLabel
            Left = 13
            Top = 21
            Width = 12
            Height = 13
            Caption = #1086#1090
          end
          object txt_Title_id: TStaticText
            Left = 1
            Top = 1
            Width = 998
            Height = 17
            Align = alTop
            Alignment = taCenter
            Caption = #1042#1099#1073#1086#1088#1082#1072' '#1087#1086' '#1089#1077#1088#1080#1081#1085#1086#1084#1091' '#1085#1086#1084#1077#1088#1091
            TabOrder = 0
          end
          object btn_ts_four_Reset: TBitBtn
            Left = 696
            Top = 40
            Width = 180
            Height = 21
            Caption = #1057#1073#1088#1086#1089#1080#1090#1100
            Enabled = False
            TabOrder = 4
            OnClick = btn_ts_four_ResetClick
          end
          object btn_ts_four_start: TBitBtn
            Left = 458
            Top = 40
            Width = 180
            Height = 21
            Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
            TabOrder = 3
            OnClick = btn_ts_four_startClick
          end
          object medt_four_start: TMaskEdit
            Tag = 2
            Left = 13
            Top = 40
            Width = 111
            Height = 23
            EditMask = '000_000_000_000;1; '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Roboto'
            Font.Style = []
            MaxLength = 15
            ParentFont = False
            TabOrder = 1
            Text = '000_000_000_000'
          end
          object medt_four_end: TMaskEdit
            Tag = 2
            Left = 160
            Top = 40
            Width = 111
            Height = 23
            EditMask = '000_000_000_000;1; '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Roboto'
            Font.Style = []
            MaxLength = 15
            ParentFont = False
            TabOrder = 2
            Text = '000_000_000_000'
          end
        end
      end
      object ts_five: TTabSheet
        Caption = #1042#1099#1073#1086#1088#1082#1072' '#1087#1086' '#1092#1080#1079'. '#1072#1076#1088#1077#1089#1091
        ImageIndex = 4
        OnShow = ts_fiveShow
        object pnl_ts_five: TPanel
          Left = 0
          Top = 448
          Width = 1000
          Height = 107
          Align = alBottom
          TabOrder = 0
          object Label1: TLabel
            Left = 168
            Top = 29
            Width = 13
            Height = 13
            Caption = #1076#1086
          end
          object lbl_five: TLabel
            Left = 21
            Top = 29
            Width = 12
            Height = 13
            Caption = #1086#1090
          end
          object StaticText1: TStaticText
            Left = 1
            Top = 1
            Width = 998
            Height = 17
            Align = alTop
            Alignment = taCenter
            Caption = #1042#1099#1073#1086#1088#1082#1072' '#1087#1086' '#1092#1080#1079#1080#1095#1077#1089#1082#1086#1084#1091' '#1072#1076#1088#1077#1089#1091
            TabOrder = 0
          end
          object btn_ts_five_reset: TBitBtn
            Left = 696
            Top = 40
            Width = 180
            Height = 21
            Caption = #1057#1073#1088#1086#1089#1080#1090#1100
            Enabled = False
            TabOrder = 4
            OnClick = btn_ts_five_resetClick
          end
          object btn_ts_five_start: TBitBtn
            Left = 458
            Top = 40
            Width = 180
            Height = 21
            Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
            TabOrder = 3
            OnClick = btn_ts_five_startClick
          end
          object medt_five_start: TMaskEdit
            Tag = 3
            Left = 21
            Top = 48
            Width = 120
            Height = 23
            Alignment = taCenter
            CharCase = ecUpperCase
            EditMask = '\6\8\:\E\B\:\C\5\:AA:AA:AA;1; '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Roboto'
            Font.Style = []
            MaxLength = 17
            ParentFont = False
            TabOrder = 1
            Text = '68:EB:C5:00:00:00'
            OnKeyPress = medt_five_startKeyPress
          end
          object medt_five_end: TMaskEdit
            Tag = 3
            Left = 168
            Top = 48
            Width = 120
            Height = 23
            Alignment = taCenter
            CharCase = ecUpperCase
            EditMask = '\6\8\:\E\B\:\C\5\:AA:AA:AA;1; '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Roboto'
            Font.Style = []
            MaxLength = 17
            ParentFont = False
            TabOrder = 2
            Text = '68:EB:C5:00:00:00'
            OnKeyPress = medt_five_startKeyPress
          end
        end
        object dbnav_ts_five: TDBNavigator
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 994
          Height = 25
          DataSource = ds_ts_five
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alTop
          TabOrder = 1
        end
        object dbG_ts_five: TDBGrid
          Left = 0
          Top = 31
          Width = 1000
          Height = 417
          Align = alClient
          DataSource = ds_ts_five
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object ts_six: TTabSheet
        Caption = #1042#1099#1074#1086#1076' '#1087#1086#1083#1085#1086#1081' '#1090#1072#1073#1083#1080#1094#1099
        ImageIndex = 5
        OnShow = ts_sixShow
        object dbG_ts_six: TDBGrid
          Left = 0
          Top = 31
          Width = 1000
          Height = 417
          Align = alClient
          DataSource = ds_ts_six
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object Panel4: TPanel
          Left = 0
          Top = 448
          Width = 1000
          Height = 107
          Align = alBottom
          TabOrder = 1
          object StaticText2: TStaticText
            Left = 1
            Top = 1
            Width = 998
            Height = 17
            Align = alTop
            Alignment = taCenter
            Caption = #1042#1099#1074#1086#1076' '#1074#1089#1077#1081' '#1090#1072#1073#1083#1080#1094#1099
            TabOrder = 0
          end
          object btn_ts_six_reset: TBitBtn
            Left = 696
            Top = 40
            Width = 180
            Height = 21
            Caption = #1057#1073#1088#1086#1089#1080#1090#1100
            Enabled = False
            TabOrder = 1
            OnClick = btn_ts_six_resetClick
          end
          object btn_ts_six_start: TBitBtn
            Left = 458
            Top = 40
            Width = 180
            Height = 21
            Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
            TabOrder = 2
            OnClick = btn_ts_six_startClick
          end
        end
        object dbnav_ts_six: TDBNavigator
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 994
          Height = 25
          DataSource = ds_ts_six
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alTop
          TabOrder = 2
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
        Caption = #1056#1077#1078#1080#1084' '#1088#1072#1073#1086#1090#1099' '#1089' '#1041#1044
        OnClick = mni_conn_DB_internalClick
      end
    end
    object mni_msql_File: TMenuItem
      Caption = #1060#1072#1081#1083
      object mni_msql_MainOpen: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        OnClick = mni_msql_MainOpenClick
      end
      object mni_msql_MainSave: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        OnClick = mni_msql_MainSaveClick
      end
      object mni_msql_File_SeparatorOne: TMenuItem
        Caption = '-'
      end
      object mni_msql_File_Reset: TMenuItem
        Caption = #1057#1073#1088#1086#1089#1080#1090#1100
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
    DataSet = dm_Application_mysql.fd_g_Select_MemTable
    Left = 13
    Top = 189
  end
  object ds_ts_two: TDataSource
    DataSet = dm_Application_mysql.fd_g_Select_Two
    Left = 69
    Top = 189
  end
  object ds_ts_Three: TDataSource
    DataSet = dm_Application_mysql.fd_g_Select_Three
    Left = 117
    Top = 189
  end
  object ds_ts_Four: TDataSource
    DataSet = dm_Application_mysql.fd_g_Select_Four
    Left = 13
    Top = 253
  end
  object dlgOpen_File: TOpenDialog
    Left = 149
    Top = 21
  end
  object dlgSave_File: TSaveDialog
    Left = 205
    Top = 21
  end
  object ds_ts_five: TDataSource
    DataSet = dm_Application_mysql.fd_g_Select_Five
    Left = 69
    Top = 253
  end
  object ds_ts_six: TDataSource
    DataSet = dm_Application_mysql.fd_g_All_Table
    Left = 133
    Top = 253
  end
end
