object frmFR_Table: TfrmFR_Table
  Left = 0
  Top = 0
  Caption = #1057#1074#1086#1076#1085#1072#1103' '#1090#1072#1073#1083#1080#1094#1072' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
  ClientHeight = 748
  ClientWidth = 860
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frxPrV: TfrxPreview
    Left = 0
    Top = 0
    Width = 860
    Height = 748
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    FindFmVisible = False
    UseReportHints = True
    OutlineTreeSortType = dtsUnsorted
    HideScrolls = False
  end
  object frxReCor: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'HP LaserJet 1018'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44539.637803541700000000
    ReportOptions.LastChange = 45233.460361782410000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 24
    Top = 94
    Datasets = <
      item
        DataSet = frdbTabCorund
        DataSetName = 'DBTabCorund'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object pOne: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 83.149660000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frdbTabCorund
        DataSetName = 'DBTabCorund'
        RowCount = 0
        object memTitleNumber: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 68.031540000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object bcDev: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 11.338590000000000000
          Width = 52.913385829999960000
          Height = 52.913385829999960000
          StretchMode = smActualHeight
          AutoSize = False
          BarType = bcCodeQR
          BarProperties.Encoding = qrAuto
          BarProperties.QuietZone = 0
          BarProperties.ErrorLevels = ecL
          BarProperties.PixelSize = 4
          BarProperties.CodePage = 0
          DataField = #1058#1077#1082#1089#1090' '#1089' id '#1080' mac'
          DataSet = frdbTabCorund
          DataSetName = 'DBTabCorund'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          HexData = '31003200330034003500360037003800'
          Zoom = 0.629921259880951900
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object memQR_id_mac: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 15.118120000000000000
          Width = 396.850650000000000000
          Height = 41.574830000000000000
          DataField = #1058#1077#1082#1089#1090' '#1089' id '#1080' mac'
          DataSet = frdbTabCorund
          DataSetName = 'DBTabCorund'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBTabCorund."'#1058#1077#1082#1089#1090' '#1089' id '#1080' mac"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object memStatusOne: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object memStatusTwo: TfrxMemoView
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object memStatusThree: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          AllowVectorExport = True
          Left = 612.283860000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object memDate: TfrxMemoView
          AllowVectorExport = True
          Left = 612.283860000000000000
          Width = 98.267780000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' [DATE] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object memTitleNameDevice: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 181.417440000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072' :')
          ParentFont = False
          VAlign = vaCenter
        end
        object memNameDev: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1077#1090' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1103' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object memTitleStepQR: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 34.015770000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            #1064#1072#1075' '#1087#1077#1095#1072#1090#1080' '#1096#1090#1088#1080#1093'-'#1082#1086#1076#1072' :')
          ParentFont = False
          VAlign = vaCenter
        end
        object memStepQR: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 34.015770000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '00')
          ParentFont = False
          VAlign = vaCenter
        end
        object memTitleStepID: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448980000000000000
          Top = 34.015770000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            #1064#1072#1075' '#1080#1090#1077#1088#1072#1094#1080#1080':')
          ParentFont = False
          VAlign = vaCenter
        end
        object memStepIter: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 34.015770000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '00')
          ParentFont = False
          VAlign = vaCenter
        end
        object memTitleCountDevice: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 34.015770000000000000
          Width = 166.299320000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1091#1089#1090#1088#1086#1081#1089#1090#1074':')
          ParentFont = False
          VAlign = vaCenter
        end
        object memCounDev: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 34.015770000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '000')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 113.385900000000000000
        Width = 718.110700000000000000
        object Num: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088)
          ParentFont = False
          VAlign = vaCenter
        end
        object MAC: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'QR-'#1050#1054#1044)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Width = 396.850650000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Mac&Id')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Width = 154.960730000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1072#1090#1091#1089)
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxBarCode: TfrxBarCodeObject
    Left = 16
    Top = 462
  end
  object frxExPDF: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 8
    Top = 526
  end
  object frdbTable: TfrxDBDataset
    UserName = 'DBTable'
    CloseDataSource = False
    FieldAliases.Strings = (
      'f0='#1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088
      'f1='#1058#1077#1082#1089#1090' '#1089' id '#1080' mac'
      'f2=mac-'#1072#1076#1088#1077#1089
      '-f3=f3')
    DataSet = dbmPrintLabel.fdmtblReport
    BCDToCurrency = False
    Left = 72
    Top = 414
  end
  object frxReTopaz: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'HP LaserJet 1018'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44539.637803541700000000
    ReportOptions.LastChange = 45233.461450625000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 24
    Top = 150
    Datasets = <
      item
        DataSet = frdbTable
        DataSetName = 'DBTable'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object pOne: TfrxReportPage
      VGuides.Strings = (
        '192,75603')
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590600000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        DataSet = frdbTable
        DataSetName = 'DBTable'
        RowCount = 0
        object memNumber: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 56.692950000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mem_id_mac: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 18.897650000000000000
          Width = 445.984540000000000000
          Height = 34.015770000000000000
          DataField = #1058#1077#1082#1089#1090' '#1089' id '#1080' mac'
          DataSet = frdbTable
          DataSetName = 'DBTable'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBTable."'#1058#1077#1082#1089#1090' '#1089' id '#1080' mac"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object bc_id: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 11.338590000000000000
          Width = 49.133858270000000000
          Height = 49.133858270000000000
          StretchMode = smActualHeight
          AutoSize = False
          BarType = bcCodeQR
          BarProperties.Encoding = qrAuto
          BarProperties.QuietZone = 0
          BarProperties.ErrorLevels = ecL
          BarProperties.PixelSize = 4
          BarProperties.CodePage = 0
          DataField = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088
          DataSet = frdbTable
          DataSetName = 'DBTable'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          HexData = '69006400'
          Zoom = 0.584926884166666700
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object bc_mac: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 11.338590000000000000
          Width = 49.133858270000010000
          Height = 49.133858270000010000
          StretchMode = smActualHeight
          AutoSize = False
          BarType = bcCodeQR
          BarProperties.Encoding = qrAuto
          BarProperties.QuietZone = 0
          BarProperties.ErrorLevels = ecL
          BarProperties.PixelSize = 4
          BarProperties.CodePage = 0
          DataField = 'mac-'#1072#1076#1088#1077#1089
          DataSet = frdbTable
          DataSetName = 'DBTable'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          HexData = '6D0061006300'
          Zoom = 0.584926884166666800
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 389.291590000000000000
        Width = 718.110700000000000000
        object pageNumList: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 128.503990710000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object memTitleNameDevice: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 37.795300000000000000
          Width = 192.756030000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072' :')
          ParentFont = False
          VAlign = vaCenter
        end
        object memTitleStep: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 79.370130000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            #1064#1072#1075' '#1087#1077#1095#1072#1090#1080' '#1096#1090#1088#1080#1093'-'#1082#1086#1076#1072' :')
          ParentFont = False
          VAlign = vaCenter
        end
        object memDate: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' [DATE] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object memTitle_HW: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 30.236240000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'HW')
          ParentFont = False
          VAlign = vaCenter
        end
        object memNameDevice: TfrxMemoView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 37.795300000000000000
          Width = 385.512060000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1048#1084#1103' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072' '#1085#1077' '#1074#1074#1077#1076#1077#1085#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object memStep: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 79.370130000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '10')
          ParentFont = False
          VAlign = vaCenter
        end
        object bc_hw: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 49.133890000000000000
          Width = 45.354330710000000000
          Height = 45.354330710000000000
          StretchMode = smActualHeight
          AutoSize = False
          BarType = bcCodeQR
          BarProperties.Encoding = qrAuto
          BarProperties.QuietZone = 0
          BarProperties.ErrorLevels = ecL
          BarProperties.PixelSize = 4
          BarProperties.CodePage = 0
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          HexData = '300030002E00300031002E0031003000'
          Zoom = 0.539932508452381000
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object mem_hw: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 98.267780000000000000
          Width = 64.251980710000000000
          Height = 22.677150710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '00.01.10')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        object Num: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088)
          ParentFont = False
          VAlign = vaCenter
        end
        object MAC: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'QR-ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object memTitle_mac_id: TfrxMemoView
          AllowVectorExport = True
          Left = 166.519790000000000000
          Width = 442.205010000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Mac&Id')
          ParentFont = False
          VAlign = vaCenter
        end
        object memTitle_qr_mac: TfrxMemoView
          AllowVectorExport = True
          Left = 613.283860000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'QR-MAC')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxReTabList: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'HP LaserJet 1018'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44525.630604537000000000
    ReportOptions.LastChange = 45460.637449942130000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 24
    Top = 214
    Datasets = <
      item
        DataSet = frdbTabList
        DataSetName = 'DBTableList'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object pOne: TfrxReportPage
      VGuides.Strings = (
        '29')
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      ColumnWidth = 190.000000000000000000
      ColumnPositions.Strings = (
        '0')
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        DataSet = frdbTabList
        DataSetName = 'DBTableList'
        RowCount = 0
        object memBase: TfrxMemoView
          AllowVectorExport = True
          Width = 721.890230000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clAqua
          Highlight.Frame.Typ = []
          ParentFont = False
        end
        object dbmem_mac: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Width = 302.362400000000000000
          Height = 34.015770000000000000
          DataField = 'mac_extended'
          DataSet = frdbTabList
          DataSetName = 'DBTableList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBTableList."mac_extended"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object dbmem_id: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 415.748300000000000000
          Width = 302.362400000000000000
          Height = 34.015770000000000000
          DataField = 'id_space'
          DataSet = frdbTabList
          DataSetName = 'DBTableList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBTableList."id_space"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object memIncNumber: TfrxMemoView
          AllowVectorExport = True
          Width = 113.385900000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        object memPage: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        object memTitleNumber: TfrxMemoView
          AllowVectorExport = True
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088)
          ParentFont = False
          VAlign = vaCenter
        end
        object memTitle_mac: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Width = 302.362400000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'MAC - '#1072#1076#1088#1077#1089)
          ParentFont = False
          VAlign = vaCenter
        end
        object memTitle_id: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Width = 302.362400000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088' '#1082#1086#1084#1087#1083#1077#1082#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 147.401670000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object memTitleDev: TfrxMemoView
          AllowVectorExport = True
          Left = 2.543290000000000000
          Top = 34.015770000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1080#1079#1076#1077#1083#1080#1103':')
          ParentFont = False
          VAlign = vaCenter
        end
        object memNameDev: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 34.015770000000000000
          Width = 487.559370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1080#1079#1076#1077#1083#1080#1103' '#1085#1077' '#1074#1074#1077#1076#1077#1085#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object memTitlemac: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 60.472480000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1072#1095#1072#1083#1100#1085#1099#1081' MAC-'#1072#1076#1088#1077#1089' '#1082#1086#1084#1087#1083#1077#1082#1090#1072':')
          ParentFont = False
          VAlign = vaCenter
        end
        object memmac: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464750000000000000
          Top = 60.472480000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'MAC-'#1072#1076#1088#1077#1089' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object memTitleID: TfrxMemoView
          AllowVectorExport = True
          Left = 2.543290000000000000
          Top = 86.929190000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1072#1095#1072#1083#1100#1085#1099#1081' '#1089#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1082#1086#1084#1087#1083#1077#1082#1090#1072':')
          ParentFont = False
          VAlign = vaCenter
        end
        object memID: TfrxMemoView
          AllowVectorExport = True
          Left = 316.244280000000000000
          Top = 86.929190000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1082#1086#1084#1087#1083#1077#1082#1090#1072)
          ParentFont = False
        end
        object memTitleStepIter: TfrxMemoView
          AllowVectorExport = True
          Left = 6.322820000000000000
          Top = 124.724490000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1064#1072#1075' '#1080#1090#1077#1088#1072#1094#1080#1080':')
          ParentFont = False
          VAlign = vaCenter
        end
        object memStep: TfrxMemoView
          AllowVectorExport = True
          Left = 138.606370000000000000
          Top = 124.724490000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            #1064#1072#1075)
          ParentFont = False
          VAlign = vaCenter
        end
        object memTitlequantity: TfrxMemoView
          AllowVectorExport = True
          Left = 238.110390000000000000
          Top = 124.724490000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1091#1089#1090#1088#1086#1081#1089#1090#1074':')
          ParentFont = False
          VAlign = vaCenter
        end
        object memQuantity: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 124.724490000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object memDate: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Width = 124.724490000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' [DATE] ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDes: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 16
    Top = 294
  end
  object frdbTabList: TfrxDBDataset
    UserName = 'DBTableList'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      '-id_blob=id_blob'
      '-id_blob_scale=id_blob_scale'
      'id_space=id_space'
      'mac=mac'
      'mac_extended=mac_extended'
      'id_mac=id_mac'
      '-id_mac_blob=id_mac_blob')
    DataSet = dbmPrintLabel.fdmtblPrint
    BCDToCurrency = False
    Left = 72
    Top = 462
  end
  object frdbTabCorund: TfrxDBDataset
    UserName = 'DBTabCorund'
    CloseDataSource = False
    FieldAliases.Strings = (
      'f0='#1058#1077#1082#1089#1090' '#1089' id '#1080' mac'
      '-f1=f1'
      '-f2=f2'
      '-f3=f3')
    DataSet = dbmPrintLabel.fdmtblReport
    BCDToCurrency = False
    Left = 16
    Top = 374
  end
end
