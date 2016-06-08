object DM: TDM
  OldCreateOrder = False
  Height = 258
  Width = 389
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Server=th-NOTE\THSQL'
      'OSAuthent=Yes'
      'ApplicationName=Architect'
      'Workstation=th-note'
      'DATABASE=Lanchistema'
      'MARS=yes'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 48
    Top = 80
  end
  object FDTblControleProd: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'Lanchistema.dbo.Produto'
    TableName = 'Lanchistema.dbo.Produto'
    Left = 64
    Top = 160
    object FDTblControleProdID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTblControleProdNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 50
    end
    object FDTblControleProdDescricao: TMemoField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      BlobType = ftMemo
      Size = 2147483647
    end
    object FDTblControleProdPr_venda: TBCDField
      FieldName = 'Pr_venda'
      Origin = 'Pr_venda'
      Precision = 4
      Size = 2
    end
    object FDTblControleProdPr_custo: TBCDField
      FieldName = 'Pr_custo'
      Origin = 'Pr_custo'
      Precision = 4
      Size = 2
    end
    object FDTblControleProdData_inc: TSQLTimeStampField
      FieldName = 'Data_inc'
      Origin = 'Data_inc'
    end
    object FDTblControleProdData_alt: TSQLTimeStampField
      FieldName = 'Data_alt'
      Origin = 'Data_alt'
    end
    object FDTblControleProdQtde_real: TBCDField
      FieldName = 'Qtde_real'
      Origin = 'Qtde_real'
      Precision = 4
      Size = 2
    end
    object FDTblControleProdUnidade: TStringField
      FieldName = 'Unidade'
      Origin = 'Unidade'
      FixedChar = True
      Size = 2
    end
    object FDTblControleProdStatus: TStringField
      FieldName = 'Status'
      Origin = 'Status'
      FixedChar = True
      Size = 1
    end
    object FDTblControleProdId_categoria: TIntegerField
      FieldName = 'Id_categoria'
      Origin = 'Id_categoria'
    end
    object FDTblControleProdComp: TStringField
      FieldName = 'Comp'
      Origin = 'Comp'
      FixedChar = True
      Size = 1
    end
    object FDTblControleProdQtde_minima: TIntegerField
      FieldName = 'Qtde_minima'
      Origin = 'Qtde_minima'
    end
  end
  object FDTblCupom: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'Lanchistema.dbo.Cupom'
    TableName = 'Lanchistema.dbo.Cupom'
    Left = 240
    Top = 80
    object FDTblCupomID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTblCupomNum: TIntegerField
      FieldName = 'Num'
      Origin = 'Num'
    end
    object FDTblCupomDt_inc: TSQLTimeStampField
      FieldName = 'Dt_inc'
      Origin = 'Dt_inc'
    end
    object FDTblCupomUsado: TStringField
      FieldName = 'Usado'
      Origin = 'Usado'
      FixedChar = True
      Size = 1
    end
    object FDTblCupomflag: TStringField
      FieldName = 'flag'
      Origin = 'flag'
      FixedChar = True
      Size = 1
    end
  end
  object FDQryCupom: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from cupom')
    Left = 304
    Top = 80
  end
end
