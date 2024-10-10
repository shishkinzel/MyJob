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
    ExplicitLeft = -44
    ExplicitWidth = 1000
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
      ExplicitWidth = 998
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
        Name = 'original_version'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'proposed_version'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'request_date'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'request_serial'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'selector'
        DataType = ftString
        Size = 50
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
      FieldName = 'id_key_statistic'
    end
    object db_memTab_conJson_statisticattempt: TStringField
      FieldName = 'attempt'
      Size = 10
    end
    object db_memTab_conJson_statisticoriginal_version: TStringField
      FieldName = 'original_version'
    end
    object db_memTab_conJson_statisticproposed_version: TStringField
      FieldName = 'proposed_version'
    end
    object db_memTab_conJson_statisticrequest_date: TStringField
      FieldName = 'request_date'
      Size = 50
    end
    object db_memTab_conJson_statisticrequest_serial: TStringField
      FieldName = 'request_serial'
    end
    object db_memTab_conJson_statisticselector: TStringField
      FieldName = 'selector'
      Size = 50
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
