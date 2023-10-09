object frmFR_List: TfrmFR_List
  Left = 0
  Top = 0
  Caption = #1054#1090#1095#1077#1090' '#1076#1083#1103' '#1082#1086#1084#1072#1085#1076#1085#1086#1081' '#1089#1090#1088#1086#1082#1080
  ClientHeight = 761
  ClientWidth = 883
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
    Width = 883
    Height = 761
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
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45015.443400532400000000
    ReportOptions.LastChange = 45198.631282395800000000
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
      object rpTitle: TfrxReportTitle
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
        object bcPlace: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 396.850650000000000000
          Width = 151.181102360000200000
          Height = 151.181102360000200000
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
          Zoom = 1.799775028095240000
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
    Top = 198
  end
  object frxRe_adv: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45015.443400532400000000
    ReportOptions.LastChange = 45208.454669884260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 16
    Top = 94
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
      object rpTitle: TfrxReportTitle
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
          Top = 90.708720000000000000
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
          Top = 79.370130000000000000
          Width = 50.400000000000000000
          Height = 50.400000000000000000
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
        object memTitle_python: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 166.299320000000000000
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
          Top = 170.078850000000000000
          Width = 60.000000000000000000
          Height = 60.000000000000000000
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
          Top = 298.582870000000000000
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
          Top = 268.346630000000000000
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
          Top = 268.346630000000000000
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
          Top = 298.582870000000000000
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
          Top = 79.370130000000000000
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
          Top = 185.196970000000000000
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
          Top = 90.708720000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
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
          Top = 204.094620000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
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
          Top = 778.583180000000000000
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
          Top = 778.583180000000000000
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
          Left = 151.181200000000000000
          Top = 789.921770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
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
          Left = 566.929500000000000000
          Top = 789.921770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
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
end
