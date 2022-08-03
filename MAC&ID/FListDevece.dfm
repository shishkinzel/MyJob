object frmListDevice: TfrmListDevice
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1084#1086#1076#1091#1083#1077#1081' '#1080' '#1091#1089#1090#1088#1086#1081#1089#1090#1074
  ClientHeight = 642
  ClientWidth = 794
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
    Top = 446
    Width = 794
    Height = 2
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 573
    ExplicitWidth = 715
  end
  object splup: TSplitter
    Left = 0
    Top = 147
    Width = 794
    Height = 0
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 742
  end
  object pnlUp: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 147
    Align = alTop
    TabOrder = 0
    OnClick = btnInMemoClick
    object lblBtnTitle: TLabel
      Left = 312
      Top = 100
      Width = 205
      Height = 13
      Alignment = taCenter
      Caption = #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1080#1079' '#1087#1086#1083#1077#1081' '#1074#1074#1086#1076#1072' '#1074' :'
    end
    object edtMod: TEdit
      Left = 12
      Top = 76
      Width = 325
      Height = 24
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1084#1086#1076#1091#1083#1103' '#1085#1072' '#1057#1050
    end
    object edtDev: TEdit
      Left = 12
      Top = 25
      Width = 770
      Height = 24
      Alignment = taCenter
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
      Left = 12
      Top = 5
      Width = 159
      Height = 20
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object txtMod: TStaticText
      Left = 12
      Top = 50
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
      TabOrder = 3
    end
    object txtNMod: TStaticText
      Left = 381
      Top = 50
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
      TabOrder = 4
    end
    object btnInMemo: TBitBtn
      Left = 12
      Top = 116
      Width = 120
      Height = 25
      Caption = #1056#1077#1076#1072#1082#1090#1086#1088
      TabOrder = 5
      OnClick = btnInMemoClick
    end
    object btnInTab: TBitBtn
      Left = 381
      Top = 116
      Width = 120
      Height = 25
      Caption = #1058#1072#1073#1083#1080#1094#1072
      TabOrder = 6
      OnClick = btnInMemoClick
    end
    object btnInForm: TBitBtn
      Left = 662
      Top = 116
      Width = 120
      Height = 25
      Caption = #1060#1086#1088#1084#1072
      TabOrder = 7
      OnClick = btnInMemoClick
    end
    object txtLot: TStaticText
      Left = 662
      Top = 50
      Width = 86
      Height = 20
      BevelInner = bvLowered
      BevelKind = bkFlat
      BevelOuter = bvSpace
      Caption = #1053#1086#1084#1077#1088' '#1087#1072#1088#1090#1080#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object btnedMod: TButtonedEdit
      Left = 381
      Top = 75
      Width = 120
      Height = 21
      Alignment = taRightJustify
      MaxLength = 3
      NumbersOnly = True
      TabOrder = 9
      Text = '000'
      StyleName = 'choiceNum'
    end
    object btnedLot: TButtonedEdit
      Left = 661
      Top = 75
      Width = 120
      Height = 21
      Alignment = taRightJustify
      MaxLength = 3
      NumbersOnly = True
      TabOrder = 10
      Text = '000'
      StyleName = 'choiceNum'
    end
  end
  object pnldown: TPanel
    Left = 0
    Top = 448
    Width = 794
    Height = 194
    Align = alBottom
    TabOrder = 1
    object lblBtnTitleUp: TLabel
      Left = 160
      Top = 135
      Width = 185
      Height = 13
      Alignment = taCenter
      Caption = #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1080#1079' '#1090#1072#1073#1083#1080#1094#1099' '#1074' :'
    end
    object dbgrdDev: TDBGrid
      Left = 1
      Top = 19
      Width = 792
      Height = 110
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
      Width = 792
      Height = 18
      DataSource = dsDev
      Align = alTop
      TabOrder = 1
    end
    object btnTitleMemo: TBitBtn
      Left = 56
      Top = 160
      Width = 120
      Height = 25
      Caption = #1056#1077#1076#1072#1082#1090#1086#1088
      TabOrder = 2
    end
    object btnTitleIn: TBitBtn
      Left = 381
      Top = 160
      Width = 120
      Height = 25
      Caption = #1055#1086#1083#1077' '#1074#1074#1086#1076#1072
      TabOrder = 3
    end
    object btnExit: TBitBtn
      Left = 662
      Top = 160
      Width = 120
      Height = 25
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 4
    end
  end
  object pnlCentr: TPanel
    Left = 0
    Top = 147
    Width = 794
    Height = 299
    Align = alClient
    TabOrder = 2
    object splcenter: TSplitter
      Left = 427
      Top = 1
      Height = 297
      ExplicitHeight = 269
    end
    object pnlleft: TPanel
      Left = 1
      Top = 1
      Width = 426
      Height = 297
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
        Height = 245
        Align = alClient
        TabOrder = 1
      end
    end
    object pnlRight: TPanel
      Left = 430
      Top = 1
      Width = 363
      Height = 297
      Align = alClient
      TabOrder = 1
      object bvlRight: TBevel
        Left = 1
        Top = 1
        Width = 361
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
        Width = 361
        Height = 245
        Align = alClient
        TabOrder = 1
      end
    end
  end
  object mmDev: TMainMenu
    Left = 216
    Top = 65528
    object mniFile: TMenuItem
      Caption = #1060#1072#1081#1083
      object mniOpen: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
      end
      object mniSave: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      end
      object mniSepFile: TMenuItem
        Caption = '-'
      end
      object mniClose: TMenuItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
        OnClick = mniCloseClick
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
        DataType = ftString
        Size = 20
      end
      item
        Name = 'lot'
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
      DisplayWidth = 29
      FieldName = 'nmod'
      Size = 50
    end
    object fdmtblDevidmod: TStringField
      DisplayLabel = #1040#1088#1090#1080#1082#1091#1083
      DisplayWidth = 7
      FieldName = 'idmod'
    end
    object fdmtblLot: TStringField
      DisplayLabel = #1055#1072#1088#1090#1080#1103
      DisplayWidth = 7
      FieldName = 'lot'
    end
  end
end
