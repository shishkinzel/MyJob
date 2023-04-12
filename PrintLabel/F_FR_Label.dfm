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
    Left = 168
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
    Left = 256
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
    ReportOptions.LastChange = 45028.702041412030000000
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
    Left = 40
    Top = 150
    Datasets = <
      item
        DataSet = frdbLabSticker
        DataSetName = 'dbLabelSticker'
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
      object mdOne: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354330710000000000
        Top = 18.897650000000000000
        Width = 151.181200000000000000
        DataSet = frdbLabSticker
        DataSetName = 'dbLabelSticker'
        RowCount = 0
        Stretched = True
        object mem_id: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929133858270000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088'_'#1090#1088#1080#1072#1076#1099
          DataSet = frdbLabSticker
          DataSetName = 'dbLabelSticker'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Roboto Black'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbLabelSticker."'#1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088'_'#1090#1088#1080#1072#1076#1099'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object bcOne: TfrxBarCodeView
          AllowVectorExport = True
          Left = 16.692950000000000000
          Top = 3.779527559055119000
          Width = 117.795300000000000000
          Height = 18.897650000000000000
          AutoSize = False
          BarType = bcCode128
          DataField = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1087#1088#1086#1089#1090#1086#1081
          DataSet = frdbLabSticker
          DataSetName = 'dbLabelSticker'
          Expression = '999999999999'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.472441250000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ColorBar = clBlack
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
    ReportOptions.LastChange = 45028.716874918980000000
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
    Left = 160
    Top = 150
    Datasets = <
      item
        DataSet = frdbLabSticker
        DataSetName = 'dbLabelSticker'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object PageMAC: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
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
        DataSet = frdbLabSticker
        DataSetName = 'dbLabelSticker'
        RowCount = 0
        object mac: TfrxMemoView
          IndexTag = 1
          Align = baCenter
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 0.944930709999994200
          Width = 149.291338580000000000
          Height = 37.795275590000000000
          StretchMode = smMaxHeight
          AutoWidth = True
          DataField = #1056#1072#1089#1096#1080#1088#1077#1085#1099#1081' mac-'#1072#1076#1088#1077#1089
          DataSet = frdbLabSticker
          DataSetName = 'dbLabelSticker'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Roboto Condensed Black'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbLabelSticker."'#1056#1072#1089#1096#1080#1088#1077#1085#1099#1081' mac-'#1072#1076#1088#1077#1089'"]')
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
    Left = 24
    Top = 214
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
    Left = 112
    Top = 214
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
    Left = 200
    Top = 214
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
    Left = 24
    Top = 326
  end
  object frLabel_43_25: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = prLabel
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = '\\Angwork_print\te200_908'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44757.609931226800000000
    ReportOptions.LastChange = 45028.680801909720000000
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
    Top = 30
    Datasets = <
      item
        DataSet = frdbLabSimple
        DataSetName = 'dbLabelSimple'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object lb_43_25: TfrxReportPage
      PaperWidth = 43.000000000000000000
      PaperHeight = 24.000000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object mdOne: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 90.708661420000000000
        Top = 18.897650000000000000
        Width = 162.519790000000000000
        DataSet = frdbLabSimple
        DataSetName = 'dbLabelSimple'
        RowCount = 0
        object memTitleid: TfrxMemoView
          AllowVectorExport = True
          Left = 5.669291340000000000
          Top = 56.023614720000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            's/n:')
          ParentFont = False
          VAlign = vaCenter
        end
        object memMac: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889761340000000000
          Top = 72.811021180000000000
          Width = 28.346456690000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'mac:')
          ParentFont = False
          VAlign = vaCenter
        end
        object bcOne: TfrxBarCodeView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 30.236227800000000000
          Top = 34.015770000000010000
          Width = 128.503939450000000000
          Height = 18.897650000000000000
          AutoSize = False
          BarType = bcCode128
          DataField = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1087#1088#1086#1089#1090#1086#1081
          DataSet = frdbLabSimple
          DataSetName = 'dbLabelSimple'
          Expression = '999999999999'
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.606299243125000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ColorBar = clBlack
        end
        object mem_id: TfrxMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 53.913420000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          DataField = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088'_'#1090#1088#1080#1072#1076#1099
          DataSet = frdbLabSimple
          DataSetName = 'dbLabelSimple'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbLabelSimple."'#1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088'_'#1090#1088#1080#1072#1076#1099'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mem_mac: TfrxMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 71.031540000000010000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          DataField = #1056#1072#1089#1096#1080#1088#1077#1085#1099#1081' mac-'#1072#1076#1088#1077#1089
          DataSet = frdbLabSimple
          DataSetName = 'dbLabelSimple'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbLabelSimple."'#1056#1072#1089#1096#1080#1088#1077#1085#1099#1081' mac-'#1072#1076#1088#1077#1089'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object memNameDev: TfrxMemoView
          AllowVectorExport = True
          Width = 162.519790000000000000
          Height = 32.125984250000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072)
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frdbLabSimple: TfrxDBDataset
    UserName = 'dbLabelSimple'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id='#1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1087#1088#1086#1089#1090#1086#1081
      '-id_blob=id_blob'
      '-id_blob_scale=id_blob_scale'
      'id_space='#1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088'_'#1090#1088#1080#1072#1076#1099
      '-mac=mac'
      'mac_extended='#1056#1072#1089#1096#1080#1088#1077#1085#1099#1081' mac-'#1072#1076#1088#1077#1089
      '-id_mac=id_mac'
      '-id_mac_blob=id_mac_blob')
    DataSet = dbmPrintLabel.fdmtblPrint
    BCDToCurrency = False
    Left = 88
    Top = 326
  end
  object frdbLabSticker: TfrxDBDataset
    UserName = 'dbLabelSticker'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id='#1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1087#1088#1086#1089#1090#1086#1081
      '-id_blob=id_blob'
      '-id_blob_scale=id_blob_scale'
      'id_space='#1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088'_'#1090#1088#1080#1072#1076#1099
      '-mac=mac'
      'mac_extended='#1056#1072#1089#1096#1080#1088#1077#1085#1099#1081' mac-'#1072#1076#1088#1077#1089
      '-id_mac=id_mac'
      '-id_mac_blob=id_mac_blob')
    DataSet = dbmPrintLabel.fdmtblPrint
    BCDToCurrency = False
    Left = 184
    Top = 334
  end
end
