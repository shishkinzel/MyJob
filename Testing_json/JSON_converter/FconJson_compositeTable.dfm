object frm_CompositeTable: Tfrm_CompositeTable
  Left = 0
  Top = 0
  Caption = 'CompositeTable'
  ClientHeight = 701
  ClientWidth = 1210
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm_CompositeTable
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
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
    OnClick = btn_conJson_CompositeTableClick
  end
  object pnl_downConJson: TPanel
    Left = 0
    Top = 0
    Width = 1210
    Height = 585
    Align = alTop
    TabOrder = 1
    object dbG_conJson_CompositeTable: TDBGrid
      Left = 1
      Top = 26
      Width = 1208
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
    object dbnav_conJson_CompositeTable: TDBNavigator
      Left = 1
      Top = 1
      Width = 1208
      Height = 25
      DataSource = ds_CompositeTable
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alTop
      TabOrder = 1
    end
  end
  object dlgOpen_CompositeTable: TOpenDialog
    DefaultExt = 'fds'
    FileName = 'composite_json'
    Filter = #1060#1072#1081#1083#1099' FDS (*.fds)|*.fds'
    InitialDir = 'lib_fds'
    Left = 56
    Top = 184
  end
  object dlgSave_CompositeTable: TSaveDialog
    DefaultExt = 'fds'
    FileName = 'composite'
    Filter = #1060#1072#1081#1083#1099' FDS (*.fds)|*.fds'
    InitialDir = 'lib_fds'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 56
    Top = 248
  end
  object mm_CompositeTable: TMainMenu
    Left = 56
    Top = 80
    object mni_conJsonFile: TMenuItem
      Caption = #1060#1072#1081#1083
      object mni_conJsonOpen: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083' fds'
        OnClick = mni_conJsonOpenClick
      end
      object mni_conJsonSave: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1092#1072#1081#1083' fds'
        OnClick = mni_conJsonSaveClick
      end
      object mni_SeparatorOneCompositeTable: TMenuItem
        Caption = '-'
      end
      object mni_CompositeTableReset: TMenuItem
        Caption = #1057#1073#1088#1086#1089
        OnClick = mni_CompositeTableResetClick
      end
    end
  end
  object ds_CompositeTable: TDataSource
    DataSet = dm_conJson.db_memTab_CompositeTable
    Left = 80
    Top = 592
  end
  object fdjson_conJson_CompastiteTable: TFDStanStorageJSONLink
    Left = 808
    Top = 527
  end
end
