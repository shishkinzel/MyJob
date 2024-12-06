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
    ExplicitTop = 678
    object btn_modification: TBitBtn
      Left = 5
      Top = 23
      Width = 240
      Height = 25
      Caption = #1053#1072#1095#1072#1090#1100' '#1084#1086#1076#1080#1092#1080#1082#1072#1094#1080#1102' '#1092#1072#1081#1083#1072' - '#1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
      TabOrder = 0
      OnClick = btn_modificationClick
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
      ActivePage = ts_two
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
        object mni_db_sp_pr_SeparatorOne: TMenuItem
          Caption = '-'
        end
        object mni_db_json_pr_save: TMenuItem
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1092#1072#1081#1083' '#1074' '#1092#1086#1088#1084#1072#1090#1077' json'
          OnClick = mni_db_json_pr_saveClick
        end
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
          OnClick = mni_db_sp_openClick
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
          OnClick = mni_db_xls_sp_openClick
        end
        object mni_db_sp_pr_12: TMenuItem
          Caption = '-'
        end
        object mni_db_json_sp_pr_save: TMenuItem
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1092#1072#1081#1083' '#1074' '#1092#1086#1088#1084#1072#1090#1077' json'
          OnClick = mni_db_json_sp_pr_saveClick
        end
      end
    end
    object mni_db_mysql_Job: TMenuItem
      Caption = #1056#1072#1073#1086#1090#1072' '#1089' MySQL'
      object mni_db_mysql_transmission_tmc: TMenuItem
        Caption = #1058#1088#1072#1085#1089#1083#1103#1094#1080#1103' "'#1050#1086#1076' '#1058#1052#1062'" '#1074' MySQL'
        OnClick = mni_db_mysql_transmission_tmcClick
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
        object mni_db_mysql_clear_specification: TMenuItem
          Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1073#1072#1079#1091' "'#1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103'"'
          OnClick = mni_db_mysql_clear_specificationClick
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
    Left = 16
    Top = 376
  end
  object dlg_db_job_fds_save: TSaveDialog
    DefaultExt = 'fds'
    FileName = 'Code_TMC'
    Filter = 'JSON file (*.fds)|*.fds'
    InitialDir = 'file_fds'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 16
    Top = 432
  end
  object dlg_db_fds_pr_open: TOpenDialog
    DefaultExt = 'fds'
    FileName = 'Code_TMC'
    Filter = 'JSON file (*.fds)|*.fds'
    InitialDir = 'file_fds'
    Left = 104
    Top = 392
  end
  object dli_db_fds_pr_save: TSaveDialog
    DefaultExt = 'fds'
    FileName = 'Code_TMC'
    Filter = 'JSON file (*.fds)|*.fds'
    InitialDir = 'file_fds'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 104
    Top = 448
  end
  object dlg_db_sp_xls_open: TOpenDialog
    DefaultExt = 'xlsx'
    FileName = 'specification.xls'
    Filter = #1050#1085#1080#1075#1072' Excel (*.xlsx)|*.xlsx|'#1050#1085#1080#1075#1072' Excel 97-2003 (*.xls)|*.xls'
    InitialDir = 'file_xls'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 248
    Top = 368
  end
  object dlg_db_sp_fds_save: TSaveDialog
    DefaultExt = 'fds'
    FileName = 'Specification'
    Filter = 'JSON file (*.fds)|*.fds'
    InitialDir = 'file_fds'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 240
    Top = 440
  end
  object dlg_db_sp_pr_open: TOpenDialog
    DefaultExt = 'fds'
    FileName = 'specification'
    Filter = 'JSON file (*.fds)|*.fds'
    InitialDir = 'file_fds'
    Left = 336
    Top = 384
  end
  object dlg_db_sp_pr_save: TSaveDialog
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 328
    Top = 448
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
