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
  end
  object rpSmallLabel: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = pvSmallLabel
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = '\\Angwork_print\te200_940'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44757.859132928200000000
    ReportOptions.LastChange = 44862.675554016200000000
    ReportOptions.VersionBuild = '1'
    ReportOptions.VersionMajor = '0'
    ReportOptions.VersionMinor = '0'
    ReportOptions.VersionRelease = '1'
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
          Top = 3.779527559999998000
          Width = 113.385900000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Module')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 22.677180000000000000
          Width = 113.385900000000000000
          Height = 18.897637800000000000
          AutoSize = True
          Center = True
          DataField = 'bcSmall'
          DataSet = frmFRBigLabel.dbBigLabel
          DataSetName = 'dbLabel'
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object dbLabelsn: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 20.787451620000000000
          Top = 49.133858270000000000
          Width = 86.929116770000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'sn'
          DataSet = frmFRBigLabel.dbBigLabel
          DataSetName = 'dbLabel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dbLabel."sn"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 49.133858270000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            's/n')
          ParentFont = False
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
