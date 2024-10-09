object frm_conJson: Tfrm_conJson
  Left = 0
  Top = 0
  Caption = 'Converter'
  ClientHeight = 699
  ClientWidth = 1000
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
  object mmo_conJson: TMemo
    Left = 88
    Top = 351
    Width = 911
    Height = 153
    TabOrder = 0
  end
  object btn_conJson: TBitBtn
    Left = 24
    Top = 528
    Width = 75
    Height = 25
    Caption = #1057#1090#1072#1088#1090
    TabOrder = 1
    OnClick = btn_conJsonClick
  end
  object pnl_downConJson: TPanel
    Left = 0
    Top = 0
    Width = 1000
    Height = 345
    Align = alTop
    TabOrder = 2
    object dbG_conJson: TDBGrid
      Left = 1
      Top = 26
      Width = 998
      Height = 318
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
      Width = 998
      Height = 25
      DataSource = ds_conJson
      Align = alTop
      TabOrder = 1
    end
  end
  object mm_conJson: TMainMenu
    Left = 8
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
  object dlgOpen_conJson: TOpenDialog
    Filter = #1060#1072#1081#1083#1099' Json(*.json)|*.json'
    Left = 56
    Top = 360
  end
  object dlgSave_conJson: TSaveDialog
    Filter = #1060#1072#1081#1083#1099' Json(*.json)|*.json'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 120
    Top = 360
  end
  object db_memTab_conJson: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'Id_key_db'
        DataType = ftAutoInc
      end
      item
        Name = 'deviceName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'selector'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'serialId'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ethaddr'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'version'
        DataType = ftString
        Size = 30
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
    Left = 24
    Top = 152
    object db_memTab_conJsonId_key_db: TAutoIncField
      Alignment = taCenter
      DisplayLabel = 'Id_key'
      DisplayWidth = 6
      FieldName = 'Id_key_db'
    end
    object db_memTab_conJsondeviceName: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
      DisplayWidth = 32
      FieldName = 'deviceName'
      Size = 50
    end
    object db_memTab_conJsonselector: TStringField
      DisplayLabel = #1052#1086#1076#1091#1083#1100' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
      DisplayWidth = 52
      FieldName = 'selector'
      Size = 100
    end
    object db_memTab_conJsonserialId: TStringField
      DisplayLabel = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088
      DisplayWidth = 16
      FieldName = 'serialId'
    end
    object db_memTab_conJsonethaddr: TStringField
      DisplayLabel = 'mac-'#1072#1076#1088#1077#1089
      DisplayWidth = 24
      FieldName = 'ethaddr'
      Size = 30
    end
    object db_memTab_conJsonversion: TStringField
      DisplayLabel = #1042#1077#1088#1089#1080#1103
      DisplayWidth = 24
      FieldName = 'version'
      Size = 30
    end
  end
  object ds_conJson: TDataSource
    DataSet = db_memTab_conJson
    Left = 128
    Top = 216
  end
end
