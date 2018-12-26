unit uDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, cxStyles, cxClasses, System.Actions, Vcl.ActnList, Vcl.Dialogs,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.DateUtils, System.Math,
  Winapi.Windows, cxGraphics, Vcl.Styles, Vcl.SysStyles, System.UITypes, Vcl.Graphics;

type
  TDataBase = class(TDataModule)
    DataTable: TFDMemTable;
    DataTableRID: TIntegerField;
    DataTableAcctID: TIntegerField;
    DataTableTrNum: TIntegerField;
    DataTablePLId: TStringField;
    DataTableIt: TIntegerField;
    DataTablesType: TStringField;
    DataTableOC: TStringField;
    DataTableLS: TStringField;
    DataTablesCP: TStringField;
    DataTableLT: TStringField;
    DataTablewsDef: TStringField;
    DataTableNonTax: TStringField;
    DataTableNegSh: TStringField;
    DataTableOpenTr: TStringField;
    DataTableLotNum: TStringField;
    DataTableExNum: TStringField;
    DataTableABCcode: TStringField;
    DataTableMult: TIntegerField;
    DataTablePrice: TFloatField;
    DataTableComm: TFloatField;
    DataTableAmt: TFloatField;
    DataTableConv: TIntegerField;
    DataTableAdj: TFloatField;
    DataTableProf: TFloatField;
    DataTableFDate: TDateField;
    DataTableFTime: TStringField;
    DataTableWSHoldDt: TIntegerField;
    DataTableAcctName_1: TStringField;
    DataTableTaxpayerName: TStringField;
    DataTableFilename: TStringField;
    DataTableShContr: TStringField;
    dlgOpen: TOpenDialog;
  private
    procedure WriteData(ADataString: string);
    procedure ReadCSV(AFileName: string);
    procedure SetFilter;
  public
    function OpenDialog: Boolean;
  end;

var
  DataBase: TDataBase;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TDataBase.OpenDialog: Boolean;
begin
  Result:= False;
  if not dlgOpen.Execute then
    Exit
  else
  begin
    ReadCSV(dlgOpen.FileName);
    Result := True
  end;
end;

procedure TDataBase.ReadCSV(AFileName: string);
var
  List: TStringList;
  I: Integer;
begin
  List := TStringList.Create;
  try
    DataTable.Close;
    DataTable.Open;
    List.LoadFromFile(AFileName);
    for I := 1 to List.Count - 1 do
      WriteData(List[I]);
    SetFilter;
  finally
    List.Free;
  end;
end;

procedure TDataBase.SetFilter;
begin
  DataTable.IndexesActive := False;
  with DataTable.Indexes.Add do
  begin
    Name := 'OrderTrNum';
    Fields := 'TrNum';
    Active := True;
  end;
  DataTable.IndexesActive := True;
  DataTable.IndexName := 'OrderTrNum';
end;

procedure TDataBase.WriteData(ADataString: string);

  function ConvertStrtoFloat(AString: string): Double;
  begin
    if AString = '' then
      Result := 0.0
    else
      Result := StrToFloat(AString, formatSettings);
  end;

var
  A: TArray<string>;
  formatSettings: TFormatSettings;
begin
  GetLocaleFormatSettings(LOCALE_SYSTEM_DEFAULT, formatSettings);
  ADataString := StringReplace(ADataString, '"', '', [rfReplaceAll]);
  A := ADataString.Split([',']);
  with DataTable do
  begin
    try
      Append;
      FieldByName('RID').AsInteger := StrToInt(A[0]);
      FieldByName('AcctID').AsInteger := StrToInt(A[1]);
      FieldByName('TrNum').AsInteger := StrToInt(A[2]);
      FieldByName('PLId').AsString := A[3];
      FieldByName('It').AsInteger := StrToInt(A[4]);
      FieldByName('sType').AsString := A[5];
      FieldByName('OC').AsString := A[6];
      FieldByName('LS').AsString := A[7];
      FieldByName('sCP').AsString := A[8];
      FieldByName('LT').AsString := A[9];
      FieldByName('wsDef').AsString := A[10];
      FieldByName('NonTax').AsString := A[11];
      FieldByName('NegSh').AsString := A[12];
      FieldByName('OpenTr').AsString := A[13];
      FieldByName('LotNum').AsString := A[14];
      FieldByName('ExNum').AsString := A[15];
      FieldByName('ABCcode').AsString := A[16];
      FieldByName('ShContr').AsString := A[17];
      FieldByName('Mult').AsInteger := StrToInt(A[18]);
      FieldByName('Price').AsFloat := ConvertStrtoFloat(A[19]);
      FieldByName('Comm').AsFloat := ConvertStrtoFloat(A[20]);
      FieldByName('Amt').AsFloat := ConvertStrtoFloat(A[21]);
      FieldByName('Conv').AsInteger := StrToInt(A[22]);
      FieldByName('Adj').AsFloat := ConvertStrtoFloat(A[23]);
      FieldByName('Prof').AsFloat := ConvertStrtoFloat(A[24]);
      FieldByName('FDate').AsDateTime := StrToInt(A[25]);
      FieldByName('FTime').AsString := A[26];
      FieldByName('WSHoldDt').AsInteger := StrToInt(A[27]);
      FieldByName('AcctName_1').AsString := A[28];
      FieldByName('TaxpayerName').AsString := A[29] + ' ' + A[30];
      FieldByName('Filename').AsString := A[31];
    finally
      Post;
    end;
  end;

end;

end.

