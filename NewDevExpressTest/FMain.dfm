object frmDevExpressTest: TfrmDevExpressTest
  Left = 0
  Top = 0
  Caption = 'frmDevExpressTest'
  ClientHeight = 480
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 640
    Height = 60
    ApplicationButton.Menu = dxRibbonBackstageView1
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2016Tablet
    ColorSchemeName = 'Colorful'
    QuickAccessToolbar.Toolbar = dxBarManager1Bar1
    SupportNonClientDrawing = True
    Contexts = <>
    TabAreaToolbar.Toolbar = dxBarManager1Bar2
    TabOrder = 0
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'dxRibbon1Tab1'
      Groups = <>
      Index = 0
    end
  end
  object dxRibbonBackstageView1: TdxRibbonBackstageView
    Left = 8
    Top = 166
    Width = 577
    Height = 266
    Buttons = <>
    Ribbon = dxRibbon1
    object dxRibbonBackstageViewTabSheet1: TdxRibbonBackstageViewTabSheet
      Left = 132
      Top = 0
      Active = True
      Caption = 'Recent'
      DesignSize = (
        445
        266)
      object dxRibbonBackstageViewGalleryControl1: TdxRibbonBackstageViewGalleryControl
        Left = 12
        Top = 44
        Width = 300
        Height = 208
        Anchors = [akLeft, akTop, akBottom]
        BorderStyle = cxcbsNone
        OptionsView.ColumnAutoWidth = True
        OptionsView.ColumnCount = 1
        OptionsView.ContentOffset.All = 0
        OptionsView.Item.Text.AlignHorz = taLeftJustify
        OptionsView.Item.Text.AlignVert = vaCenter
        OptionsView.Item.Text.Position = posRight
        OptionsView.Item.PinMode = bgipmTag
        Ribbon = dxRibbon1
        TabOrder = 0
        object dxRibbonBackstageViewGalleryControl1Group1: TdxRibbonBackstageViewGalleryGroup
          ShowCaption = False
          object dxRibbonBackstageViewGalleryControl1Group1Item1: TdxRibbonBackstageViewGalleryItem
            Caption = 'New Item'
            Description = 'New Item Description'
            ActionIndex = nil
          end
        end
      end
      object cxLabel1: TcxLabel
        Left = 12
        Top = 12
        AutoSize = False
        Caption = 'Recent Documents'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TransparentBorder = False
        Style.IsFontAssigned = True
        Properties.LineOptions.Alignment = cxllaBottom
        Properties.LineOptions.Visible = True
        Transparent = True
        Height = 26
        Width = 300
      end
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 457
    Width = 640
    Height = 23
    Color = clBtnFace
    Panels = <>
    Ribbon = dxRibbon1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 568
    Top = 8
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Quick Access Toolbar'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      Caption = 'Tab Area Toolbar'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cxBarEditItem1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'Text Edit Item'
      Category = 0
      Visible = ivAlways
      PropertiesClassName = 'TcxTextEditProperties'
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013LightGray'
    Left = 536
    Top = 8
  end
end
