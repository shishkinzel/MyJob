object frmFR_Stick: TfrmFR_Stick
  Left = 0
  Top = 0
  Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1087#1077#1095#1072#1090#1080' '#1101#1090#1080#1082#1077#1090#1086#1082
  ClientHeight = 598
  ClientWidth = 253
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
    Width = 253
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
    PrintOptions.Printer = '\\printserver\TE200_908'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44757.859132928200000000
    ReportOptions.LastChange = 45233.457056643520000000
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
    Top = 94
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
    object lbSmall: TfrxReportPage
      PaperWidth = 30.000000000000000000
      PaperHeight = 20.000000000000000000
      PaperSize = 256
      Frame.Typ = []
      Frame.Width = 0.100000000000000000
      MirrorMode = []
      object mdOne: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590551181102400000
        Top = 18.897650000000000000
        Width = 113.385900000000000000
        DataSet = frdbLabSticker
        DataSetName = 'dbLabelSticker'
        RowCount = 0
        object memNameDev: TfrxMemoView
          AllowVectorExport = True
          Width = 113.385826770000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Roboto Black'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1082#1086#1084#1087#1083#1077#1082#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object BarCode1: TfrxBarCodeView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 30.236240000000000000
          Width = 105.826771650000000000
          Height = 18.897650000000000000
          AutoSize = False
          BarType = bcCode128
          DataField = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1087#1088#1086#1089#1090#1086#1081
          DataSet = frdbLabSticker
          DataSetName = 'dbLabelSticker'
          Expression = '999999999999'
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.322834645625000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ColorBar = clBlack
        end
        object mem_id: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897635350000000000
          Top = 52.913420000000000000
          Width = 90.708663860000000000
          Height = 18.897650000000000000
          DataField = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088'_'#1090#1088#1080#1072#1076#1099
          DataSet = frdbLabSticker
          DataSetName = 'dbLabelSticker'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Roboto Condensed'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbLabelSticker."'#1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088'_'#1090#1088#1080#1072#1076#1099'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object memTitleId: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 52.913420000000000000
          Width = 18.897640240000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Roboto Condensed Black'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            's/n:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object rp_Label_58x40_servece: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = prLabel
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = '\\Printserver\tlp 2824'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44757.609931226800000000
    ReportOptions.LastChange = 45449.372564942130000000
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
    Left = 176
    Top = 38
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object st_58x40_servece: TfrxReportPage
      PaperWidth = 58.000000000000000000
      PaperHeight = 40.000000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object memTitle: TfrxMemoView
        Align = baClient
        AllowVectorExport = True
        Width = 219.212740000000000000
        Height = 151.181200000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -35
        Font.Name = 'Anonymous Pro'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1048#1079#1076#1077#1083#1080#1077' '#1085#1072
          #1089#1087#1080#1089#1072#1085#1080#1077)
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object rp_Label_58x40_stick: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = prLabel
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = '\\Printserver\tlp 2824'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44757.609931226800000000
    ReportOptions.LastChange = 45449.370156944450000000
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
    Left = 176
    Top = 102
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object st_58x40_stick: TfrxReportPage
      PaperWidth = 58.000000000000000000
      PaperHeight = 40.000000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object memTitle: TfrxMemoView
        Align = baClient
        AllowVectorExport = True
        Width = 219.212740000000000000
        Height = 151.181200000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Anonymous Pro'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1069#1090#1080#1082#1077#1090#1082#1072' '#1087#1091#1089#1090#1072#1103)
        ParentFont = False
        VAlign = vaCenter
      end
    end
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
    Left = 16
    Top = 542
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
    ReportOptions.LastChange = 45035.376167824080000000
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
    Top = 470
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
          Left = 0.944930710000000000
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
          Font.Name = 'Roboto Condensed'
          Font.Style = [fsBold]
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
    Left = 136
    Top = 430
  end
  object rp_Label_43x25_stick: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = prLabel
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = '\\Printserver\te200_908'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44757.609931226800000000
    ReportOptions.LastChange = 45449.375605706020000000
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
    Left = 176
    Top = 174
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object st_43x25_stick: TfrxReportPage
      PaperWidth = 43.000000000000000000
      PaperHeight = 24.000000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object memTitle: TfrxMemoView
        Align = baClient
        AllowVectorExport = True
        Width = 162.519790000000000000
        Height = 90.708720000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Anonymous Pro'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1069#1090#1080#1082#1077#1090#1082#1072' '#1087#1091#1089#1090#1072#1103)
        ParentFont = False
        VAlign = vaCenter
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
    Left = 136
    Top = 494
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
    Left = 208
    Top = 486
  end
  object frxLabel_30_10: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = prLabel
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = '\\printserver\TE200_576'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45035.664564919000000000
    ReportOptions.LastChange = 45233.457674560190000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      
        '//       ShowMessage('#39'Hello, World'#39');                           ' +
        '        '
      '       memService.Text := '#39'1'#39';'
      '       memService.Color := clRed;'
      '       memService.Font.Color := clWhite;'
      '                  '
      'end.')
    Left = 24
    Top = 38
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object pOne: TfrxReportPage
      PaperWidth = 30.000000000000000000
      PaperHeight = 10.000000000000000000
      PaperSize = 256
      LeftMargin = 1.000000000000000000
      RightMargin = 1.000000000000000000
      TopMargin = 1.000000000000000000
      BottomMargin = 1.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      OnAfterPrint = 'pOneOnAfterPrint'
      OnBeforePrint = 'pOneOnBeforePrint'
      object mdOne: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 105.826840000000000000
        OnBeforePrint = 'mdOneOnBeforePrint'
        RowCount = 0
        object memService: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Roboto Condensed'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Number')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frp_LabService: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = prLabel
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = '\\Angwork_print\TE200_576'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44758.573734583300000000
    ReportOptions.LastChange = 45223.631373796300000000
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
    Top = 358
    Datasets = <
      item
        DataSet = fdb_LabService
        DataSetName = 'dbService'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object pLabService: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Monochrome'
      Font.Style = []
      PaperWidth = 27.000000000000000000
      PaperHeight = 9.900000000000000000
      PaperSize = 256
      LeftMargin = 0.500000000000000000
      RightMargin = 0.500000000000000000
      TopMargin = 2.000000000000000000
      BottomMargin = 0.500000000000000000
      Frame.Typ = []
      Frame.Width = 0.100000000000000000
      MirrorMode = []
      object mdText: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 98.267780000000000000
        DataSet = fdb_LabService
        DataSetName = 'dbService'
        RowCount = 0
        object memText: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          DataField = 'number'
          DataSet = fdb_LabService
          DataSetName = 'dbService'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Anonymous Pro'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbService."number"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frp_LabDate: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = prLabel
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = '\\Angwork_print\TE200_576'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44758.573734583300000000
    ReportOptions.LastChange = 45223.633492372700000000
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
    Left = 136
    Top = 302
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
        Align = baCenter
        AllowVectorExport = True
        Left = 0.000000000000000954
        Width = 98.267780000000000000
        Height = 32.692934500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Times'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '0000.00.00')
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object fdb_LabService: TfrxDBDataset
    UserName = 'dbService'
    CloseDataSource = False
    FieldAliases.Strings = (
      'number=number')
    DataSet = frmShowSoft.fdService
    BCDToCurrency = False
    Left = 208
    Top = 430
  end
  object rp_Label_40x12_stick: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = prLabel
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = '\\Printserver\te200_924'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44758.573734583300000000
    ReportOptions.LastChange = 45449.379328541670000000
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
    Left = 176
    Top = 230
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object st_40x12_stick: TfrxReportPage
      PaperWidth = 40.000000000000000000
      PaperHeight = 12.000000000000000000
      PaperSize = 256
      Frame.Typ = []
      Frame.Width = 0.100000000000000000
      MirrorMode = []
      object memTitle: TfrxMemoView
        Align = baClient
        AllowVectorExport = True
        Width = 151.181200000000000000
        Height = 45.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Anonymous Pro'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1069#1090#1080#1082#1077#1090#1082#1072' '#1087#1091#1089#1090#1072#1103)
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object frpStickCheck: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = prLabel
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46016.728985347230000000
    ReportOptions.LastChange = 46016.741144745370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 192
    Top = 360
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object pVer: TfrxReportPage
      PaperWidth = 30.000000000000000000
      PaperHeight = 10.000000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object memStickCheck: TfrxMemoView
        Align = baCenter
        AllowVectorExport = True
        Left = 5.669295000000000000
        Width = 102.047310000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          'v 3.9.18')
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
end
