object frmFRSmallLabel: TfrmFRSmallLabel
  Left = 0
  Top = 0
  Caption = 'frmFRSmallLabel'
  ClientHeight = 609
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pvSmallLabel: TfrxPreview
    Left = 0
    Top = 0
    Width = 281
    Height = 609
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    FindFmVisible = False
    UseReportHints = True
    OutlineTreeSortType = dtsUnsorted
    HideScrolls = False
    ExplicitWidth = 227
  end
  object rpSmallLabel: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = pvSmallLabel
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'ZDesigner TLP 2824_little'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44757.859132928200000000
    ReportOptions.LastChange = 44762.461194537030000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 24
    Top = 70
    Datasets = <
      item
        DataSet = frmFRBigLabel.dbBigLabel
        DataSetName = 'dbLabel'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object lbSmall: TfrxReportPage
      PaperWidth = 30.000000000000000000
      PaperHeight = 20.000000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 154.960730000000000000
        Top = 18.897650000000000000
        Width = 113.385900000000000000
        DataSet = frmFRBigLabel.dbBigLabel
        DataSetName = 'dbLabel'
        RowCount = 0
        object MTitle: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779527559055118000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Module')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779527559055118000
          Top = 26.456710000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          AutoSize = True
          Center = True
          DataField = 'bcSmall'
          DataSet = frmFRBigLabel.dbBigLabel
          DataSetName = 'dbLabel'
          Frame.Typ = []
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object dbLabelsn: TfrxMemoView
          IndexTag = 1
          Align = baCenter
          AllowVectorExport = True
          Left = 0.000036615000000000
          Top = 52.913395590000000000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'sn'
          DataSet = frmFRBigLabel.dbBigLabel
          DataSetName = 'dbLabel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbLabel."sn"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object dbSmallLabel: TfrxDBDataset
    UserName = 'dbSmallLabel'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 32
    Top = 150
  end
end
