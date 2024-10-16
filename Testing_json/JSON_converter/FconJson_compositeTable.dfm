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
    end
  end
  object dlgOpen_CompositeTable: TOpenDialog
    Filter = #1060#1072#1081#1083#1099' Json(*.json)|*.json'
    Left = 24
    Top = 360
  end
  object dlgSave_CompositeTable: TSaveDialog
    Filter = #1060#1072#1081#1083#1099' Json(*.json)|*.json'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 168
    Top = 360
  end
  object mm_CompositeTable: TMainMenu
    Left = 16
    Top = 144
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
    DataSet = dm_conJson.db_memTab_CompositeTable
    Left = 80
    Top = 592
  end
end
