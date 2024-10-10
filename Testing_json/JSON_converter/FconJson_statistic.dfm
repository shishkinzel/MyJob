object frm_conJson_statistic: Tfrm_conJson_statistic
  Left = 0
  Top = 0
  Caption = 'Converter_statistic'
  ClientHeight = 681
  ClientWidth = 956
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm_conJson_statistic
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btn_conJson: TBitBtn
    Left = 24
    Top = 528
    Width = 75
    Height = 25
    Caption = #1057#1095#1080#1090#1072#1090#1100
    TabOrder = 0
    OnClick = btn_conJsonClick
  end
  object pnl_downConJson: TPanel
    Left = 0
    Top = 0
    Width = 956
    Height = 513
    Align = alTop
    TabOrder = 1
    object dbG_conJson_statistic: TDBGrid
      Left = 1
      Top = 26
      Width = 954
      Height = 486
      Align = alClient
      DataSource = ds_conJson_statistic
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object dbnav_conJson_statistic: TDBNavigator
      Left = 1
      Top = 1
      Width = 954
      Height = 25
      DataSource = ds_conJson_statistic
      Align = alTop
      TabOrder = 1
    end
  end
  object db_memTab_conJson_statistic: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id_key_statistic'
        DataType = ftAutoInc
      end
      item
        Name = 'attempt'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'selector'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'request_serial'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'request_date'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'original_version'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'proposed_version'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 48
    Top = 136
    object db_memTab_conJson_statisticid_key_statistic: TAutoIncField
      DisplayLabel = 'id_key_st'
      DisplayWidth = 9
      FieldName = 'id_key_statistic'
    end
    object db_memTab_conJson_statisticattempt: TStringField
      DisplayLabel = #1053#1086#1084#1077#1088' '#1087#1086#1087#1099#1090#1082#1080
      DisplayWidth = 13
      FieldName = 'attempt'
      Size = 10
    end
    object db_memTab_conJson_statisticselector: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1080#1079#1076#1077#1083#1080#1103
      DisplayWidth = 32
      FieldName = 'selector'
      Size = 50
    end
    object db_memTab_conJson_statisticrequest_serial: TStringField
      DisplayLabel = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088
      DisplayWidth = 16
      FieldName = 'request_serial'
    end
    object db_memTab_conJson_statisticrequest_date: TStringField
      DisplayLabel = #1044#1072#1090#1072' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103
      DisplayWidth = 32
      FieldName = 'request_date'
      Size = 50
    end
    object db_memTab_conJson_statisticoriginal_version: TStringField
      DisplayLabel = #1054#1088#1080#1075#1080#1085#1072#1083#1100#1085#1099#1081
      DisplayWidth = 20
      FieldName = 'original_version'
    end
    object db_memTab_conJson_statisticproposed_version: TStringField
      DisplayLabel = #1055#1088#1077#1076#1083#1086#1078#1077#1085#1085#1099#1081
      DisplayWidth = 20
      FieldName = 'proposed_version'
    end
  end
  object dlgOpen_conJson_statistic: TOpenDialog
    Filter = #1060#1072#1081#1083#1099' Json(*.json)|*.json'
    Left = 192
    Top = 336
  end
  object dlgSave_conJson_statistic: TSaveDialog
    Filter = #1060#1072#1081#1083#1099' Json(*.json)|*.json'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 424
    Top = 352
  end
  object mm_conJson_statistic: TMainMenu
    Left = 24
    Top = 360
    object mni_conJsonFile: TMenuItem
      Caption = #1060#1072#1081#1083
      object mni_conJsonOpen: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        OnClick = mni_conJsonOpenClick
      end
      object mni_conJsonSave: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        OnClick = mni_conJsonSaveClick
      end
    end
  end
  object ds_conJson_statistic: TDataSource
    DataSet = db_memTab_conJson_statistic
    Left = 128
    Top = 216
  end
end
