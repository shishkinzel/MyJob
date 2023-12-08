object frmListDevice: TfrmListDevice
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1091#1089#1090#1088#1086#1081#1089#1090#1074
  ClientHeight = 514
  ClientWidth = 797
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 797
    Height = 514
    Align = alClient
    TabOrder = 0
    object pnlTop: TPanel
      Left = 1
      Top = 1
      Width = 795
      Height = 41
      Align = alTop
      TabOrder = 2
      object txtTitle: TStaticText
        AlignWithMargins = True
        Left = 104
        Top = 3
        Width = 543
        Height = 35
        Alignment = taCenter
        AutoSize = False
        BevelEdges = [beTop]
        BevelKind = bkTile
        BevelOuter = bvRaised
        BiDiMode = bdLeftToRight
        BorderStyle = sbsSingle
        Caption = #1056#1072#1089#1096#1080#1088#1077#1085#1099#1081' '#1089#1087#1080#1089#1086#1082'  '#1091#1089#1090#1088#1086#1081#1089#1090#1074
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -16
        Font.Name = 'Roboto Black'
        Font.Style = [fsItalic]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
        Transparent = False
      end
    end
    object pnlDown: TPanel
      Left = 1
      Top = 370
      Width = 795
      Height = 143
      Align = alBottom
      TabOrder = 0
      object lbl_TitleDev: TLabel
        Left = 20
        Top = 28
        Width = 162
        Height = 15
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object lbl_Dev_number: TLabel
        Left = 20
        Top = 65
        Width = 162
        Height = 15
        Caption = #1053#1086#1084#1077#1088' '#1084#1086#1076#1091#1083#1103' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object edtDev: TEdit
        Left = 188
        Top = 25
        Width = 453
        Height = 22
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Anonymous Pro'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = #1042#1074#1077#1076#1080#1090#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
      end
      object btnApply: TBitBtn
        Left = 20
        Top = 103
        Width = 225
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1090#1072#1073#1083#1080#1094#1091
        TabOrder = 2
        OnClick = btnApplyClick
      end
      object btnForm: TBitBtn
        Left = 561
        Top = 103
        Width = 225
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1072' '#1092#1086#1088#1084#1091
        Enabled = False
        TabOrder = 3
        OnClick = btnFormClick
      end
      object medt_Dev_number: TMaskEdit
        AlignWithMargins = True
        Left = 188
        Top = 60
        Width = 37
        Height = 24
        Margins.Right = 10
        Alignment = taRightJustify
        BevelInner = bvSpace
        BevelOuter = bvSpace
        BevelKind = bkSoft
        BiDiMode = bdLeftToRight
        EditMask = '999;0; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Anonymous Pro'
        Font.Style = []
        MaxLength = 3
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = ''
        TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1084#1086#1076#1091#1083#1103' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072' '#1080#1079' '#1089#1077#1088#1080#1081#1085#1086#1075#1086' '#1085#1086#1084#1077#1088#1072' '
      end
    end
    object pnlTabl: TPanel
      Left = 1
      Top = 42
      Width = 653
      Height = 328
      Align = alClient
      TabOrder = 3
      object dbnMain: TDBNavigator
        Left = 1
        Top = 1
        Width = 651
        Height = 25
        DataSource = dsDev
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbPost, nbRefresh]
        Align = alTop
        TabOrder = 0
      end
      object dbG_Dev_List: TDBGrid
        Left = 1
        Top = 26
        Width = 651
        Height = 301
        Align = alClient
        DataSource = dsDev
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = dbG_Dev_ListDblClick
      end
    end
    object pnlRight: TPanel
      Left = 654
      Top = 42
      Width = 142
      Height = 328
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ExplicitTop = 45
      object lbl_date: TLabel
        Left = 41
        Top = 54
        Width = 26
        Height = 13
        ParentCustomHint = False
        BiDiMode = bdLeftToRight
        Caption = #1044#1072#1090#1072
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
      end
      object lbl_modify: TLabel
        Left = 41
        Top = 123
        Width = 71
        Height = 13
        ParentCustomHint = False
        BiDiMode = bdLeftToRight
        Caption = #1052#1086#1076#1080#1092#1080#1082#1072#1094#1080#1103
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
      end
      object lbl_num: TLabel
        Left = 41
        Top = 190
        Width = 90
        Height = 13
        ParentCustomHint = False
        BiDiMode = bdLeftToRight
        Caption = #1053#1072#1095#1072#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
      end
      object chk_id: TCheckBox
        Left = 41
        Top = 288
        Width = 97
        Height = 17
        ParentCustomHint = False
        BiDiMode = bdLeftToRight
        Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 4
      end
      object edt_date: TEdit
        Left = 41
        Top = 73
        Width = 37
        Height = 22
        ParentCustomHint = False
        BiDiMode = bdLeftToRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Anonymous Pro'
        Font.Style = []
        MaxLength = 3
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
        OnKeyPress = edt_dateKeyPress
      end
      object edt_modify: TEdit
        Left = 41
        Top = 142
        Width = 37
        Height = 22
        ParentCustomHint = False
        BiDiMode = bdLeftToRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Anonymous Pro'
        Font.Style = []
        MaxLength = 3
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
        OnKeyPress = edt_dateKeyPress
      end
      object edt_num: TEdit
        Left = 41
        Top = 224
        Width = 37
        Height = 22
        ParentCustomHint = False
        BiDiMode = bdLeftToRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Anonymous Pro'
        Font.Style = []
        MaxLength = 3
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 2
        OnKeyPress = edt_dateKeyPress
      end
      object txt_Right_title: TStaticText
        Left = 6
        Top = 9
        Width = 127
        Height = 17
        Alignment = taCenter
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSingle
        Caption = #1055#1086#1083#1103' '#1089#1077#1088#1080#1081#1085#1086#1075#1086' '#1085#1086#1084#1077#1088#1072
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clHotLight
        Font.Height = -11
        Font.Name = 'Roboto'
        Font.Style = [fsItalic]
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  object fdjsonOne: TFDStanStorageJSONLink
    Left = 73
    Top = 4
  end
  object fdDev: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'key'
        DataType = ftAutoInc
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'id_mod'
        DataType = ftString
        Size = 3
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
    Left = 1
    object fdDevkey: TFDAutoIncField
      FieldName = 'key'
      ProviderFlags = [pfInUpdate, pfInWhere]
      IdentityInsert = True
    end
    object fdDevname: TStringField
      FieldName = 'name'
      Size = 50
    end
    object fdDevid_mod: TStringField
      FieldName = 'id_mod'
      Size = 3
    end
  end
  object dsDev: TDataSource
    DataSet = fdDev
    Left = 33
    Top = 4
  end
end
