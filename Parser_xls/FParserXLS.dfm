object frm_ParserXLS: Tfrm_ParserXLS
  Left = 0
  Top = 0
  Caption = #1055#1072#1088#1089#1077#1088'_ Excel'
  ClientHeight = 791
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm_parserxls
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object spl_app: TSplitter
    Left = 0
    Top = 73
    Width = 984
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 662
  end
  object spl_down: TSplitter
    Left = 0
    Top = 677
    Width = 984
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 76
    ExplicitWidth = 548
  end
  object pnl_App: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 73
    Align = alTop
    TabOrder = 0
    object btn_allReset: TBitBtn
      Left = 696
      Top = 25
      Width = 240
      Height = 25
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1090#1072#1073#1083#1080#1094#1091
      TabOrder = 0
      OnClick = btn_allResetClick
    end
  end
  object pnl_Down: TPanel
    Left = 0
    Top = 680
    Width = 984
    Height = 111
    Align = alBottom
    TabOrder = 1
    object lbl_tmc: TLabel
      Left = 24
      Top = 4
      Width = 191
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1072#1082#1090#1080#1074#1085#1099#1093' '#1103#1095#1077#1077#1082
    end
    object lbl_specification: TLabel
      Left = 24
      Top = 56
      Width = 191
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1072#1082#1090#1080#1074#1085#1099#1093' '#1103#1095#1077#1077#1082
    end
    object btn_pars_xls_tms_start: TBitBtn
      Left = 340
      Top = 17
      Width = 240
      Height = 25
      Caption = #1053#1072#1095#1072#1090#1100' '#1095#1090#1077#1085#1080#1077' '#1092#1072#1081#1083#1072' - '#1050#1086#1076#1099' '#1058#1052#1062
      Enabled = False
      TabOrder = 0
      OnClick = btn_pars_xls_tms_startClick
    end
    object btn_pars_xls_specification_start: TBitBtn
      Left = 340
      Top = 71
      Width = 240
      Height = 25
      Caption = #1053#1072#1095#1072#1090#1100' '#1095#1090#1077#1085#1080#1077' '#1092#1072#1081#1083#1072' - '#1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
      Enabled = False
      TabOrder = 1
    end
    object se_tmc: TSpinEdit
      Left = 24
      Top = 23
      Width = 80
      Height = 22
      MaxLength = 5
      MaxValue = 10000
      MinValue = 1
      TabOrder = 2
      Value = 1
    end
    object se_specification: TSpinEdit
      Left = 24
      Top = 75
      Width = 80
      Height = 22
      MaxLength = 5
      MaxValue = 10000
      MinValue = 1
      TabOrder = 3
      Value = 1
    end
  end
  object pnl_Main: TPanel
    Left = 0
    Top = 76
    Width = 984
    Height = 601
    Align = alClient
    TabOrder = 2
    object pgc_xls: TPageControl
      Left = 1
      Top = 1
      Width = 982
      Height = 599
      ActivePage = ts_one
      Align = alClient
      TabOrder = 0
      object ts_one: TTabSheet
        Caption = #1050#1086#1076#1099' '#1058#1052#1062
        object nv_one: TDBNavigator
          Left = 0
          Top = 0
          Width = 974
          Height = 25
          DataSource = ds_one
          Align = alTop
          TabOrder = 0
        end
        object grid_one: TDBGrid
          Left = 0
          Top = 25
          Width = 974
          Height = 546
          Align = alClient
          DataSource = ds_one
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object ts_two: TTabSheet
        Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
        ImageIndex = 1
        object nv_two: TDBNavigator
          Left = 0
          Top = 0
          Width = 974
          Height = 25
          DataSource = ds_two
          Align = alTop
          TabOrder = 0
        end
        object grid_two: TDBGrid
          Left = 0
          Top = 25
          Width = 974
          Height = 546
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
      object ts_three: TTabSheet
        Caption = #1055#1077#1088#1077#1095#1077#1085#1100' '#1101#1083#1077#1084#1077#1085#1090#1086#1074
        ImageIndex = 2
        object nv_three: TDBNavigator
          Left = 0
          Top = 0
          Width = 974
          Height = 25
          DataSource = ds_three
          Align = alTop
          TabOrder = 0
        end
        object grid_three: TDBGrid
          Left = 0
          Top = 25
          Width = 974
          Height = 546
          Align = alClient
          DataSource = ds_three
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
    Left = 8
    Top = 8
    object mni_db_job: TMenuItem
      Tag = 1000
      Caption = #1054#1090#1082#1088#1099#1090#1080#1077' '#1041#1044
      OnClick = mni_db_jobClick
      object mni_db_job_file: TMenuItem
        Caption = #1060#1072#1081#1083'_FDS'
        object mni_db_job_open: TMenuItem
          Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083' '#1058#1052#1062
          OnClick = mni_db_job_openClick
        end
        object mni_db_job_save: TMenuItem
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1092#1072#1081#1083' '#1058#1052#1062
          OnClick = mni_db_job_saveClick
        end
      end
      object mni_db_SeparatorOne: TMenuItem
        Caption = '-'
      end
      object mni_db_job_parser: TMenuItem
        Caption = #1055#1072#1088#1089#1077#1088' xls'
        object mni_db_xls_pr_open: TMenuItem
          Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083' xls'
          OnClick = mni_db_xls_pr_openClick
        end
        object mni_db_xls_pr_OLE: TMenuItem
          Caption = #1057#1086#1079#1076#1072#1090#1100' '#1086#1073#1098#1077#1082#1090' OLE'
          Enabled = False
          OnClick = mni_db_xls_pr_OLEClick
        end
        object mni_db_sp_pr_SeparatorOne: TMenuItem
          Caption = '-'
        end
        object mni_db_json_pr_save: TMenuItem
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1092#1072#1081#1083' '#1074' '#1092#1086#1088#1084#1072#1090#1077' json'
          OnClick = mni_db_json_pr_saveClick
        end
      end
      object mni_db_SeparatorTwo: TMenuItem
        Caption = '-'
      end
      object mni_db_job_reset: TMenuItem
        Caption = #1057#1073#1088#1086#1089
        Enabled = False
        OnClick = mni_db_job_resetClick
      end
    end
    object mni_db_specification: TMenuItem
      Tag = 1001
      Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
      OnClick = mni_db_jobClick
      object mni_db_sp_file: TMenuItem
        Caption = #1060#1072#1081#1083'_FDS'
        object mni_db_sp_open: TMenuItem
          Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083' '#1089#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1080
        end
        object mni_db_sp_save: TMenuItem
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1092#1072#1081#1083' '#1089#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1080
        end
      end
      object mni_db_sp_SeparatorOne: TMenuItem
        Caption = '-'
      end
      object mni_db_sp_parser: TMenuItem
        Caption = #1055#1072#1088#1089#1077#1088' xls'
        object mni_db_xls_sp_open: TMenuItem
          Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083' xls'
        end
        object mni_db_xls_sp_OLE: TMenuItem
          Caption = #1057#1086#1079#1076#1072#1090#1100' '#1086#1073#1098#1077#1082#1090' OLE'
          Enabled = False
        end
        object mni_db_sp_pr_12: TMenuItem
          Caption = '-'
        end
        object mni_db_sp_pr_save: TMenuItem
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1092#1072#1081#1083' '#1074' '#1092#1086#1088#1084#1072#1090#1077' json'
        end
      end
      object mni_db_sp_SeparatorTwo: TMenuItem
        Caption = '-'
      end
      object mni_db_sp_pr_reset: TMenuItem
        Caption = #1057#1073#1088#1086#1089
        Enabled = False
      end
    end
    object mni_db_mysql_Job: TMenuItem
      Caption = #1056#1072#1073#1086#1090#1072' '#1089' MySQL'
      object mni_db_mysql_1: TMenuItem
        Caption = '1'
      end
      object mni_db_mysql_2: TMenuItem
        Caption = '1'
      end
      object mni_db_mysql_SeparatorOne: TMenuItem
        Caption = '-'
      end
      object mni_db_mysql_Clear: TMenuItem
        Caption = #1054#1095#1080#1089#1090#1082#1072' '#1073#1072#1079#1099
        object mni_db_mysql_clear_tmc: TMenuItem
          Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1073#1072#1079#1091' "'#1050#1086#1076#1099' '#1058#1052#1062'"'
          OnClick = mni_db_mysql_clear_tmcClick
        end
        object mni_db_mysql_22: TMenuItem
          Caption = '2'
        end
      end
    end
  end
  object ds_two: TDataSource
    DataSet = dm_parserxls.mem_specification
    Left = 61
    Top = 149
  end
  object ds_one: TDataSource
    DataSet = dm_parserxls.mem_db_angtelTMC
    Left = 13
    Top = 149
  end
  object dlg_db_job_xls_open: TOpenDialog
    DefaultExt = 'xlsx'
    FileName = 'code_tmc.xls'
    Filter = #1050#1085#1080#1075#1072' Excel (*.xlsx)|*.xlsx|'#1050#1085#1080#1075#1072' Excel 97-2003 (*.xls)|*.xls'
    InitialDir = 'file_xls'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 80
    Top = 8
  end
  object dlg_db_job_fds_save: TSaveDialog
    DefaultExt = 'fds'
    FileName = 'Code_TMC'
    Filter = 'JSON file (*.fds)|*.fds'
    InitialDir = 'file_fds'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 136
    Top = 8
  end
  object dlg_db_fds_pr_open: TOpenDialog
    DefaultExt = 'fds'
    FileName = 'Code_TMC'
    Filter = 'JSON file (*.fds)|*.fds'
    InitialDir = 'file_fds'
    Left = 240
    Top = 8
  end
  object dli_db_fds_pr_save: TSaveDialog
    DefaultExt = 'fds'
    FileName = 'Code_TMC'
    Filter = 'JSON file (*.fds)|*.fds'
    InitialDir = 'file_fds'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 280
    Top = 8
  end
  object dlg_db_sp_open: TOpenDialog
    Left = 344
    Top = 8
  end
  object dlg_db_sp_save: TSaveDialog
    Left = 400
    Top = 8
  end
  object dlg_db_sp_pr_open: TOpenDialog
    Left = 464
    Top = 16
  end
  object dlg_db_sp_pr_save: TSaveDialog
    Left = 520
    Top = 16
  end
  object ds_three: TDataSource
    DataSet = dm_parserxls.mem_list_of_elements
    Left = 117
    Top = 149
  end
  object fd_json_link_TMC: TFDStanStorageJSONLink
    Left = 584
    Top = 8
  end
end
