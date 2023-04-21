object frmGrid: TfrmGrid
  Left = 0
  Top = 0
  Caption = #1057#1074#1086#1076#1085#1072#1103' '#1090#1072#1073#1083#1080#1094#1072' '#1074#1099#1087#1091#1097#1077#1085#1085#1086#1081' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
  ClientHeight = 720
  ClientWidth = 948
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
    Top = 257
    Width = 948
    Height = 2
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 41
    ExplicitWidth = 898
  end
  object splDown: TSplitter
    Left = 0
    Top = 599
    Width = 948
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 43
    ExplicitWidth = 314
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 948
    Height = 257
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 850
    object dbnav_DevAll: TDBNavigator
      Left = 1
      Top = 1
      Width = 946
      Height = 25
      DataSource = ds_DevAll
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 240
      ExplicitTop = 32
      ExplicitWidth = 240
    end
    object dbG_DevAll: TDBGridEh
      Left = 1
      Top = 26
      Width = 946
      Height = 230
      Align = alClient
      DataSource = ds_DevAll
      DynProps = <>
      TabOrder = 1
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object pnlDown: TPanel
    Left = 0
    Top = 602
    Width = 948
    Height = 118
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 532
    ExplicitWidth = 850
  end
  object pnlMain: TPanel
    Left = 0
    Top = 259
    Width = 948
    Height = 340
    Align = alClient
    TabOrder = 2
    ExplicitTop = 43
    ExplicitWidth = 850
    ExplicitHeight = 486
    object dbG_Dev: TDBGridEh
      Left = 1
      Top = 26
      Width = 946
      Height = 313
      Align = alClient
      DataSource = ds_Dev
      DynProps = <>
      TabOrder = 0
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object dbnav_Dev: TDBNavigator
      Left = 1
      Top = 1
      Width = 946
      Height = 25
      DataSource = ds_Dev
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 848
    end
  end
  object ds_Dev: TDataSource
    DataSet = dbMain.tbl_Dev
    Left = 872
    Top = 559
  end
  object ds_DevAll: TDataSource
    DataSet = dbMain.tbl_DevAll
    Left = 872
    Top = 223
  end
end
