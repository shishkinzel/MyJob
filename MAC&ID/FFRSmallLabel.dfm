object frmFRSmallLabel: TfrmFRSmallLabel
  Left = 0
  Top = 0
  Caption = 'frmFRSmallLabel'
  ClientHeight = 609
  ClientWidth = 320
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
    Width = 320
    Height = 609
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    FindFmVisible = False
    UseReportHints = True
    OutlineTreeSortType = dtsUnsorted
    HideScrolls = False
    ExplicitLeft = -8
    ExplicitTop = 8
    ExplicitWidth = 542
  end
  object rpSmallLabel: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = pvSmallLabel
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44757.859132928200000000
    ReportOptions.LastChange = 44760.703793634260000000
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
      PaperWidth = 48.000000000000000000
      PaperHeight = 25.000000000000000000
      PaperSize = 256
      LeftMargin = 12.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590587800000000000
        Top = 18.897650000000000000
        Width = 136.063080000000000000
        DataSet = frmFRBigLabel.dbBigLabel
        DataSetName = 'dbLabel'
        RowCount = 0
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 18.897650000000000000
          Width = 132.283550000000000000
          Height = 30.236240000000000000
          AutoSize = True
          Center = True
          DataField = 'bcSmall'
          DataSet = frmFRBigLabel.dbBigLabel
          DataSetName = 'dbLabel'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object MTitle: TfrxMemoView
          AllowVectorExport = True
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1087#1088#1080#1074#1077#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object dbLabelsn: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = -7.559055118110236000
          Top = 49.133890000000000000
          Width = 132.283550000000000000
          Height = 26.456710000000000000
          StretchMode = smActualHeight
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
