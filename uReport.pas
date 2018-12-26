unit uReport;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, cxStyles, cxClasses, System.Actions, Vcl.ActnList, Vcl.Dialogs,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.DateUtils, System.Math,
  Winapi.Windows, cxGraphics, Vcl.Styles, Vcl.SysStyles, System.UITypes, Vcl.Graphics,
  dxSpreadSheetCore, dxSpreadSheetCoreHistory, dxSpreadSheetCoreStyles,
  dxSpreadSheetStyles, dxSpreadSheetGraphics,
  dxSpreadSheet, dxPSdxSpreadSheetLnk, dxPSCore, dxPrnPg;

type
  TReport = class(TObject)
  private
    FSheet: TdxSpreadSheet;
    FDesignPayer: string;
    FFileName: string;
    FAccount: string;
    FGroupTotal: Double;
    FGrandTotal: Double;
    FCount: Integer;
    FPrint: TdxSpreadSheetReportLnk;
    procedure PrepareBook;
    procedure CreateReportStructure;
    procedure AddDatatoSheet(AData: TFDMemTable);
    procedure RepeatHeader(var AStepRow: integer);
    procedure GroupUnderline(var ARow: integer; AIndex: integer; AShContr: Double);
    procedure CreateGroupTotal(ARow: Integer; AID: Integer; AShContr: Double);
    procedure CountPages;
    procedure GetMaxShContr(var AValue1: Double; AValue2: string);
    procedure SetCellAlign(ACell: TdxSpreadSheetCell; AStyle: TdxSpreadSheetDataAlignHorz);
    procedure FillSheet(ASheet: TdxSpreadSheet; APrint: TdxSpreadSheetReportLnk);
    procedure InitProperty;
    property  DesignPayer: string read FDesignPayer write FDesignPayer;
    property  FileName: string  read FFileName write FFileName;
    property  Account: string read  FAccount write FAccount;
    property  GroupTotal: Double read   FGroupTotal write FGroupTotal;
    property  GrandTotal: Double read FGrandTotal write FGrandTotal;
  protected
    constructor Create(ASheet: TdxSpreadSheet; APrint: TdxSpreadSheetReportLnk);
  public
    class procedure CreateReport(ASheet: TdxSpreadSheet; APrint: TdxSpreadSheetReportLnk);
end;

implementation
uses
  uDataModule;

class procedure TReport.CreateReport(ASheet: TdxSpreadSheet; APrint: TdxSpreadSheetReportLnk);
begin
  Create(ASheet, APrint);
end;

procedure TReport.CountPages;
const
  ColIndex = 8;
  CellText = 'Page';
var
  I, PageCount: Integer;
begin
  with FSheet.ActiveSheetAsTable do
  begin
    PageCount := 1;
    for I := 0 to Rows.Count - 1 do
    begin
      if Columns.Items[ColIndex].Cells[I] <> nil then
      begin
        if CellText = Columns.Items[ColIndex].Cells[I].AsString then
        begin
          Columns.Items[ColIndex + 1].CreateCell(I).SetText(IntToStr(PageCount) + ' of ' + IntToStr(FCount));
          Columns.Items[ColIndex + 1].Cells[I].Style.AlignHorz := ssahRight;
          Inc(PageCount, 1);
        end;
      end;
    end;
  end;
end;

constructor TReport.Create(ASheet: TdxSpreadSheet; APrint: TdxSpreadSheetReportLnk);
begin
  if DataBase.OpenDialog then
    FillSheet(ASheet, APrint)
  else
    Exit;
end;

procedure TReport.CreateGroupTotal(ARow: Integer; AID: Integer; AShContr: Double);
var
  C: TdxSpreadSheetCell;
  I: Integer;
begin
  with FSheet.ActiveSheetAsTable do
  begin
    for I := 0 to 9 do
    begin
      C := CreateCell(ARow, I);
      C.Style.Borders[bTop].Style := sscbsMedium;
      if I = 4 then
      begin
        C.SetText('Open Sh/Contr');
        C.Style.AlignHorz := ssahCenter;
        MergedCells.Add(Rect(3, ARow, 4, ARow));
        CreateCell(ARow, 5).AsFloat := AShContr;
      end;
      if I = 8 then
        C.SetText('Design #' + IntToStr(AID) + ' P/L');
      if I = 9 then
      begin
        CreateCell(Arow, I).AsFloat := RoundTo(GroupTotal, -2);
        if GroupTotal < 0 then
          Cells[ARow, I].Style.Font.Color := $000F0FFF;
        GroupTotal := 0;
      end;
    end;
  end;
