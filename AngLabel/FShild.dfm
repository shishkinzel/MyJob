object frmShild: TfrmShild
  Left = 0
  Top = 0
  Caption = #1055#1077#1095#1072#1090#1100' '#1096#1080#1083#1100#1076#1080#1082#1072
  ClientHeight = 640
  ClientWidth = 242
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object prShild: TfrxPreview
    Left = 0
    Top = 0
    Width = 242
    Height = 640
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    FindFmVisible = False
    UseReportHints = True
    OutlineTreeSortType = dtsUnsorted
    HideScrolls = False
  end
  object rpShild: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = prShild
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = '\\Angwork_print\te200_924'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44758.573734583300000000
    ReportOptions.LastChange = 44862.676166087960000000
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
    Top = 118
    Datasets = <
      item
        DataSet = db_Shild
        DataSetName = 'db_Shild'
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
      LeftMargin = 1.000000000000000000
      RightMargin = 1.000000000000000000
      BottomMargin = 1.000000000000000000
      Frame.Typ = []
      Frame.Width = 0.100000000000000000
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574803150000000000
        Top = 18.897650000000000000
        Width = 143.622140000000000000
        DataSet = db_Shild
        DataSetName = 'db_Shild'
        RowCount = 0
        Stretched = True
        object bcSmall: TfrxPictureView
          AllowVectorExport = True
          Width = 143.622140000000000000
          Height = 18.897637795275590000
          Center = True
          DataField = 'bcBig'
          DataSet = db_Shild
          DataSetName = 'db_Shild'
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object db_Shildsn: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = 18.897637795275590000
          Width = 143.622140000000000000
          Height = 18.897640240000000000
          StretchMode = smActualHeight
          AutoWidth = True
          DataField = 'sn'
          DataSet = db_Shild
          DataSetName = 'db_Shild'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[db_Shild."sn"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object db_Shild: TfrxDBDataset
    UserName = 'db_Shild'
    CloseDataSource = False
    DataSet = frmMAC.fdmtbLabel
    BCDToCurrency = False
    Left = 56
    Top = 198
  end
end
