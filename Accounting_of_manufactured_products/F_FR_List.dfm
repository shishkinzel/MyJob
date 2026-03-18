object frmFR_List: TfrmFR_List
  Left = 0
  Top = 0
  Caption = #1054#1090#1095#1077#1090' '#1076#1083#1103' '#1082#1086#1084#1072#1085#1076#1085#1086#1081' '#1089#1090#1088#1086#1082#1080
  ClientHeight = 700
  ClientWidth = 840
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
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 834
    Height = 694
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    FindFmVisible = False
    UseReportHints = True
    OutlineTreeSortType = dtsUnsorted
    HideScrolls = False
  end
  object frxRe: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxPrV
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'HP LaserJet 1018'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45015.443400532400000000
    ReportOptions.LastChange = 46058.612577696760000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 16
    Top = 30
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object pageOne_rpPr_standart_qr: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object rpTitle_list_q_old: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 861.732840000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object memTitlePlace: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 185.196970000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1072#1073#1086#1095#1077#1077' '#1084#1077#1089#1090#1086' : ')
          ParentFont = False
          VAlign = vaCenter
        end
        object memJobPlace: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Width = 200.315090000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088' '#1088#1072#1073#1086#1095#1077#1075#1086' '#1084#1077#1089#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object memData: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 3.779530000000000000
          Width = 139.842610000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object memTitleUSB: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 49.133890000000000000
          Width = 241.889920000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1082#1090#1080#1074#1072#1094#1080#1103' USB-blaster'
            'ap map')
          ParentFont = False
          VAlign = vaCenter
        end
        object bq_ap_map: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 268.346630000000000000
          Top = 45.354360000000000000
          Width = 84.000000000000000000
          Height = 84.000000000000000000
          StretchMode = smActualHeight
          BarType = bcCodeQR
          BarProperties.Encoding = qrAuto
          BarProperties.QuietZone = 0
          BarProperties.ErrorLevels = ecL
          BarProperties.PixelSize = 4
          BarProperties.CodePage = 0
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          HexData = '6100700020006D0061007000'
          Zoom = 0.449943757023810000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object memTitle_pyton: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 173.858380000000000000
          Width = 219.212740000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1082#1090#1080#1074#1072#1094#1080#1103' pyton'
            'pyenv activate ap-dev')
          ParentFont = False
          VAlign = vaCenter
        end
        object bq_pyton: TfrxBarcode2DView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 268.346630000000000000
          Top = 181.417440000000000000
          Width = 100.000000000000000000
          Height = 100.000000000000000000
          StretchMode = smActualHeight
          BarType = bcCodeQR
          BarProperties.Encoding = qrAuto
          BarProperties.QuietZone = 0
          BarProperties.ErrorLevels = ecL
          BarProperties.PixelSize = 4
          BarProperties.CodePage = 0
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          HexData = 
            '7000790065006E00760020006100630074006900760061007400650020006100' +
            '70002D00640065007600'
          Zoom = 0.529133858300000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object memTextCode: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 279.685220000000000000
          Width = 400.630180000000000000
          Height = 457.323130000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            #1058#1077#1082#1089#1090' '#1076#1083#1103' '#1096#1090#1088#1080#1093#1082#1086#1076#1072)
          ParentFont = False
        end
        object memTitle_QR: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 249.448980000000000000
          Width = 400.630180000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1077#1082#1089' QR-'#1082#1086#1076#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object memTitl_cod: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 249.448980000000000000
          Width = 298.582870000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QR-code')
          ParentFont = False
          VAlign = vaCenter
        end
        object memPlaceQR: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 287.244280000000000000
          Width = 287.244280000000000000
          Height = 370.393940000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            #1052#1077#1089#1090#1086' '#1076#1083#1103' QR-'#1082#1086#1076#1072)
          ParentFont = False
        end
        object bq_Place: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 396.850650000000000000
          Width = 151.181102360000000000
          Height = 151.181102360000000000
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
          HexData = '31003200330034003500360037003800'
          Zoom = 1.799775028095238000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object memTitleDevice: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 98.267780000000000000
          Width = 219.212740000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072':')
          ParentFont = False
          VAlign = vaCenter
        end
        object memNameDevice: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 98.267780000000000000
          Width = 404.409710000000000000
          Height = 71.811070000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '             '#1055#1086#1083#1077' '#1085#1077' '#1079#1072#1087#1086#1083#1085#1077#1085#1086)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object mData: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 941.102970000000000000
        Width = 718.110700000000000000
        RowCount = 0
      end
      object PFooter: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 1024.252630000000000000
        Width = 718.110700000000000000
        object memNumberStr: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
  object frxBarCode: TfrxBarCodeObject
    Left = 16
    Top = 646
  end
  object frxRe_adv: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxPrV
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'HP LaserJet 1018'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45015.443400532400000000
    ReportOptions.LastChange = 46058.612211296300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 72
    Top = 30
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object pageOne_rpPr_adv_qr: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object rpTitle_list_q_old_adv: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 944.882500000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object memData: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 22.677180000000000000
          Width = 139.842610000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object memTitleUSB: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 162.708720000000000000
          Width = 219.212740000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1082#1090#1080#1074#1072#1094#1080#1103' USB-blaster'
            'ap map')
          ParentFont = False
          VAlign = vaCenter
        end
        object bq_ap_map: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 268.346630000000000000
          Top = 151.370130000000000000
          Width = 84.000000000000000000
          Height = 84.000000000000000000
          StretchMode = smActualHeight
          BarType = bcCodeQR
          BarProperties.Encoding = qrAuto
          BarProperties.QuietZone = 0
          BarProperties.ErrorLevels = ecL
          BarProperties.PixelSize = 4
          BarProperties.CodePage = 0
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          HexData = '6100700020006D0061007000'
          Zoom = 0.600000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object memTitlepython: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 238.299320000000000000
          Width = 219.212740000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1082#1090#1080#1074#1072#1094#1080#1103' pyton'
            'pyenv activate ap-dev')
          ParentFont = False
          VAlign = vaCenter
        end
        object bq_python: TfrxBarcode2DView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 264.567100000000000000
          Top = 242.078850000000000000
          Width = 100.000000000000000000
          Height = 100.000000000000000000
          StretchMode = smActualHeight
          BarType = bcCodeQR
          BarProperties.Encoding = qrAuto
          BarProperties.QuietZone = 0
          BarProperties.ErrorLevels = ecL
          BarProperties.PixelSize = 4
          BarProperties.CodePage = 0
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          HexData = 
            '7000790065006E00760020006100630074006900760061007400650020006100' +
            '70002D00640065007600'
          Zoom = 0.600000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object memTextCode: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 370.582870000000000000
          Width = 400.630180000000000000
          Height = 438.425480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            #1058#1077#1082#1089#1090' '#1076#1083#1103' '#1096#1090#1088#1080#1093#1082#1086#1076#1072)
          ParentFont = False
        end
        object memTitle_QR: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 340.346630000000000000
          Width = 400.630180000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1077#1082#1089' QR-'#1082#1086#1076#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object memTitl_cod: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 340.346630000000000000
          Width = 298.582870000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QR-code')
          ParentFont = False
          VAlign = vaCenter
        end
        object memPlaceQR: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 370.393940000000000000
          Width = 298.582870000000000000
          Height = 362.834880000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            #1052#1077#1089#1090#1086' '#1076#1083#1103' QR-'#1082#1086#1076#1072)
          ParentFont = False
        end
        object bq_Place: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 468.850650000000000000
          Width = 151.181102360000000000
          Height = 151.181102360000000000
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
          HexData = '31003200330034003500360037003800'
          Zoom = 1.799775028095238000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object memTitleDevice: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 72.000000000000000000
          Width = 219.212740000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072':')
          ParentFont = False
          VAlign = vaCenter
        end
        object memNameDevice: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 72.000000000000000000
          Width = 404.409710000000000000
          Height = 71.811070000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '             '#1055#1086#1083#1077' '#1085#1077' '#1079#1072#1087#1086#1083#1085#1077#1085#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object bq_Admin: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 151.370130000000000000
          Width = 50.400000000000000000
          Height = 50.400000000000000000
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
          HexData = '610064006D0069006E00'
          Zoom = 0.600000000000000000
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object bq_Angtel: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 257.196970000000000000
          Width = 50.400000000000000000
          Height = 50.400000000000000000
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
          HexData = '61006E006700740065006C00'
          Zoom = 0.600000000000000000
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object memAdmin: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 150.740260000000000000
          Width = 166.299320000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Admin')
          ParentFont = False
          VAlign = vaCenter
        end
        object memAngtel: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 256.756030000000000000
          Width = 166.299320000000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Angtel')
          ParentFont = False
          VAlign = vaCenter
        end
        object bq_Exit: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 850.583180000000000000
          Width = 50.400000000000000000
          Height = 50.400000000000000000
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
          HexData = '6500780069007400'
          Zoom = 0.600000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object bq_Root: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 850.583180000000000000
          Width = 50.400000000000000000
          Height = 50.400000000000000000
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
          HexData = '72006F006F007400'
          Zoom = 0.600000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object memExit: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 850.583180000000000000
          Width = 226.771800000000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'exit')
          ParentFont = False
          VAlign = vaCenter
        end
        object memRoot: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 850.583180000000000000
          Width = 166.299320000000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'root')
          ParentFont = False
          VAlign = vaCenter
        end
        object memTitlePlase: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = -3.779530000000000000
          Width = 219.212740000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1072#1073#1086#1095#1077#1077' '#1084#1077#1089#1090#1086' '#8470)
          ParentFont = False
          VAlign = vaCenter
        end
        object memJobPlace: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = -3.779530000000000000
          Width = 230.551330000000000000
          Height = 71.811070000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '             '#1055#1086#1083#1077' '#1085#1077' '#1079#1072#1087#1086#1083#1085#1077#1085#1086)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PFooter: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 1024.252630000000000000
        Width = 718.110700000000000000
        object memNumberStr: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
  object frx_command: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxPrV
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'HP LaserJet 1018'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45015.443400532400000000
    ReportOptions.LastChange = 46059.609967777800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 11
    Top = 97
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object pageOne_rpPr_adv_qr: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object rpTitle_list_q_command: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 944.882500000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object memData: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Width = 139.842610000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mem_pos1: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267718980000000000
          Top = 75.590551180000000000
          Width = 245.669291340000000000
          Height = 75.590551180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QWERTYUIOPASDFGHJKL;QWERTYUIOPZXCVBNM,.KQWERTYUHJK')
          ParentFont = False
          VAlign = vaCenter
        end
        object bq_pos1: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 11.338585120000000000
          Top = 75.590551180000000000
          Width = 75.590551180000000000
          Height = 75.590551180000000000
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
          HexData = 
            '510057004500520054005900550049004F005000410053004400460047004800' +
            '4A004B004C003B00510057004500520054005900550049004F0050005A005800' +
            '4300560042004E004D002C002E004B0051005700450052005400590055004800' +
            '4A004B00'
          Zoom = 0.651642682586206900
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object mem_pos7: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 75.590551180000000000
          Width = 245.669291340000000000
          Height = 75.590551180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QWERTYUIOPASDFGHJKL;QWERTYUIOPZXCVBNM,.KQWERTYUHJK')
          ParentFont = False
          VAlign = vaCenter
        end
        object bq_pos7: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 75.590551180000000000
          Width = 75.590551180000010000
          Height = 75.590551180000010000
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
          HexData = 
            '510057004500520054005900550049004F005000410053004400460047004800' +
            '4A004B004C003B00510057004500520054005900550049004F0050005A005800' +
            '4300560042004E004D002C002E004B0051005700450052005400590055004800' +
            '4A004B00'
          Zoom = 0.651642682586207000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object mem_pos2: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267723860000000000
          Top = 226.771653540000000000
          Width = 245.669291340000000000
          Height = 75.590551180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QWERTYUIOPASDFGHJKL;QWERTYUIOPZXCVBNM,.KQWERTYUHJK')
          ParentFont = False
          VAlign = vaCenter
        end
        object bq_pos2: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 226.771653540000000000
          Width = 75.590551180000010000
          Height = 75.590551180000010000
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
          HexData = 
            '510057004500520054005900550049004F005000410053004400460047004800' +
            '4A004B004C003B00510057004500520054005900550049004F0050005A005800' +
            '4300560042004E004D002C002E004B0051005700450052005400590055004800' +
            '4A004B00'
          Zoom = 0.651642682586207000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object mem_pos8: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882194880000000000
          Top = 226.771653540000000000
          Width = 245.669291340000000000
          Height = 75.590551180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QWERTYUIOPASDFGHJKL;QWERTYUIOPZXCVBNM,.KQWERTYUHJK')
          ParentFont = False
          VAlign = vaCenter
        end
        object bq_pos8: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 377.953004880000000000
          Top = 226.771653540000000000
          Width = 75.590551180000010000
          Height = 75.590551180000010000
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
          HexData = 
            '510057004500520054005900550049004F005000410053004400460047004800' +
            '4A004B004C003B00510057004500520054005900550049004F0050005A005800' +
            '4300560042004E004D002C002E004B0051005700450052005400590055004800' +
            '4A004B00'
          Zoom = 0.651642682586207000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object mem_pos3: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267723860000000000
          Top = 377.952755910000000000
          Width = 245.669291340000000000
          Height = 75.590551180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QWERTYUIOPASDFGHJKL;QWERTYUIOPZXCVBNM,.KQWERTYUHJK')
          ParentFont = False
          VAlign = vaCenter
        end
        object bq_pos3: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 377.952755910000000000
          Width = 75.590551180000010000
          Height = 75.590551180000010000
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
          HexData = 
            '510057004500520054005900550049004F005000410053004400460047004800' +
            '4A004B004C003B00510057004500520054005900550049004F0050005A005800' +
            '4300560042004E004D002C002E004B0051005700450052005400590055004800' +
            '4A004B00'
          Zoom = 0.651642682586207000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object mem_pos9: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882194880000000000
          Top = 377.952755910000000000
          Width = 245.669291340000000000
          Height = 75.590551180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QWERTYUIOPASDFGHJKL;QWERTYUIOPZXCVBNM,.KQWERTYUHJK')
          ParentFont = False
          VAlign = vaCenter
        end
        object bq_pos9: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 377.953004880000000000
          Top = 377.952755910000000000
          Width = 75.590551180000010000
          Height = 75.590551180000010000
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
          HexData = 
            '510057004500520054005900550049004F005000410053004400460047004800' +
            '4A004B004C003B00510057004500520054005900550049004F0050005A005800' +
            '4300560042004E004D002C002E004B0051005700450052005400590055004800' +
            '4A004B00'
          Zoom = 0.651642682586207000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object mem_pos6: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047253860000000000
          Top = 831.496062990000000000
          Width = 245.669291340000000000
          Height = 75.590551180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QWERTYUIOPASDFGHJKL;QWERTYUIOPZXCVBNM,.KQWERTYUHJK')
          ParentFont = False
          VAlign = vaCenter
        end
        object bq_pos4: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 529.133858270000000000
          Width = 75.590551180000010000
          Height = 75.590551180000010000
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
          HexData = 
            '510057004500520054005900550049004F005000410053004400460047004800' +
            '4A004B004C003B00510057004500520054005900550049004F0050005A005800' +
            '4300560042004E004D002C002E004B0051005700450052005400590055004800' +
            '4A004B00'
          Zoom = 0.651642682586207000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object mem_pos10: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882194880000000000
          Top = 529.133858270000000000
          Width = 245.669291340000000000
          Height = 75.590551180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QWERTYUIOPASDFGHJKL;QWERTYUIOPZXCVBNM,.KQWERTYUHJK')
          ParentFont = False
          VAlign = vaCenter
        end
        object bq_pos10: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 377.953004880000000000
          Top = 529.133858270000000000
          Width = 75.590551180000010000
          Height = 75.590551180000010000
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
          HexData = 
            '510057004500520054005900550049004F005000410053004400460047004800' +
            '4A004B004C003B00510057004500520054005900550049004F0050005A005800' +
            '4300560042004E004D002C002E004B0051005700450052005400590055004800' +
            '4A004B00'
          Zoom = 0.651642682586207000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object mem_pos5: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267723860000000000
          Top = 680.314960630000000000
          Width = 245.669291340000000000
          Height = 75.590551180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QWERTYUIOPASDFGHJKL;QWERTYUIOPZXCVBNM,.KQWERTYUHJK')
          ParentFont = False
          VAlign = vaCenter
        end
        object bq_pos5: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 680.314960630000000000
          Width = 75.590551180000010000
          Height = 75.590551180000010000
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
          HexData = 
            '510057004500520054005900550049004F005000410053004400460047004800' +
            '4A004B004C003B00510057004500520054005900550049004F0050005A005800' +
            '4300560042004E004D002C002E004B0051005700450052005400590055004800' +
            '4A004B00'
          Zoom = 0.651642682586207000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object mem_pos11: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882194880000000000
          Top = 680.314960630000000000
          Width = 245.669291340000000000
          Height = 75.590551180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QWERTYUIOPASDFGHJKL;QWERTYUIOPZXCVBNM,.KQWERTYUHJK')
          ParentFont = False
          VAlign = vaCenter
        end
        object bq_pos11: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 377.953004880000000000
          Top = 680.314960630000000000
          Width = 75.590551180000010000
          Height = 75.590551180000010000
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
          HexData = 
            '510057004500520054005900550049004F005000410053004400460047004800' +
            '4A004B004C003B00510057004500520054005900550049004F0050005A005800' +
            '4300560042004E004D002C002E004B0051005700450052005400590055004800' +
            '4A004B00'
          Zoom = 0.651642682586207000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object mem_pos4: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047253860000000000
          Top = 529.133858270000000000
          Width = 245.669291340000000000
          Height = 75.590551180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QWERTYUIOPASDFGHJKL;QWERTYUIOPZXCVBNM,.KQWERTYUHJK')
          ParentFont = False
          VAlign = vaCenter
        end
        object bq_pos6: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 831.496062990000000000
          Width = 75.590551180000010000
          Height = 75.590551180000010000
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
          HexData = 
            '510057004500520054005900550049004F005000410053004400460047004800' +
            '4A004B004C003B00510057004500520054005900550049004F0050005A005800' +
            '4300560042004E004D002C002E004B0051005700450052005400590055004800' +
            '4A004B00'
          Zoom = 0.651642682586207000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object mem_pos12: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882194880000000000
          Top = 831.496062990000000000
          Width = 245.669291340000000000
          Height = 75.590551180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QWERTYUIOPASDFGHJKL;QWERTYUIOPZXCVBNM,.KQWERTYUHJK')
          ParentFont = False
          VAlign = vaCenter
        end
        object bq_pos12: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 377.953004880000000000
          Top = 831.496062990000000000
          Width = 75.590551180000010000
          Height = 75.590551180000010000
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
          HexData = 
            '510057004500520054005900550049004F005000410053004400460047004800' +
            '4A004B004C003B00510057004500520054005900550049004F0050005A005800' +
            '4300560042004E004D002C002E004B0051005700450052005400590055004800' +
            '4A004B00'
          Zoom = 0.651642682586207000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object memTitle: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 7.559060000000000000
          Width = 536.693260000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1060#1086#1088#1084#1072' Q-'#1082#1086#1076#1086#1074' '#1076#1083#1103' '#1074#1074#1086#1076#1072' '#1082#1086#1084#1072#1085#1076'.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PFooter: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 1024.252630000000000000
        Width = 718.110700000000000000
        object memNumberStr: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
  object frx_scripts: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxPrV
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'HP LaserJet 1018'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45015.443400532400000000
    ReportOptions.LastChange = 46066.699845682870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 75
    Top = 97
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object pageOne_q_scripts: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object rpTitle_list_q_scripts: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 944.882500000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object memData: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 7.559060000000000000
          Width = 139.842610000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mem_pos1: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771738980000000000
          Top = 83.149611180000000000
          Width = 480.000000000000000000
          Height = 162.519685039370100000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QWERTYUIOPASDFGHJKL;QWERTYUIOPZXCVBNM,.KQWERTYUHJK')
          ParentFont = False
          VAlign = vaCenter
        end
        object bq_pos1: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 15.118115120000000000
          Top = 56.692901180000000000
          Width = 188.976377950000000000
          Height = 188.976377950000000000
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
          HexData = 
            '510057004500520054005900550049004F005000410053004400460047004800' +
            '4A004B004C003B00510057004500520054005900550049004F0050005A005800' +
            '4300560042004E004D002C002E004B0051005700450052005400590055004800' +
            '4A004B00'
          Zoom = 1.629106706465517000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object mem_pos2: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771743860000000000
          Top = 309.921313540000000000
          Width = 480.000000000000000000
          Height = 162.519685039370100000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QWERTYUIOPASDFGHJKL;QWERTYUIOPZXCVBNM,.KQWERTYUHJK')
          ParentFont = False
          VAlign = vaCenter
        end
        object bq_pos2: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 283.464603540000000000
          Width = 188.976377950000000000
          Height = 188.976377950000000000
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
          HexData = 
            '510057004500520054005900550049004F005000410053004400460047004800' +
            '4A004B004C003B00510057004500520054005900550049004F0050005A005800' +
            '4300560042004E004D002C002E004B0051005700450052005400590055004800' +
            '4A004B00'
          Zoom = 1.629106706465517000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object mem_pos3: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771743860000000000
          Top = 536.693015910000000000
          Width = 480.000000000000000000
          Height = 162.519685040000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QWERTYUIOPASDFGHJKL;QWERTYUIOPZXCVBNM,.KQWERTYUHJK')
          ParentFont = False
          VAlign = vaCenter
        end
        object bq_pos3: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 510.236305910000000000
          Width = 188.976377950000000000
          Height = 188.976377950000000000
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
          HexData = 
            '510057004500520054005900550049004F005000410053004400460047004800' +
            '4A004B004C003B00510057004500520054005900550049004F0050005A005800' +
            '4300560042004E004D002C002E004B0051005700450052005400590055004800' +
            '4A004B00'
          Zoom = 1.629106706465517000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object bq_pos4: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 737.008008270000000000
          Width = 188.976377950000000000
          Height = 188.976377950000000000
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
          HexData = 
            '510057004500520054005900550049004F005000410053004400460047004800' +
            '4A004B004C003B00510057004500520054005900550049004F0050005A005800' +
            '4300560042004E004D002C002E004B0051005700450052005400590055004800' +
            '4A004B00'
          Zoom = 1.629106706465517000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object mem_pos4: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771743860000000000
          Top = 759.685188270000000000
          Width = 480.000000000000000000
          Height = 162.519685040000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QWERTYUIOPASDFGHJKL;QWERTYUIOPZXCVBNM,.KQWERTYUHJK')
          ParentFont = False
          VAlign = vaCenter
        end
        object memTitle: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 7.559060000000000000
          Width = 370.393940000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1060#1086#1088#1084#1072' Q-'#1082#1086#1076#1086#1074' '#1076#1083#1103' '#1074#1074#1086#1076#1072' '#1089#1082#1088#1080#1087#1090#1086#1074'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object memTitle_pos1: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 60.472480000000000000
          Width = 480.000310000000000000
          Height = 18.897637800000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1047#1072#1075#1086#1083#1086#1074#1086#1082' '#1089#1082#1088#1080#1087#1090#1072)
        end
        object memTitle_pos2: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 287.244280000000000000
          Width = 480.000310000000000000
          Height = 18.897637800000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1047#1072#1075#1086#1083#1086#1074#1086#1082' '#1089#1082#1088#1080#1087#1090#1072)
        end
        object memTitle_pos3: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 514.016080000000000000
          Width = 480.000310000000000000
          Height = 18.897637800000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1047#1072#1075#1086#1083#1086#1074#1086#1082' '#1089#1082#1088#1080#1087#1090#1072)
        end
        object memTitle_pos4: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 737.008350000000000000
          Width = 476.220780000000000000
          Height = 18.897637800000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1047#1072#1075#1086#1083#1086#1074#1086#1082' '#1089#1082#1088#1080#1087#1090#1072)
        end
      end
      object PFooter: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 1024.252630000000000000
        Width = 718.110700000000000000
        object memNumberStr: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
  object frx_upg_soft: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxPrV
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'HP LaserJet 1018'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44539.637803541700000000
    ReportOptions.LastChange = 46066.679172708330000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 19
    Top = 169
    Datasets = <
      item
        DataSet = fr_db_upg_soft
        DataSetName = 'frxDBDataset_upg_soft'
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
        DataSet = fr_db_upg_soft
        DataSetName = 'frxDBDataset_upg_soft'
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
          Width = 52.913385829999970000
          Height = 52.913385829999970000
          StretchMode = smActualHeight
          AutoSize = False
          BarType = bcCodeQR
          BarProperties.Encoding = qrAuto
          BarProperties.QuietZone = 0
          BarProperties.ErrorLevels = ecL
          BarProperties.PixelSize = 4
          BarProperties.CodePage = 0
          DataField = 'f_q'
          DataSet = fr_db_upg_soft
          DataSetName = 'frxDBDataset_upg_soft'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          HexData = '31003200330033003300340033003400'
          Zoom = 0.629921259880952000
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
          DataField = 'f_st'
          DataSet = fr_db_upg_soft
          DataSetName = 'frxDBDataset_upg_soft'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset_upg_soft."f_st"]')
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
          Align = baCenter
          AllowVectorExport = True
          Left = 62.362245000000000000
          Top = 3.779530000000000000
          Width = 593.386210000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1060#1086#1088#1084#1072' '#1076#1083#1103' '#1077#1076#1080#1085#1080#1095#1085#1086#1075#1086' '#1072#1087#1075#1088#1077#1081#1076#1072' '#1091#1089#1090#1088#1086#1081#1089#1090#1074)
          ParentFont = False
          VAlign = vaCenter
        end
        object memTitleCountDevice: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 37.795300000000000000
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
        object memCountDev: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 37.795300000000000000
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
  object fr_db_upg_soft: TfrxDBDataset
    UserName = 'frxDBDataset_upg_soft'
    CloseDataSource = False
    FieldAliases.Strings = (
      'f_q=f_q'
      'f_st=f_st')
    DataSet = frmShowSoft.fd_upg_soft
    BCDToCurrency = False
    Left = 19
    Top = 545
  end
end
