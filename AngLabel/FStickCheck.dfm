object frmStickCheck: TfrmStickCheck
  Left = 0
  Top = 0
  Caption = 'frStick_check'
  ClientHeight = 800
  ClientWidth = 259
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object fpStickCheck: TfrxPreview
    Left = 0
    Top = 0
    Width = 259
    Height = 800
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    FindFmVisible = False
    UseReportHints = True
    OutlineTreeSortType = dtsUnsorted
    HideScrolls = False
    ExplicitWidth = 205
  end
  object frpStickCheck: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = fpStickCheck
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = '\\Angwork_print\TE200_576'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44758.573734583300000000
    ReportOptions.LastChange = 44979.679096296300000000
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
    Left = 16
    Top = 30
    Datasets = <
      item
        DataSet = frmShild.db_Shild
        DataSetName = 'db_Shild'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object PShild: TfrxReportPage
      PaperWidth = 32.000000000000000000
      PaperHeight = 12.000000000000000000
      PaperSize = 256
      LeftMargin = 1.000000000000000000
      RightMargin = 1.000000000000000000
      TopMargin = 1.000000000000000000
      BottomMargin = 1.000000000000000000
      Frame.Typ = []
      Frame.Width = 0.100000000000000000
      MirrorMode = []
      object memStickCheck: TfrxMemoView
        Align = baCenter
        AllowVectorExport = True
        ShiftMode = smDontShift
        Top = 7.559055118110236000
        Width = 113.385900000000000000
        Height = 37.795300000000000000
        StretchMode = smActualHeight
        AutoWidth = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -23
        Font.Name = 'Roboto'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          'v 03.08.15')
        ParentFont = False
        WordWrap = False
        VAlign = vaCenter
      end
    end
  end
  object rpLabService: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = fpStickCheck
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = '\\Angwork_print\TE200_576'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44758.573734583300000000
    ReportOptions.LastChange = 45378.736032500000000000
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
    Left = 32
    Top = 110
    Datasets = <
      item
        DataSet = frdbService
        DataSetName = 'frxService'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object pLabService: TfrxReportPage
      PaperWidth = 27.000000000000000000
      PaperHeight = 9.900000000000000000
      PaperSize = 256
      LeftMargin = 0.500000000000000000
      RightMargin = 0.500000000000000000
      TopMargin = 0.500000000000000000
      BottomMargin = 0.500000000000000000
      Frame.Typ = []
      Frame.Width = 0.100000000000000000
      MirrorMode = []
      object mData: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236220472440940000
        Top = 18.897650000000000000
        Width = 98.267780000000000000
        DataSet = frdbService
        DataSetName = 'frxService'
        RowCount = 0
        object frxServicenumber: TfrxMemoView
          IndexTag = 1
          Align = baClient
          AllowVectorExport = True
          Width = 98.267780000000000000
          Height = 30.236220472440940000
          StretchMode = smMaxHeight
          AutoWidth = True
          DataField = 'number'
          DataSet = frdbService
          DataSetName = 'frxService'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxService."number"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frdbService: TfrxDBDataset
    UserName = 'frxService'
    CloseDataSource = False
    DataSet = frmMAC.fdService
    BCDToCurrency = False
    Left = 16
    Top = 174
  end
  object rpLabDate: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = fpStickCheck
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = '\\Angwork_print\TE200_576'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44758.573734583300000000
    ReportOptions.LastChange = 45223.628925891200000000
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
    Left = 88
    Top = 94
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object pLabDate: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Times'
      Font.Style = []
      PaperWidth = 27.000000000000000000
      PaperHeight = 9.900000000000000000
      PaperSize = 256
      LeftMargin = 0.500000000000000000
      RightMargin = 0.500000000000000000
      TopMargin = 0.750000000000000000
      BottomMargin = 0.500000000000000000
      Frame.Typ = []
      Frame.Width = 0.100000000000000000
      MirrorMode = []
      object memDate: TfrxMemoView
        Align = baClient
        AllowVectorExport = True
        Width = 98.267780000000000000
        Height = 32.692934500000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Monochrome'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '0000.00.00')
        ParentFont = False
        WordWrap = False
        VAlign = vaCenter
      end
    end
  end
  object frpWrite_off: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = fpStickCheck
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = '\\Printserver\tlp 2824'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44757.609931226800000000
    ReportOptions.LastChange = 45427.699309456020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 152
    Top = 46
    Datasets = <
      item
        DataSetName = 'dbLabel'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object labWrite_off: TfrxReportPage
      PaperWidth = 56.000000000000000000
      PaperHeight = 40.000000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object memWrite_off: TfrxMemoView
        AllowVectorExport = True
        Left = 15.118120000000000000
        Top = 11.338590000000000000
        Width = 188.976500000000000000
        Height = 124.724490000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -40
        Font.Name = 'Anonymous Pro'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1053#1072
          #1057#1087#1080#1089#1072#1085#1080#1077)
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
end
