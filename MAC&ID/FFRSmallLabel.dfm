object frmFRSmallLabel: TfrmFRSmallLabel
  Left = 0
  Top = 0
  Caption = 'frmFRSmallLabel'
  ClientHeight = 609
  ClientWidth = 232
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
    Width = 232
    Height = 609
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    FindFmVisible = False
    UseReportHints = True
    OutlineTreeSortType = dtsUnsorted
    HideScrolls = False
    ExplicitTop = 8
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
    ReportOptions.CreateDate = 44757.859132928240000000
    ReportOptions.LastChange = 44757.869587141210000000
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
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 113.385900000000000000
        DataSet = frmFRBigLabel.dbBigLabel
        DataSetName = 'dbLabel'
        RowCount = 0
        object lbLittle: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '12')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Center = True
          DataField = 'bcSmall'
          DataSet = frmFRBigLabel.dbBigLabel
          DataSetName = 'dbLabel'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object dbLabelsn1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 37.795300000000000000
          Width = 105.826840000000000000
          Height = 18.897637795275590000
          DataField = 'sn'
          DataSet = frmFRBigLabel.dbBigLabel
          DataSetName = 'dbLabel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbLabel."sn"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object dbLabelsn: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 79.370130000000000000
        Width = 158.740260000000000000
        Height = 18.897650000000000000
        DataField = 'sn'
        DataSet = frmFRBigLabel.dbBigLabel
        DataSetName = 'dbLabel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          '[dbLabel."sn"]')
        ParentFont = False
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
