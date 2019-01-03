object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Main Application'
  ClientHeight = 628
  ClientWidth = 1168
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object pMain: TPanel
    Left = 0
    Top = 0
    Width = 1168
    Height = 628
    Align = alClient
    TabOrder = 0
    object mSpreadSheet: TdxSpreadSheet
      Left = 1
      Top = 41
      Width = 1166
      Height = 586
      Align = alClient
      OptionsView.GridLineColor = clMedGray
      OptionsView.GridLines = False
      ExplicitLeft = 2
      Data = {
        D701000044585353763242460B00000042465320000000000000000000000101
        010100000000000001004246532000000000424653200200000001000000200B
        00000007000000430061006C0069006200720069000000000000002000000020
        00000000200000000020000000002000000000200007000000470045004E0045
        00520041004C0000000000000200000000000000000101000000200B00000007
        000000430061006C006900620072006900000000000000200000002000000000
        200000000020000000002000000000200007000000470045004E004500520041
        004C000000000000020000000000000000014246532001000000424653201700
        0000540064007800530070007200650061006400530068006500650074005400
        610062006C006500560069006500770006000000530068006500650074003100
        01FFFFFFFFFFFFFFFF6400000002000000020000000200000055000000140000
        0002000000020000000002000000000000010000000000010100004246532055
        0000000000000042465320000000004246532014000000000000004246532000
        0000000000000000000000010000000000000000000000000000000000000042
        465320000000000000000000000000424653200000000000000000}
    end
    object pnTop: TPanel
      Left = 1
      Top = 1
      Width = 1166
      Height = 40
      Align = alTop
      TabOrder = 1
      object Button1: TButton
        Left = 24
        Top = 9
        Width = 113
        Height = 25
        Caption = 'Import CSV'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button3: TButton
        Left = 150
        Top = 9
        Width = 113
        Height = 25
        Caption = 'Print Report'
        TabOrder = 1
        OnClick = Button3Click
      end
    end
  end
  object dPrinter: TdxComponentPrinter
    CurrentLink = SpreadSheetLink
    ExplorerStubLink = SpreadSheetLink
    Options = [cpoAutoRebuildBeforePreview, cpoGenerateReportProgressEvent, cpoShowHourGlass, cpoDropStorageModeAfterPreview]
    Version = 0
    Left = 328
    Top = 88
    PixelsPerInch = 96
    object SpreadSheetLink: TdxSpreadSheetReportLnk
      Active = True
      Component = mSpreadSheet
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 35000
      PrinterPage.PageHeader.Font.Charset = ANSI_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -15
      PrinterPage.PageHeader.Font.Name = 'Calibri'
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageHeader.LeftTextAlignY = taTop
      PrinterPage.PageHeader.LeftTitle.Strings = (
        'Fashion Detail Report')
      PrinterPage.PageHeader.RightTextAlignY = taTop
      PrinterPage.PageHeader.RightTitle.Strings = (
        'Tax Year'
        ''
        ''
        'Date Run: [Date Printed]'
        'Page: [Page # of Pages #]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 43468.747325243060000000
      ReportTitle.Font.Charset = ANSI_CHARSET
      ReportTitle.Font.Color = clBlack
      ReportTitle.Font.Height = -15
      ReportTitle.Font.Name = 'Calibri'
      ReportTitle.Font.Style = [fsBold, fsUnderline]
      ReportTitle.Mode = tmNone
      ReportTitle.TextAlignY = taTop
      ReportTitle.Transparent = False
      ShrinkToPageWidth = True
      Color = clBtnFace
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      OptionsView = []
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
end
