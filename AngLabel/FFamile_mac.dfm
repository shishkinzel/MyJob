object frmFamily_mac: TfrmFamily_mac
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1042#1099#1073#1086#1088' '#1083#1080#1085#1077#1081#1082#1080' mac-'#1072#1076#1088#1077#1089#1086#1074' '#1091#1089#1090#1088#1086#1081#1089#1090#1074
  ClientHeight = 299
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_Title_mac: TLabel
    Left = 29
    Top = 72
    Width = 174
    Height = 20
    Alignment = taCenter
    AutoSize = False
    Caption = #1053#1072#1095#1072#1083#1100#1085#1099#1081' '#1072#1076#1088#1077#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Anonymous Pro'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbl_Title_falmile: TLabel
    Left = 256
    Top = 72
    Width = 206
    Height = 20
    Alignment = taCenter
    AutoSize = False
    Caption = #1057#1077#1084#1077#1081#1089#1090#1074#1086' '#1091#1089#1090#1088#1086#1081#1089#1090#1074
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Anonymous Pro'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbl_Atlanta: TLabel
    Left = 30
    Top = 104
    Width = 201
    Height = 20
    AutoSize = False
    Caption = '68:EB:C5:00:00:00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Anonymous Pro'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbl_Topaz: TLabel
    Left = 30
    Top = 139
    Width = 201
    Height = 20
    AutoSize = False
    Caption = '68:EB:C5:00:00:00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Anonymous Pro'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbl_ksk: TLabel
    Left = 30
    Top = 174
    Width = 201
    Height = 20
    AutoSize = False
    Caption = '68:EB:C5:00:00:00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Anonymous Pro'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbl_Corundum: TLabel
    Left = 30
    Top = 209
    Width = 201
    Height = 20
    AutoSize = False
    Caption = '68:EB:C5:00:00:00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Anonymous Pro'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object btn_Reset: TBitBtn
    Left = 32
    Top = 256
    Width = 449
    Height = 25
    BiDiMode = bdRightToLeftReadingOnly
    Caption = #1054#1090#1082#1072#1079#1072#1090#1100#1089#1103' '#1086#1090' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1086#1075#1086' '#1074#1074#1086#1076#1072' mac-'#1072#1076#1088#1077#1089#1072
    ParentBiDiMode = False
    TabOrder = 4
    OnClick = btn_ResetClick
  end
  object txt_Title: TStaticText
    Tag = 50
    Left = 0
    Top = 0
    Width = 495
    Height = 41
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    BiDiMode = bdLeftToRight
    BorderStyle = sbsSingle
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1103' '#1089#1077#1084#1077#1081#1089#1090#1074#1072' '#1080#1079#1076#1077#1083#1080#1081
    Color = clAqua
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Anonymous Pro'
    Font.Style = [fsBold, fsItalic]
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    Transparent = False
  end
  object btn_Atlanta: TBitBtn
    Left = 224
    Top = 100
    Width = 257
    Height = 27
    Caption = 'Atlanta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Anonymous Pro'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
    OnClick = btn_AtlantaClick
  end
  object btn_Topaz: TBitBtn
    Tag = 1
    Left = 224
    Top = 135
    Width = 257
    Height = 27
    Caption = 'Topaz'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Anonymous Pro'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
    OnClick = btn_AtlantaClick
  end
  object btn_ksk: TBitBtn
    Tag = 2
    Left = 224
    Top = 170
    Width = 257
    Height = 27
    Caption = 'KCK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Anonymous Pro'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 2
    OnClick = btn_AtlantaClick
  end
  object btn_Corundum: TBitBtn
    Tag = 3
    Left = 224
    Top = 205
    Width = 257
    Height = 27
    Caption = 'Corundum'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Anonymous Pro'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 3
    OnClick = btn_AtlantaClick
  end
end
