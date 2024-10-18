object frm_conJson: Tfrm_conJson
  Left = 0
  Top = 0
  Caption = 'Converter'
  ClientHeight = 701
  ClientWidth = 974
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm_conJson
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btn_conJson: TBitBtn
    Left = 280
    Top = 632
    Width = 500
    Height = 40
    Caption = #1053#1072#1095#1072#1090#1100' '#1082#1086#1085#1074#1077#1088#1090#1072#1094#1080#1102
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Anonymous Pro'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btn_conJsonClick
  end
  object pnl_downConJson: TPanel
    Left = 0
    Top = 0
    Width = 974
    Height = 593
    Align = alTop
    TabOrder = 1
    object dbG_conJson: TDBGrid
      Left = 1
      Top = 26
      Width = 972
      Height = 566
      Align = alClient
      DataSource = ds_conJson
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object dbnav_conJson: TDBNavigator
      Left = 1
      Top = 1
      Width = 972
      Height = 25
      DataSource = ds_conJson
      Align = alTop
      TabOrder = 1
    end
  end
  object mm_conJson: TMainMenu
    Left = 16
    Top = 80
    object mni_MainFile: TMenuItem
      Caption = #1060#1072#1081#1083
      object mni_MainOpen: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        OnClick = mni_MainOpenClick
      end
      object mni_MainSave: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      end
      object mni_SeparatorOne_main: TMenuItem
        Caption = '-'
      end
      object mni_MainReset: TMenuItem
        Caption = #1057#1073#1088#1086#1089
        OnClick = mni_MainResetClick
      end
    end
    object mni_conJsonFile_Converter: TMenuItem
      Caption = #1057#1077#1082#1094#1080#1103' '#1082#1086#1085#1074#1077#1088#1090#1072#1094#1080#1080
      object mni_conJsonOpen: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        OnClick = mni_conJsonOpenClick
      end
      object mni_conJsonSave: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        OnClick = mni_conJsonSaveClick
      end
      object mni_OneSeparator: TMenuItem
        Caption = '-'
      end
      object mni_Reset: TMenuItem
        Caption = #1057#1073#1088#1086#1089#13#10
        OnClick = mni_MainResetClick
      end
    end
    object mni_SQL_Form: TMenuItem
      Caption = #1055#1077#1088#1077#1093#1086#1076#1099
      object mni_conJson_statistic_transfer: TMenuItem
        Caption = #1058#1072#1073#1083#1080#1094#1072' '#1089#1090#1072#1090#1080#1089#1090#1080#1082#1080
        OnClick = mni_conJson_statistic_transferClick
      end
      object mni_SQL_Form_direct: TMenuItem
        Caption = #1057#1074#1086#1076#1085#1072#1103' '#1090#1072#1073#1083#1080#1094#1072
        OnClick = mni_SQL_Form_directClick
      end
    end
  end
  object dlgOpen_conJson: TOpenDialog
    Filter = #1060#1072#1081#1083#1099' Json(*.json)|*.json'
    InitialDir = 'lib_json'
    Left = 40
    Top = 232
  end
  object dlgSave_conJson: TSaveDialog
    DefaultExt = 'fds'
    FileName = 'device_json'
    Filter = #1060#1072#1081#1083#1099' FDS (*.fds)|*.fds|'#1060#1072#1081#1083#1099' Json(*.json)|*.json'
    InitialDir = 'lib_json'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 176
    Top = 240
  end
  object ds_conJson: TDataSource
    DataSet = dm_conJson.db_memTab_conJson
    Left = 912
    Top = 64
  end
  object dlgOpen_MainFile: TOpenDialog
    DefaultExt = 'fds'
    FileName = 'device_json'
    Filter = #1060#1072#1081#1083#1099' FDS (*.fds)|*.fds'
    InitialDir = 'lib_fds'
    Left = 32
    Top = 328
  end
  object dlgSave_MainFile: TSaveDialog
    Filter = #1060#1072#1081#1083#1099' Json(*.json)|*.json'
    InitialDir = 'lib_fds'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 144
    Top = 328
  end
  object fdjson_conJson: TFDStanStorageJSONLink
    Left = 912
    Top = 151
  end
end
