object DataBase: TDataBase
  OldCreateOrder = False
  Height = 393
  Width = 491
  object DataTable: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'RID'
        DataType = ftInteger
      end
      item
        Name = 'AcctID'
        DataType = ftInteger
      end
      item
        Name = 'TrNum'
        DataType = ftInteger
      end
      item
        Name = 'It'
        DataType = ftInteger
      end
      item
        Name = 'sType'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'OC'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'LS'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'sCP'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'LT'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'wsDef'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NonTax'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NegSh'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'OpenTr'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'LotNum'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ExNum'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ABCcode'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Mult'
        DataType = ftInteger
      end
      item
        Name = 'Price'
        DataType = ftFloat
      end
      item
        Name = 'Comm'
        DataType = ftFloat
      end
      item
        Name = 'Amt'
        DataType = ftFloat
      end
      item
        Name = 'Conv'
        DataType = ftInteger
      end
      item
        Name = 'Adj'
        DataType = ftFloat
      end
      item
        Name = 'Prof'
        DataType = ftFloat
      end
      item
        Name = 'FDate'
        DataType = ftDate
      end
      item
        Name = 'FTime'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'WSHoldDt'
        DataType = ftInteger
      end
      item
        Name = 'AcctName_1'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'TaxpayerName'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Filename'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'ShContr'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 347
    Top = 50
    object DataTableRID: TIntegerField
      FieldName = 'RID'
    end
    object DataTableAcctID: TIntegerField
      FieldName = 'AcctID'
    end
    object DataTableTrNum: TIntegerField
      FieldName = 'TrNum'
    end
    object DataTablePLId: TStringField
      FieldKind = fkCalculated
      FieldName = 'PLId'
      Size = 50
      Calculated = True
    end
    object DataTableIt: TIntegerField
      FieldName = 'It'
    end
    object DataTablesType: TStringField
      FieldName = 'sType'
      Size = 50
    end
    object DataTableOC: TStringField
      FieldName = 'OC'
      Size = 50
    end
    object DataTableLS: TStringField
      FieldName = 'LS'
      Size = 50
    end
    object DataTablesCP: TStringField
      FieldName = 'sCP'
      Size = 50
    end
    object DataTableLT: TStringField
      FieldName = 'LT'
      Size = 50
    end
    object DataTablewsDef: TStringField
      FieldName = 'wsDef'
      Size = 50
    end
    object DataTableNonTax: TStringField
      FieldName = 'NonTax'
      Size = 50
    end
    object DataTableNegSh: TStringField
      FieldName = 'NegSh'
      Size = 50
    end
    object DataTableOpenTr: TStringField
      FieldName = 'OpenTr'
      Size = 50
    end
    object DataTableLotNum: TStringField
      FieldName = 'LotNum'
      Size = 100
    end
    object DataTableExNum: TStringField
      FieldName = 'ExNum'
      Size = 100
    end
    object DataTableABCcode: TStringField
      FieldName = 'ABCcode'
      Size = 100
    end
    object DataTableMult: TIntegerField
      FieldName = 'Mult'
    end
    object DataTablePrice: TFloatField
      FieldName = 'Price'
    end
    object DataTableComm: TFloatField
      FieldName = 'Comm'
    end
    object DataTableAmt: TFloatField
      FieldName = 'Amt'
    end
    object DataTableConv: TIntegerField
      FieldName = 'Conv'
    end
    object DataTableAdj: TFloatField
      FieldName = 'Adj'
    end
    object DataTableProf: TFloatField
      FieldName = 'Prof'
    end
    object DataTableFDate: TDateField
      FieldName = 'FDate'
    end
    object DataTableFTime: TStringField
      FieldName = 'FTime'
      Size = 150
    end
    object DataTableWSHoldDt: TIntegerField
      FieldName = 'WSHoldDt'
    end
    object DataTableAcctName_1: TStringField
      FieldName = 'AcctName_1'
      Size = 255
    end
    object DataTableTaxpayerName: TStringField
      FieldName = 'TaxpayerName'
      Size = 255
    end
    object DataTableFilename: TStringField
      FieldName = 'Filename'
      Size = 150
    end
    object DataTableShContr: TStringField
      FieldName = 'ShContr'
      Size = 100
    end
  end
  object dlgOpen: TOpenDialog
    Filter = '*.csv|*.CSV'
    Left = 427
    Top = 50
  end
end
