object frmListDevice: TfrmListDevice
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1084#1086#1076#1091#1083#1077#1081' '#1080' '#1091#1089#1090#1088#1086#1081#1089#1090#1074
  ClientHeight = 614
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmDev
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object spldown: TSplitter
    Left = 0
    Top = 418
    Width = 765
    Height = 2
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 573
    ExplicitWidth = 715
  end
  object splup: TSplitter
    Left = 0
    Top = 147
    Width = 765
    Height = 0
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 742
  end
  object pnlUp: TPanel
    Left = 0
    Top = 0
    Width = 765
    Height = 147
    Align = alTop
    TabOrder = 0
    object edtMod: TEdit
      Left = 56
      Top = 75
      Width = 217
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1084#1086#1076#1091#1083#1103' '#1085#1072' '#1057#1050
    end
    object edtNMod: TEdit
      Left = 592
      Top = 75
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = #1040#1088#1090#1080#1082#1091#1083#1100' '#1084#1086#1076#1091#1083#1103
    end
    object edtDev: TEdit
      Left = 56
      Top = 28
      Width = 657
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072' '#1085#1072' '#1057#1043#1055
    end
    object txtTDev: TStaticText
      Left = 56
      Top = 7
      Width = 159
      Height = 20
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object txtMod: TStaticText
      Left = 56
      Top = 52
      Width = 136
      Height = 20
      BevelInner = bvLowered
      BevelKind = bkFlat
      BevelOuter = bvSpace
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1084#1086#1076#1091#1083#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object txtNMod: TStaticText
      Left = 592
      Top = 52
      Width = 87
      Height = 20
      BevelInner = bvLowered
      BevelKind = bkFlat
      BevelOuter = bvSpace
      Caption = #1053#1086#1084#1077#1088' '#1084#1086#1076#1091#1083#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object btnUpApp: TBitBtn
      Left = 32
      Top = 116
      Width = 75
      Height = 25
      Caption = 'btnUpApp'
      TabOrder = 6
    end
    object btnUpRes: TBitBtn
      Left = 320
      Top = 116
      Width = 75
      Height = 25
      Caption = 'btnUpRes'
      TabOrder = 7
    end
    object btnUpClose: TBitBtn
      Left = 603
      Top = 116
      Width = 75
      Height = 25
      Caption = 'btnUpClose'
      TabOrder = 8
    end
  end
  object pnldown: TPanel
    Left = 0
    Top = 420
    Width = 765
    Height = 194
    Align = alBottom
    TabOrder = 1
    object dbgrdDev: TDBGrid
      Left = 1
      Top = 19
      Width = 763
      Height = 94
      Align = alTop
      DataSource = dsDev
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object dbnvgrDev: TDBNavigator
      Left = 1
      Top = 1
      Width = 763
      Height = 18
      DataSource = dsDev
      Align = alTop
      TabOrder = 1
    end
    object btnApplay: TBitBtn
      Left = 32
      Top = 136
      Width = 75
      Height = 25
      Caption = 'btnApplay'
      TabOrder = 2
    end
    object btnReset: TBitBtn
      Left = 320
      Top = 136
      Width = 75
      Height = 25
      Caption = 'btnApplay'
      TabOrder = 3
    end
    object btnExit: TBitBtn
      Left = 603
      Top = 136
      Width = 75
      Height = 25
      Caption = 'btnApplay'
      TabOrder = 4
    end
  end
  object pnlCentr: TPanel
    Left = 0
    Top = 147
    Width = 765
    Height = 271
    Align = alClient
    TabOrder = 2
    object splcenter: TSplitter
      Left = 427
      Top = 1
      Height = 269
      ExplicitLeft = 422
      ExplicitTop = -1
    end
    object pnlleft: TPanel
      Left = 1
      Top = 1
      Width = 426
      Height = 269
      Align = alLeft
      TabOrder = 0
      object bvlleft: TBevel
        Left = 1
        Top = 1
        Width = 424
        Height = 50
        Align = alTop
        Shape = bsFrame
        ExplicitLeft = 104
        ExplicitTop = 24
        ExplicitWidth = 50
      end
      object txtLBl: TStaticText
        Left = 88
        Top = 16
        Width = 196
        Height = 23
        BevelInner = bvLowered
        BevelKind = bkFlat
        BevelOuter = bvSpace
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object mmoDevice: TMemo
        Left = 1
        Top = 51
        Width = 424
        Height = 217
        Align = alClient
        TabOrder = 1
      end
    end
    object pnlRight: TPanel
      Left = 430
      Top = 1
      Width = 334
      Height = 269
      Align = alClient
      TabOrder = 1
      object bvlRight: TBevel
        Left = 1
        Top = 1
        Width = 332
        Height = 50
        Align = alTop
        Shape = bsFrame
        ExplicitLeft = 3
        ExplicitTop = 42
        ExplicitWidth = 309
      end
      object txtRBl: TStaticText
        Left = 112
        Top = 16
        Width = 168
        Height = 23
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1084#1086#1076#1091#1083#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object mmoModule: TMemo
        Left = 1
        Top = 51
        Width = 332
        Height = 217
        Align = alClient
        TabOrder = 1
      end
    end
  end
  object mmDev: TMainMenu
    Left = 16
    Top = 8
    object mniFile: TMenuItem
      Caption = #1060#1072#1081#1083
      object mniOpen: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
      end
      object mniSave: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      end
    end
    object mniApply: TMenuItem
      Caption = #1044#1077#1081#1089#1090#1074#1080#1077
    end
    object mniOther: TMenuItem
      Caption = #1055#1088#1086#1095#1077#1077
    end
  end
  object dsDev: TDataSource
    DataSet = fdmtblDev
    Left = 8
    Top = 228
  end
  object fdmtblDev: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'num'
        DataType = ftAutoInc
      end
      item
        Name = 'ndev'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'nmod'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'idmod'
        DataType = ftInteger
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
    Left = 64
    Top = 228
    object fdmtblDevnum: TFDAutoIncField
      Alignment = taCenter
      DisplayLabel = #8470
      DisplayWidth = 6
      FieldName = 'num'
      ProviderFlags = [pfInUpdate, pfInWhere]
      AutoIncrementSeed = 1
      AutoIncrementStep = 1
      IdentityInsert = True
    end
    object fdmtblDevndev: TStringField
      Alignment = taCenter
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
      DisplayWidth = 74
      FieldName = 'ndev'
      Size = 200
    end
    object fdmtblDevnmod: TStringField
      Alignment = taCenter
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1084#1086#1076#1091#1083#1103
      DisplayWidth = 30
      FieldName = 'nmod'
      Size = 50
    end
    object fdmtblDevidmod: TIntegerField
      Alignment = taCenter
      DisplayLabel = #1040#1088#1090#1080#1082#1091#1083
      DisplayWidth = 9
      FieldName = 'idmod'
    end
  end
end
