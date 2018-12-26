unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, dxCoreClasses, dxHashUtils,
  dxSpreadSheetCore, dxSpreadSheetCoreHistory, dxSpreadSheetCoreStyles,
  dxSpreadSheetCoreStrs, dxSpreadSheetConditionalFormatting,
  dxSpreadSheetConditionalFormattingRules, dxSpreadSheetClasses,
  dxSpreadSheetContainers, dxSpreadSheetFormulas,
  dxSpreadSheetFunctions, dxSpreadSheetStyles, dxSpreadSheetGraphics,
  dxSpreadSheetPrinting, dxSpreadSheetTypes, dxSpreadSheetUtils,
  dxSpreadSheetFormattedTextUtils, System.Actions, Vcl.ActnList,
  dxSpreadSheet, dxSpreadSheetConditionalFormattingRulesActions,
  dxSpreadSheetHyperlinks, dxBarBuiltInMenu, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPSdxSpreadSheetLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPSCore, dxPSBaseGridLnk, cxClasses, Vcl.StdCtrls, Vcl.ExtCtrls, dxPgsDlg,
  Vcl.OleServer, Excel2000, dxPrnDlg, dxGDIPlusAPI, dxGDIPlusClasses,
  dxRichEdit.NativeApi, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxRichEdit.Control.SpellChecker,
  dxRichEdit.Dialogs.EventArgs, dxHttpIndyRequest, dxRibbonSkins,
  dxRibbonCustomizationForm, cxFontNameComboBox, cxDropDownEdit,
  dxRichEdit.Actions, dxActions, dxPrinting, dxBar, dxRibbon, cxBarEditItem,
  dxRibbonColorGallery, System.ImageList, Vcl.ImgList, cxImageList,
  dxRichEdit.Platform.Win.Control, dxRichEdit.Control.Core;

type
  TfrmMain = class(TForm)
    pMain: TPanel;
    mSpreadSheet: TdxSpreadSheet;
    pnTop: TPanel;
    Button1: TButton;
    Button3: TButton;
    dPrinter: TdxComponentPrinter;
    SpreadSheetLink: TdxSpreadSheetReportLnk;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation
uses
  uReport;
{$R *.dfm}


{ TfrmMain }

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  uReport.TReport.CreateReport(mSpreadSheet, SpreadSheetLink);
end;

procedure TfrmMain.Button3Click(Sender: TObject);
begin
//test
  SpreadSheetLink.Print(True);
end;

end.

