object frmFRList: TfrmFRList
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1052#1040#1057'- '#1072#1076#1088#1077#1089#1086#1074
  ClientHeight = 644
  ClientWidth = 284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frxprvwList: TfrxPreview
    Left = 0
    Top = 0
    Width = 284
    Height = 644
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    FindFmVisible = False
    UseReportHints = True
    OutlineTreeSortType = dtsUnsorted
    HideScrolls = False
  end
  object frxrprtList: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxprvwList
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'ZDesigner TLP 2824_little'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44527.830455590300000000
    ReportOptions.LastChange = 44858.388304803240000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 200
    Top = 32
    Datasets = <
      item
        DataSet = frxdbdtstList
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object PageMAC: TfrxReportPage
      PaperWidth = 44.000000000000000000
      PaperHeight = 12.000000000000000000
      PaperSize = 256
      LeftMargin = 1.000000000000000000
      RightMargin = 1.000000000000000000
      TopMargin = 1.000000000000000000
      BottomMargin = 1.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354330710000000000
        Top = 18.897650000000000000
        Width = 158.740260000000000000
        DataSet = frxdbdtstList
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1MACadress: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 1.889763779527559000
          Width = 154.960637240000000000
          Height = 37.795275590000000000
          DataField = 'MAC - adress'
          DataSet = frxdbdtstList
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."MAC - adress"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 86.929190000000000000
        Width = 158.740260000000000000
        RowCount = 0
      end
    end
  end
  object frxdbdtstList: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = frmMAC.fdmtblMac
    BCDToCurrency = False
    Left = 24
    Top = 78
  end
  object frxdcxprtList: TfrxDOCXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 24
    Top = 166
  end
  object frxbrcdbjctList: TfrxBarCodeObject
    Left = 32
    Top = 254
  end
end
