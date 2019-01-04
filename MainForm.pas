unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, dxCoreClasses, dxHashUtils,
  dxSpreadSheetCore, dxPrinting, dxSpreadSheetCoreHistory,
  dxSpreadSheetCoreStyles, dxSpreadSheetCoreStrs,
  dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules,
  dxSpreadSheetClasses, dxSpreadSheetContainers, dxSpreadSheetFormulas,
  dxSpreadSheetHyperlinks, dxSpreadSheetFunctions, dxSpreadSheetStyles,
  dxSpreadSheetGraphics, dxSpreadSheetPrinting, dxSpreadSheetTypes,
  dxSpreadSheetUtils, dxSpreadSheetFormattedTextUtils, dxBarBuiltInMenu,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPSdxSpreadSheetLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPSCore, dxPSBaseGridLnk, cxClasses, Vcl.StdCtrls,
  dxSpreadSheet, Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    pMain: TPanel;
    mSpreadSheet: TdxSpreadSheet;
    pnTop: TPanel;
    Button1: TButton;
    Button3: TButton;
    dPrinter: TdxComponentPrinter;
    SpreadSheetLink: TdxSpreadSheetReportLnk;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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

procedure TfrmMain.Button2Click(Sender: TObject);
begin
  SpreadSheetLink.ExportToPDF;
end;

procedure TfrmMain.Button3Click(Sender: TObject);
begin
  SpreadSheetLink.Preview(True);

end;

end.