end;

procedure TReport.AddDatatoSheet(AData: TFDMemTable);
  procedure GranTotal(ARow: Integer; AGrandTotal: Double);
  const
    ColumnIndex =  6;
  begin
    with FSheet.ActiveSheetAsTable do
    begin
      CreateCell(ARow, ColumnIndex).SetText('TOTALS');
      CreateCell(ARow, ColumnIndex + 2).AsFloat := RoundTo(AGrandTotal, -2);
      Cells[ARow, ColumnIndex + 2].Style.Font.Style := [fsBold];
      Cells[ARow, ColumnIndex].Style.Font.Style := [fsBold];
    end;

  end;
var
  Cell: TdxSpreadSheetCell;
  J, I, GIndex: Integer;
  ShContr: Double;
  ColumnList: TArray<string>;
begin
  ColumnList := ['TrNum', 'FDate', 'OC', 'LS', 'sType', 'ShContr', 'Price', 'Comm', 'Amt', 'Prof'];
  AData.DisableControls;
  try
    with AData do
    begin
      InitProperty;
      First;
      GIndex := FieldByName(ColumnList[0]).AsInteger;
      J := 2;
      ShContr := 0;
      while not Eof do
      begin
        with FSheet.ActiveSheetAsTable do
        begin
          if (GIndex <> FieldByName(ColumnList[0]).AsInteger) then
          begin
            GroupUnderline(J, GIndex, ShContr);
            GIndex := FieldByName(ColumnList[0]).AsInteger;
//            RepeatHeader(J);
            ShContr := 0;
          end;
          for I := 0 to Length(ColumnList) - 1 do
          begin
            Cell := CreateCell(J, I);
            if I > 5 then
            begin
              Cell.AsFloat := RoundTo(FieldByName(ColumnList[I]).AsFloat, -2);
              if Cell.AsFloat < 0 then
                Cell.Style.Font.Color := $000F0FFF;
            end
            else
              Cell.AsVariant := FieldByName(ColumnList[I]).Value;
            if I = 0 then
              SetCellAlign(Cell, ssahCenter)
            else
              SetCellAlign(Cell, ssahRight);
            GetMaxShContr(ShContr, FieldByName(ColumnList[5]).Value)
          end;
        end;
        GroupTotal := GroupTotal + FieldByName('Prof').AsFloat;
        GrandTotal := GrandTotal + FieldByName('Amt').AsFloat;
        Inc(J, 1);
        Next;
      end;
      GroupUnderline(J, GIndex, ShContr);
    end;
    GranTotal(J, GrandTotal);
    CountPages;
  finally
    AData.EnableControls;
  end;
end;

procedure TReport.CreateReportStructure;

  procedure CreateReportHeader(AColumn_1, AColumn_2, AColumn_3: Integer; ARow: integer; AYear: string);
  const
    SizeofHeader = 16;
    SizeofSubHeader = 8;
    TableRowStart = 0;
  var
    Cell: TdxSpreadSheetCell;
    Text, SubText, TableHeader, SubTextData: TArray<string>;
    Col: TArray<integer>;
    I, J: Integer;
  begin
    Col := [AColumn_1, AColumn_2, AColumn_3];
    Text := ['Fashion Detail Report', 'Tax Year', AYear];
    SubText := ['Design Payer', 'FileName', 'Accounts:', 'Filter', 'DateRun', 'Page'];
    TableHeader := ['ID', 'Date', 'O/C', 'L/S', 'Ticket', 'Sh/Contr', 'Price', 'Comm', 'Amount', 'Profit'];
    SubTextData := [DesignPayer, FileName, Account];
    with FSheet.ActiveSheetAsTable do
    begin
      {
      for I := 0 to Length(Text) - 1 do
      begin
        Cell := CreateCell(ARow, Col[I]);
        Cell.Style.Font.Size := SizeofHeader;
        Cell.Style.Font.Style := [fsBold];
        Cell.SetText(Text[I]);
      end;

      for I := ARow to (ARow + Length(SubText) - 1) do
      begin
        if I < ARow + 4 then
          Cell := CreateCell(I + 1, 0)
        else
          Cell := CreateCell(I - 1, 8);
        Cell.Style.Font.Style := [fsBold];
        J := I - ARow;
        Cell.SetText(SubText[J]);
      end;

      for I := 0 to Length(SubTextData) - 1 do
        CreateCell(ARow + I + 1, 1).SetText(SubTextData[I]);
                      }
      for I := 0 to Length(TableHeader) - 1 do
      begin
        Cell := CreateCell(ARow + TableRowStart, I);
        Cell.Style.Borders[bTop].Style := sscbsMedium;
        Cell.Style.Borders[bBottom].Style := sscbsMedium;
        Cell.SetText(TableHeader[I]);
        Cell.Style.Font.Style := [fsBold];
        if I = 0 then
          SetCellAlign(Cell, ssahCenter)
        else
          SetCellAlign(Cell, ssahRight);
      end;
      CreateCell(ARow + 3, 9).AsDateTime := DateOf(Now);
    end;
  end;
