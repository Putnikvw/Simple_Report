unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, dxCoreClasses, dxHashUtils,
  frxClass, frxExportPDF, frxDBSet, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    pMain: TPanel;
    pnTop: TPanel;
    Button1: TButton;
    frx: TfrxReport;
    frxData: TfrxDBDataset;
    frxPDF: TfrxPDFExport;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  uFastReport, uDataModule;
{$R *.dfm}


{ TfrmMain }

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  uFastReport.TFReport.CreateReport(frx);
end;


end.

