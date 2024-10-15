object frm_CompositeTable: Tfrm_CompositeTable
  Left = 0
  Top = 0
  Caption = 'CompositeTable'
  ClientHeight = 701
  ClientWidth = 1084
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm_CompositeTable
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btn_conJson_CompositeTable: TBitBtn
    Left = 248
    Top = 620
    Width = 500
    Height = 40
    Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Anonymous Pro'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object pnl_downConJson: TPanel
    Left = 0
    Top = 0
    Width = 1084
    Height = 585
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 984
    object dbG_conJson_statistic: TDBGrid
      Left = 1
      Top = 26
      Width = 1082
      Height = 558
      Align = alClient
      DataSource = ds_CompositeTable
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
      Width = 1082
      Height = 25
      DataSource = ds_CompositeTable
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 982
    end
  end
  object db_memTab_CompositeTable: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id_key'
        DataType = ftAutoInc
      end
      item
        Name = 'device_name'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'device_selector'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'id_serial'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'ethaddr'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'device_version'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'attempt'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'request_date'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'original_version'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'proposedl_version'
        DataType = ftString
        Size = 45
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
    Left = 104
    Top = 104
    object db_memTab_CompositeTableid_key: TAutoIncField
      DisplayWidth = 6
      FieldName = 'id_key'
    end
    object db_memTab_CompositeTabledevice_name: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 19
      FieldName = 'device_name'
      Size = 45
    end
    object db_memTab_CompositeTabledevice_selector: TStringField
      DisplayLabel = #1052#1086#1076#1091#1083#1100' '#1091#1089#1090'-'#1074#1072
      DisplayWidth = 32
      FieldName = 'device_selector'
      Size = 100
    end
    object db_memTab_CompositeTableid_serial: TStringField
      DisplayLabel = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088
      DisplayWidth = 16
      FieldName = 'id_serial'
      Size = 45
    end
    object db_memTab_CompositeTableethaddr: TStringField
      DisplayLabel = #1060#1080#1079#1040#1076#1088#1077#1089
      DisplayWidth = 19
      FieldName = 'ethaddr'
      Size = 45
    end
    object db_memTab_CompositeTabledevice_version: TStringField
      DisplayLabel = #1042#1077#1088#1089#1080#1103' '#1087#1088#1086#1096#1080#1074#1082#1080
      DisplayWidth = 16
      FieldName = 'device_version'
      Size = 45
    end
    object db_memTab_CompositeTableattempt: TStringField
      DisplayLabel = #1055#1086#1087#1099#1090#1082#1072
      DisplayWidth = 7
      FieldName = 'attempt'
      Size = 10
    end
    object db_memTab_CompositeTablerequest_date: TStringField
      DisplayLabel = #1044#1072#1090#1072
      DisplayWidth = 19
      FieldName = 'request_date'
      Size = 60
    end
    object db_memTab_CompositeTableoriginal_version: TStringField
      DisplayLabel = #1054#1088#1080#1075#1080#1085#1072#1083#1100#1085#1072#1103
      DisplayWidth = 16
      FieldName = 'original_version'
      Size = 45
    end
    object db_memTab_CompositeTableproposedl_version: TStringField
      DisplayLabel = #1055#1088#1077#1076#1083#1086#1078#1077#1085#1085#1072#1103
      DisplayWidth = 19
      FieldName = 'proposedl_version'
      Size = 45
    end
  end
  object dlgOpen_CompositeTable: TOpenDialog
    Filter = #1060#1072#1081#1083#1099' Json(*.json)|*.json'
    Left = 112
    Top = 480
  end
  object dlgSave_CompositeTable: TSaveDialog
    Filter = #1060#1072#1081#1083#1099' Json(*.json)|*.json'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 240
    Top = 480
  end
  object mm_CompositeTable: TMainMenu
    Left = 24
    Top = 480
    object mni_conJsonFile: TMenuItem
      Caption = #1060#1072#1081#1083
      object mni_conJsonOpen: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
      end
      object mni_conJsonSave: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      end
    end
  end
  object ds_CompositeTable: TDataSource
    DataSet = db_memTab_CompositeTable
    Left = 24
    Top = 600
  end
end