var
  RowIndex: Integer;
begin
  RowIndex :=  FSheet.ActiveSheetAsTable.Rows.Count;
  CreateReportHeader(0, 8, 9, RowIndex + 1, '');
end;

procedure TReport.FillSheet(ASheet: TdxSpreadSheet; APrint: TdxSpreadSheetReportLnk);

  procedure AddDatatoReportTitle(AData: TFDMemTable);
  begin
    DesignPayer := AData.FieldByName('TaxpayerName').AsString;
    FileName    := AData.FieldByName('Filename').AsString;
    Account     := AData.FieldByName('AcctName_1').AsString;
  end;

  procedure SetPrintVisible;
  begin
//    with FSheet.ActiveSheetAsTable.OptionsPrint do
//    begin
//      Page.FitToWidth := 1;
////      Pagination.RowPageBreaks.Add(1);
////      Pagination.RowPageBreaks.Add(2);
////      Pagination.RowPageBreaks.Add(3);
////      Pagination.RowPageBreaks.Add(4);
////      Pagination.RowPageBreaks.Add(5);
//      Pagination.ColumnPageBreaks.Add(9);
//    end;
    with FPrint.PrinterPage do
    begin
      PageHeader.Titles[tpLeft].Add('Design Payer: ' + DesignPayer);
      PageHeader.Titles[tpLeft].Add('Filename: ' + FileName);
      PageHeader.Titles[tpLeft].Add('Accounts: ' + Account);
      PageHeader.Titles[tpLeft].Add('Filter: ');
    end;
  end;

begin
  FSheet := ASheet;
  FPrint := APrint;
  PrepareBook;
  FSheet.BeginUpdate;
  try
    FCount := 1;
    AddDatatoReportTitle(DataBase.DataTable);
    CreateReportStructure;
    AddDatatoSheet(DataBase.DataTable);
    SetPrintVisible;
  finally
    FSheet.EndUpdate
  end;
end;

procedure TReport.GetMaxShContr(var AValue1: Double; AValue2: string);
var
  Temp: Double;
begin
  Temp := StrToFloat(AValue2);
  if Temp > AValue1 then
    AValue1 := RoundTo(Temp, 0);
end;

procedure TReport.GroupUnderline(var ARow: integer; AIndex: integer; AShContr: Double);
begin
  CreateGroupTotal(ARow, AIndex, AShContr);
  Inc(ARow, 2);
end;

procedure TReport.InitProperty;
begin
  GroupTotal := 0;
  GrandTotal := 0;
end;

procedure TReport.PrepareBook;
begin
  FSheet.ClearAll;
  FSheet.OptionsView.GridLines := True;
  FSheet.OptionsView.GridLineColor := clWhite;
  FSheet.AddSheet('Sheet1');
end;

procedure TReport.RepeatHeader(var AStepRow: integer);
const
  SheetRows = 46;
begin
  with FSheet.ActiveSheetAsTable do
  begin
    if (Rows.Count >= (FCount * SheetRows)) and (Rows.Count >= (FCount * SheetRows - 5)) then
    begin
      CreateReportStructure;
      Inc(FCount, 1);
      Inc(AStepRow, 7);
    end
    else
      Exit;
  end;
end;

procedure TReport.SetCellAlign(ACell: TdxSpreadSheetCell; AStyle: TdxSpreadSheetDataAlignHorz);
begin
  ACell.Style.AlignHorz := AStyle;
end;

end.

