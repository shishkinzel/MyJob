object frmFR_Label: TfrmFR_Label
  Left = 0
  Top = 0
  Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1087#1077#1095#1072#1090#1080' '#1101#1090#1080#1082#1077#1090#1086#1082
  ClientHeight = 598
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
  object prLabel: TfrxPreview
    Left = 0
    Top = 0
    Width = 320
    Height = 598
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    FindFmVisible = False
    UseReportHints = True
    OutlineTreeSortType = dtsUnsorted
    HideScrolls = False
  end
  object frLabel_30_20: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = prLabel
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44876.450046689820000000
    ReportOptions.LastChange = 44876.450046689820000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 8
    Top = 30
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frLabel_58_40: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = prLabel
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44876.450046689820000000
    ReportOptions.LastChange = 44876.450046689820000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 56
    Top = 30
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frLabel_58_40_adv: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = prLabel
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44876.450046689820000000
    ReportOptions.LastChange = 44876.450046689820000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 88
    Top = 30
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frStic_id_40_12: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = prLabel
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = '\\Angwork_print\te200_924'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44758.573734583300000000
    ReportOptions.LastChange = 44908.426033784720000000
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
    Left = 8
    Top = 86
    Datasets = <
      item
        DataSet = frdbLabel
        DataSetName = 'dbLabel'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object PShild: TfrxReportPage
      PaperWidth = 40.000000000000000000
      PaperHeight = 12.000000000000000000
      PaperSize = 256
      Frame.Typ = []
      Frame.Width = 0.100000000000000000
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574803150000000000
        Top = 18.897650000000000000
        Width = 151.181200000000000000
        DataSet = frdbLabel
        DataSetName = 'dbLabel'
        RowCount = 0
        Stretched = True
        object bcSmall: TfrxPictureView
          Align = baCenter
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 3.779576377952756000
          Width = 143.622047244094500000
          Height = 22.677165350000000000
          Center = True
          DataField = 'id_blob_scale'
          DataSet = frdbLabel
          DataSetName = 'dbLabel'
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object dbLabelid_space: TfrxMemoView
          IndexTag = 1
          Align = baCenter
          AllowVectorExport = True
          Left = -3.779530000000000000
          Top = 22.677162910000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'id_space'
          DataSet = frdbLabel
          DataSetName = 'dbLabel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbLabel."id_space"]')
          ParentFont = False
        end
      end
    end
  end
  object frStic_mac_40_12: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = prLabel
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = '\\Angwork_print\te200_924'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44527.830455590300000000
    ReportOptions.LastChange = 44907.459239606480000000
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
    Left = 48
    Top = 86
    Datasets = <
      item
        DataSet = frdbLabel
        DataSetName = 'dbLabel'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object PageMAC: TfrxReportPage
      PaperWidth = 40.000000000000000000
      PaperHeight = 12.000000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354330710000000000
        Top = 18.897650000000000000
        Width = 151.181200000000000000
        DataSet = frdbLabel
        DataSetName = 'dbLabel'
        RowCount = 0
        object mac: TfrxMemoView
          IndexTag = 1
          Align = baCenter
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 0.944930708661417300
          Width = 149.291338582677200000
          Height = 37.795275590000000000
          StretchMode = smMaxHeight
          AutoWidth = True
          DataField = 'mac_extended'
          DataSet = frdbLabel
          DataSetName = 'dbLabel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbLabel."mac_extended"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frLabel_58_60: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = prLabel
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44876.450046689820000000
    ReportOptions.LastChange = 44876.450046689820000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 8
    Top = 142
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frLabel_100_72: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = prLabel
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44876.450046689820000000
    ReportOptions.LastChange = 44876.450046689820000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 142
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frLabel_100_150: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = prLabel
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44876.450046689820000000
    ReportOptions.LastChange = 44876.450046689820000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 96
    Top = 142
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frdbLabel: TfrxDBDataset
    UserName = 'dbLabel'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'id_blob=id_blob'
      'id_blob_scale=id_blob_scale'
      'id_space=id_space'
      'mac=mac'
      'mac_extended=mac_extended'
      '-id_mac=id_mac'
      '-id_mac_blob=id_mac_blob')
    DataSet = dbmPrintLabel.fdmtblPrint
    BCDToCurrency = False
    Left = 40
    Top = 446
  end
end
