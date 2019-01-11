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
    object pnTop: TPanel
      Left = 1
      Top = 1
      Width = 1166
      Height = 40
      Align = alTop
      TabOrder = 0
      object Button1: TButton
        Left = 24
        Top = 9
        Width = 113
        Height = 25
        Caption = 'Import CSV'
        TabOrder = 0
        OnClick = Button1Click
      end
    end
  end
  object frx: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43475.977706099490000000
    ReportOptions.LastChange = 43476.579490914350000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      'begin'
      ''
      'end.')
    Left = 48
    Top = 72
    Datasets = <
      item
        DataSet = frxData
        DataSetName = 'frxData'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object MainReport: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'MainReportOnBeforePrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 154.960730000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 1.779530000000000000
          Width = 222.992270000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fashion Detail Report')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 1.779530000000000000
          Top = 30.236240000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Design Payer')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 1.779530000000000000
          Top = 49.133889999999990000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Filename')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 548.031850000000000000
          Width = 94.488250000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tax Year')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 1.779530000000000000
          Top = 68.031540000000010000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Accounts')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 1.779530000000000000
          Top = 86.929190000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Filter')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 117.165430000000000000
          Top = 30.236240000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxData."TaxpayerName"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 117.165430000000000000
          Top = 49.133889999999990000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxData."Filename"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 117.165430000000000000
          Top = 68.031540000000010000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxData."AcctName_1"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 117.165430000000000000
          Top = 86.929190000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 551.031850000000000000
          Top = 68.031540000000010000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Date Run')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 551.031850000000000000
          Top = 86.929190000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Page')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 615.283860000000000000
          Top = 68.031540000000010000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 615.283860000000000000
          Top = 86.929190000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#] of [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo15: TfrxMemoView
          Left = 4.559060000000000000
          Top = 132.283550000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ID')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 52.913420000000000000
          Top = 132.283550000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Date')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 128.504020000000000000
          Top = 132.283550000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'O/C')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 185.196970000000000000
          Top = 132.283550000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'L/S')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 241.889920000000000000
          Top = 132.283550000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Ticket')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 317.260050000000000000
          Top = 132.283550000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Sh/Contr')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 410.968770000000000000
          Top = 132.283550000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Price')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 486.559370000000000000
          Top = 132.283550000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Comm')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 562.149970000000000000
          Top = 132.283550000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Amount')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 637.740570000000000000
          Top = 132.283550000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Profit')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.BottomLine.Width = 1.500000000000000000
        Height = 26.456710000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        DataSet = frxData
        DataSetName = 'frxData'
        RowCount = 0
        object Memo26: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000022000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          DataSet = frxData
          DataSetName = 'frxData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxData."TrNum"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 52.133890000000000000
          Top = 3.779530000000022000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'FDate'
          DataSet = frxData
          DataSetName = 'frxData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxData."FDate"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 127.724490000000000000
          Top = 3.779530000000022000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'OC'
          DataSet = frxData
          DataSetName = 'frxData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxData."OC"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 184.417440000000000000
          Top = 3.779530000000022000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          DataField = 'LS'
          DataSet = frxData
          DataSetName = 'frxData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxData."LS"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 241.110390000000000000
          Top = 3.779530000000022000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'sType'
          DataSet = frxData
          DataSetName = 'frxData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxData."sType"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 317.260050000000000000
          Top = 3.779530000000022000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxData
          DataSetName = 'frxData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Round(StrToFloat(<frxData."ShContr">))]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 410.189240000000000000
          Top = 3.779530000000022000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataSet = frxData
          DataSetName = 'frxData'
          DisplayFormat.FormatStr = '$##0.00;($##0.00)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxData."Price"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 485.779840000000000000
          Top = 3.779530000000022000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataSet = frxData
          DataSetName = 'frxData'
          DisplayFormat.FormatStr = '$##0.00;($##0.00)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxData."Comm"]')
          ParentFont = False
        end
        object mAmount: TfrxMemoView
          Left = 561.370440000000000000
          Top = 3.779530000000022000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataSet = frxData
          DataSetName = 'frxData'
          DisplayFormat.FormatStr = '$##0.00;($##0.00)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxData."Amt"]')
          ParentFont = False
          Highlights = <
            item
              ApplyFill = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = 'Value < 0'
              FillType = ftBrush
            end
            item
              ApplyFont = False
              ApplyFill = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = 'Value = 0'
              FillType = ftBrush
              Visible = False
            end>
        end
        object mProfit: TfrxMemoView
          Left = 636.961040000000000000
          Top = 3.779530000000022000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataSet = frxData
          DataSetName = 'frxData'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '$##0.00;($##0.00)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxData."Prof"]')
          ParentFont = False
          Highlights = <
            item
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = 'Value < 0'
              FillType = ftBrush
            end
            item
              ApplyFont = False
              ApplyFill = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = 'Value = 0'
              FillType = ftBrush
              Visible = False
            end>
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        Condition = 'frxData."TrNum"'
        KeepTogether = True
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = [ftTop]
        Frame.TopLine.Width = 1.500000000000000000
        Height = 34.015770000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        object Memo38: TfrxMemoView
          Left = 222.992270000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          Memo.UTF8W = (
            'Open Sh/Contr')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 319.149815000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[MAX(Round(StrToFloat(<frxData."ShContr">)),MasterData1)]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 540.472790000000000000
          Width = 98.267731180000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Design #[frxData."TrNum"] P/L')
          ParentFont = False
        end
        object mGroupSumProfit: TfrxMemoView
          Left = 638.740570000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '$##0.00;($##0.00)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxData."Prof">,MasterData1)]')
          ParentFont = False
          Highlights = <
            item
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Condition = 'Value < 0'
              FillType = ftBrush
            end
            item
              ApplyFont = False
              ApplyFill = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = 'Value = 0'
              FillType = ftBrush
              Visible = False
            end>
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 423.307360000000000000
        Width = 718.110700000000000000
        object Memo25: TfrxMemoView
          Left = 415.748300000000000000
          Top = 15.118119999999920000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTALS')
          ParentFont = False
        end
        object mSumAmount: TfrxMemoView
          Left = 566.929499999999900000
          Top = 15.118119999999980000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '$##0.00;($##0.00)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxData."Amt">,MasterData1)]')
          ParentFont = False
          Highlights = <
            item
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Condition = 'Value < 0'
              FillType = ftBrush
            end
            item
              ApplyFont = False
              ApplyFill = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = 'Value = 0'
              FillType = ftBrush
              Visible = False
            end>
        end
        object mSumProfit: TfrxMemoView
          Left = 642.520100000000000000
          Top = 15.118119999999980000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '$##0.00;($##0.00)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxData."Prof">,MasterData1)]')
          ParentFont = False
          Highlights = <
            item
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Condition = 'Value < 0'
              FillType = ftBrush
            end
            item
              ApplyFont = False
              ApplyFill = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = 'Value = 0'
              FillType = ftBrush
              Visible = False
            end>
        end
      end
    end
  end
  object frxData: TfrxDBDataset
    UserName = 'frxData'
    CloseDataSource = False
    FieldAliases.Strings = (
      'RID=RID'
      'AcctID=AcctID'
      'TrNum=TrNum'
      'PLId=PLId'
      'It=It'
      'sType=sType'
      'OC=OC'
      'LS=LS'
      'sCP=sCP'
      'LT=LT'
      'wsDef=wsDef'
      'NonTax=NonTax'
      'NegSh=NegSh'
      'OpenTr=OpenTr'
      'LotNum=LotNum'
      'ExNum=ExNum'
      'ABCcode=ABCcode'
      'Mult=Mult'
      'Price=Price'
      'Comm=Comm'
      'Amt=Amt'
      'Conv=Conv'
      'Adj=Adj'
      'Prof=Prof'
      'FDate=FDate'
      'FTime=FTime'
      'WSHoldDt=WSHoldDt'
      'AcctName_1=AcctName_1'
      'TaxpayerName=TaxpayerName'
      'Filename=Filename'
      'ShContr=ShContr')
    DataSet = DataBase.DataTable
    BCDToCurrency = False
    Left = 48
    Top = 152
  end
  object frxPDF: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 160
    Top = 72
  end
end
