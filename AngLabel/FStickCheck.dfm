object frmStickCheck: TfrmStickCheck
  Left = 0
  Top = 0
  Caption = 'frStick_check'
  ClientHeight = 800
  ClientWidth = 205
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
    Width = 205
    Height = 800
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    FindFmVisible = False
    UseReportHints = True
    OutlineTreeSortType = dtsUnsorted
    HideScrolls = False
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
    ReportOptions.LastChange = 44903.432846875000000000
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
    Top = 118
    Datasets = <
      item
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
        Width = 113.385900000000000000
        Height = 37.795300000000000000
        StretchMode = smMaxHeight
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
end