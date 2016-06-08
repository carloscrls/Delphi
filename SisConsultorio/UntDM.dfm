object DM: TDM
  OldCreateOrder = False
  Height = 285
  Width = 424
  object FDConnection1: TFDConnection
    Params.Strings = (
      'SERVER=NC02-06\SQLEXPRESS'
      'OSAuthent=Yes'
      'ApplicationName=Enterprise/Architect/Ultimate'
      'Workstation=NC02-PROF'
      'MARS=yes'
      'DATABASE=CONSULTORIO'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 72
    Top = 104
  end
  object FDConnectionWeb: TFDConnection
    Params.Strings = (
      'Database=consultorio'
      'User_Name=root'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 296
    Top = 24
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Program Files\EasyPHP-Devserver-16.1\eds-binaries\dbserver\my' +
      'sql5710x160202085350\lib\libmysql.dll'
    Left = 296
    Top = 96
  end
  object FDTblEstoque: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'CONSULTORIO.dbo.Medicamento'
    TableName = 'CONSULTORIO.dbo.Medicamento'
    Left = 72
    Top = 176
    object FDTblEstoqueID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTblEstoqueDATA_INC: TSQLTimeStampField
      FieldName = 'DATA_INC'
      Origin = 'DATA_INC'
    end
    object FDTblEstoqueDATA_ALT: TSQLTimeStampField
      FieldName = 'DATA_ALT'
      Origin = 'DATA_ALT'
    end
    object FDTblEstoqueSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object FDTblEstoqueMED_NOME: TStringField
      FieldName = 'MED_NOME'
      Origin = 'MED_NOME'
      Size = 50
    end
    object FDTblEstoqueMED_VALOR_CUSTO: TBCDField
      FieldName = 'MED_VALOR_CUSTO'
      Origin = 'MED_VALOR_CUSTO'
      Precision = 18
      Size = 2
    end
    object FDTblEstoqueMED_VALOR_VENDA: TBCDField
      FieldName = 'MED_VALOR_VENDA'
      Origin = 'MED_VALOR_VENDA'
      Precision = 18
      Size = 2
    end
    object FDTblEstoqueMED_QTDE_ESTOQUE: TBCDField
      FieldName = 'MED_QTDE_ESTOQUE'
      Origin = 'MED_QTDE_ESTOQUE'
      Precision = 18
      Size = 2
    end
    object FDTblEstoqueMED_QTDE_MINIMA: TBCDField
      FieldName = 'MED_QTDE_MINIMA'
      Origin = 'MED_QTDE_MINIMA'
      Precision = 18
      Size = 2
    end
    object FDTblEstoqueMED_ID_LABORATORIO: TIntegerField
      FieldName = 'MED_ID_LABORATORIO'
      Origin = 'MED_ID_LABORATORIO'
    end
  end
end
