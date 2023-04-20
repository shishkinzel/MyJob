object frmGrid: TfrmGrid
  Left = 0
  Top = 0
  Caption = #1057#1074#1086#1076#1085#1072#1103' '#1090#1072#1073#1083#1080#1094#1072' '#1074#1099#1087#1091#1097#1077#1085#1085#1086#1081' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
  ClientHeight = 650
  ClientWidth = 850
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object splTop: TSplitter
    Left = 0
    Top = 41
    Width = 850
    Height = 2
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 898
  end
  object splDown: TSplitter
    Left = 0
    Top = 529
    Width = 850
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 43
    ExplicitWidth = 314
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 850
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 320
    ExplicitTop = 72
    ExplicitWidth = 185
  end
  object pnlDown: TPanel
    Left = 0
    Top = 532
    Width = 850
    Height = 118
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 484
    ExplicitWidth = 898
  end
  object pnlMain: TPanel
    Left = 0
    Top = 43
    Width = 850
    Height = 486
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 376
    ExplicitTop = 232
    ExplicitWidth = 185
    ExplicitHeight = 41
    object dbGDev: TDBGridEh
      Left = 1
      Top = 26
      Width = 848
      Height = 459
      Align = alClient
      DataSource = dsEh
      DynProps = <>
      TabOrder = 0
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object dbnEh: TDBNavigator
      Left = 1
      Top = 1
      Width = 848
      Height = 25
      DataSource = dsEh
      Align = alTop
      TabOrder = 1
      ExplicitLeft = 280
      ExplicitTop = 56
      ExplicitWidth = 240
    end
  end
  object dsEh: TDataSource
    DataSet = dbMain.tblDev
    Left = 56
    Top = 511
  end
end
