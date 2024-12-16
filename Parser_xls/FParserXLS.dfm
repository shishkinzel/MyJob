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
    object lbl_title_find: TLabel
      Left = 12
      Top = 16
      Width = 123
      Height = 13
      Alignment = taCenter
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1102
    end
    object lbl_template: TLabel
      Left = 12
      Top = 70
      Width = 256
      Height = 13
      Alignment = taCenter
      Caption = #1048#1089#1087#1086#1083#1100#1079#1091#1081#1090#1077' '#1089#1080#1084#1074#1086#1083' %  '#1076#1083#1103' '#1096#1072#1073#1083#1086#1085#1080#1079#1072#1094#1080#1080' '#1087#1086#1080#1089#1082#1072
    end
    object btn_find: TBitBtn
      Left = 392
      Top = 43
      Width = 240
      Height = 24
      Caption = #1055#1086#1080#1089#1082
      Enabled = False
      TabOrder = 0
      OnClick = btn_findClick
    end
    object edt_find: TEdit
      Left = 12
      Top = 43
      Width = 350
      Height = 21
      Alignment = taRightJustify
      Enabled = False
      TabOrder = 1
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
      OnChange = pgc_xlsChange
      object ts_one: TTabSheet
        Tag = 1000
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
        Tag = 1001
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
        Tag = 1002
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
        Caption = #1060#1072#1081#1083' json'
        object mni_db_job_open: TMenuItem
          Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083' '#1058#1052#1062
          OnClick = mni_db_job_openClick
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
        Caption = #1060#1072#1081#1083' json'
        object mni_db_sp_open: TMenuItem
          Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083' '#1089#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1080
          OnClick = mni_db_sp_openClick
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
        object N1: TMenuItem
          Caption = '-'
        end
        object mni_db_json_sp_pr_save: TMenuItem
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1092#1072#1081#1083' '#1074' '#1092#1086#1088#1084#1072#1090#1077' json'
          OnClick = mni_db_json_sp_pr_saveClick
        end
      end
      object mni_db_sp_SeparatorTwo: TMenuItem
        Caption = '-'
      end
      object mni_db_sp_xls_save: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074' '#1092#1086#1088#1084#1072#1090#1077' Excel'
        OnClick = mni_db_sp_xls_saveClick
      end
    end
    object mni_db_loel: TMenuItem
      Tag = 1002
      Caption = #1055#1077#1088#1077#1095#1077#1085#1100' '#1101#1083#1077#1084#1077#1085#1090#1086#1074
      OnClick = mni_db_jobClick
      object mni_db_loel_file: TMenuItem
        Caption = #1060#1072#1081#1083' json'
        object mni_db_loel_open: TMenuItem
          Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083' "'#1055#1077#1088#1077#1095#1077#1085#1100' '#1101#1083#1077#1084#1077#1085#1090#1086#1074'"'
          OnClick = mni_db_loel_openClick
        end
      end
      object mni_db_loel_SeparatorOne: TMenuItem
        Caption = '-'
      end
      object mni_db_loel_parser: TMenuItem
        Caption = #1055#1072#1088#1089#1077#1088' xls'
        object mni_db_loel_pr_open: TMenuItem
          Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083' xls'
          OnClick = mni_db_loel_pr_openClick
        end
        object mni_db_loel_pr_SeparatorTwo: TMenuItem
          Caption = '-'
        end
        object mni_db_loel_pr_save: TMenuItem
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1092#1072#1081#1083' '#1074' '#1092#1086#1088#1084#1072#1090#1077' json'
        end
      end
      object mni_db_loel_SeparatorTwo: TMenuItem
        Caption = '-'
      end
      object mni_db_loel_xls_save: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074' '#1092#1086#1088#1084#1072#1090#1077' Excel'
        OnClick = mni_db_loel_xls_saveClick
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
    Left = 104
    Top = 8
  end
  object dlg_db_fds_pr_open: TOpenDialog
    DefaultExt = 'fds'
    FileName = 'code_tmc'
    Filter = 'FDS file (*.fds)|*.fds|JSON file (*.json)|*.json'
    InitialDir = 'file_fds'
    Left = 288
    Top = 8
  end
  object dli_db_fds_pr_save: TSaveDialog
    DefaultExt = 'fds'
    FileName = 'code_tmc'
    Filter = 'FDS file (*.fds)|*.fds|JSON file (*.json)|*.json'
    InitialDir = 'file_fds'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 800
    Top = 240
  end
  object dlg_db_sp_xls_open: TOpenDialog
    DefaultExt = 'xlsx'
    FileName = 'specification.xls'
    Filter = 'Excel (*.xlsx, *.xls)|*.xlsx; *.xls'
    InitialDir = 'file_xls'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 32
    Top = 208
  end
  object dlg_db_sp_fds_save: TSaveDialog
    DefaultExt = 'json'
    FileName = 'specification'
    Filter = 'JSON file (*.json)|*.json|FDS file (*.fds)|*.fds'
    InitialDir = 'file_fds'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 32
    Top = 264
  end
  object dlg_db_sp_pr_open: TOpenDialog
    DefaultExt = 'fds'
    FileName = 'specification'
    Filter = 'FDS file (*.fds)|*.fds|JSON file (*.json)|*.json'
    InitialDir = 'file_fds'
    Left = 32
    Top = 328
  end
  object dlg_db_sp_pr_save: TSaveDialog
    DefaultExt = 'fds'
    FileName = 'specification'
    Filter = 'FDS file (*.fds)|*.fds|JSON file (*.json)|*.json'
    InitialDir = 'file_fds'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 688
    Top = 176
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
  object dlg_db_loel_open: TOpenDialog
    DefaultExt = 'fds'
    FileName = 'listofelements.fds'
    Filter = 'FDS file (*.fds)|*.fds|JSON file (*.json)|*.json'
    InitialDir = 'file_fds'
    Left = 784
    Top = 176
  end
  object dlg_db_sp_xls_save: TSaveDialog
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 120
    Top = 256
  end
  object dlg_db_job_fds_save: TSaveDialog
    DefaultExt = 'fds'
    FileName = 'code_tmc'
    Filter = 'FDS file (*.fds)|*.fds|JSON file (*.json)|*.json'
    InitialDir = 'file_fds'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 192
    Top = 8
  end
end
