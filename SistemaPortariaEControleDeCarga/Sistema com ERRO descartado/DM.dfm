object DMUNT: TDMUNT
  OldCreateOrder = False
  Height = 666
  Width = 901
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=c4rl05212121;Persist Security Info=' +
      'True;User ID=sa;Initial Catalog=PQSilicas;Data Source=10.20.48.1' +
      '07\sqlexpress'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 144
    Top = 8
  end
  object ADODSCOLAB: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from COLABORADOR'
    Parameters = <>
    Left = 64
    Top = 128
    object ADODSCOLABCODIGO: TAutoIncField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object ADODSCOLABNOME: TStringField
      FieldName = 'NOME'
      Size = 35
    end
    object ADODSCOLABCPF: TStringField
      FieldName = 'CPF'
      EditMask = '000.000.000-00;0;_'
      Size = 14
    end
    object ADODSCOLABRG: TStringField
      FieldName = 'RG'
    end
    object ADODSCOLABCNH: TStringField
      FieldName = 'CNH'
    end
    object ADODSCOLABDATAVALIDCNH: TStringField
      FieldName = 'DATAVALIDCNH'
      EditMask = '99/!99/0000;0;_'
      Size = 10
    end
    object ADODSCOLABSIT: TStringField
      FieldName = 'SIT'
      Size = 10
    end
    object ADODSCOLABNOMEPRESTADORA: TStringField
      FieldName = 'NOMEPRESTADORA'
      Size = 35
    end
    object ADODSCOLABCONTATOINTERNO: TMemoField
      FieldName = 'CONTATOINTERNO'
      BlobType = ftMemo
    end
    object ADODSCOLABRESPONSAVELPORTARIA: TStringField
      FieldName = 'RESPONSAVELPORTARIA'
      Size = 35
    end
    object ADODSCOLABSITDATE: TStringField
      FieldName = 'SITDATE'
      Size = 15
    end
    object ADODSCOLABSITTIME: TStringField
      FieldName = 'SITTIME'
      Size = 15
    end
    object ADODSCOLABRAMAL: TStringField
      FieldName = 'RAMAL'
      EditMask = '!99999;0;_'
      Size = 5
    end
    object ADODSCOLABCARGO: TStringField
      FieldName = 'CARGO'
      Size = 22
    end
  end
  object ADODSFLUXO: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from FLUXO'
    Parameters = <>
    Left = 56
    Top = 184
    object ADODSFLUXOCOD_COLAB: TIntegerField
      FieldName = 'COD_COLAB'
    end
    object ADODSFLUXODATAFLUXO: TStringField
      FieldName = 'DATAFLUXO'
      EditMask = '99/!99/0000;1;_'
      Size = 10
    end
    object ADODSFLUXOHORAFLUXO: TStringField
      FieldName = 'HORAFLUXO'
      EditMask = '!90:00:00;1;_'
      Size = 10
    end
    object ADODSFLUXOSAIDAouENTRADA: TStringField
      FieldName = 'SAIDAouENTRADA'
      Size = 10
    end
    object ADODSFLUXOFKNCRACHA: TStringField
      FieldName = 'FKNCRACHA'
      Size = 15
    end
  end
  object DSCOLAB: TDataSource
    DataSet = ADODSCOLAB
    Left = 160
    Top = 128
  end
  object DSFLUXO: TDataSource
    DataSet = ADODSFLUXO
    Left = 160
    Top = 192
  end
  object ADODSCARGADESCARGA: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from CARGAOUDESCARGA '
    Parameters = <>
    Left = 48
    Top = 256
    object ADODSCARGADESCARGACODCARGAOUDESCARGA: TAutoIncField
      DisplayWidth = 29
      FieldName = 'CODCARGAOUDESCARGA'
      ReadOnly = True
    end
    object ADODSCARGADESCARGAPLACAFK: TStringField
      DisplayWidth = 10
      FieldName = 'PLACAFK'
      EditMask = 'LLL-0000;1;_'
      Size = 8
    end
    object ADODSCARGADESCARGACODIGOCOLABFK: TIntegerField
      DisplayWidth = 17
      FieldName = 'CODIGOCOLABFK'
    end
    object ADODSCARGADESCARGADATAENTRADA: TStringField
      DisplayWidth = 18
      FieldName = 'DATAENTRADA'
      Size = 15
    end
    object ADODSCARGADESCARGAHORAENTRADA: TStringField
      DisplayWidth = 18
      FieldName = 'HORAENTRADA'
      Size = 15
    end
    object ADODSCARGADESCARGADATASAIDA: TStringField
      DisplayWidth = 18
      FieldName = 'DATASAIDA'
      Size = 15
    end
    object ADODSCARGADESCARGAHORASAIDA: TStringField
      DisplayWidth = 18
      FieldName = 'HORASAIDA'
      Size = 15
    end
    object ADODSCARGADESCARGATIPO: TStringField
      DisplayWidth = 12
      FieldName = 'TIPO'
      Size = 10
    end
    object ADODSCARGADESCARGANUMNFE: TStringField
      DisplayWidth = 18
      FieldName = 'NUMNFE'
      Size = 15
    end
    object ADODSCARGADESCARGANUMLACRE: TStringField
      DisplayWidth = 24
      FieldName = 'NUMLACRE'
    end
    object ADODSCARGADESCARGAPESONFE: TStringField
      DisplayWidth = 24
      FieldName = 'PESONFE'
    end
    object ADODSCARGADESCARGAPESOBALANCAENTRADA: TFloatField
      DisplayWidth = 24
      FieldName = 'PESOBALANCAENTRADA'
    end
    object ADODSCARGADESCARGAPESOBALANCASAIDA: TFloatField
      DisplayWidth = 21
      FieldName = 'PESOBALANCASAIDA'
    end
    object ADODSCARGADESCARGAPRODUTO: TStringField
      DisplayWidth = 60
      FieldName = 'PRODUTO'
      Size = 50
    end
    object ADODSCARGADESCARGAPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object ADODSCARGADESCARGAcolabnome: TStringField
      FieldKind = fkLookup
      FieldName = 'colabnome'
      LookupDataSet = ADODSCOLAB
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGOCOLABFK'
      Size = 35
      Lookup = True
    end
    object ADODSCARGADESCARGAtransportadora: TStringField
      FieldKind = fkLookup
      FieldName = 'transportadora'
      LookupDataSet = ADODSCAMINHAO
      LookupKeyFields = 'PLACA'
      LookupResultField = 'TRANSPORTADORA'
      KeyFields = 'PLACAFK'
      Size = 15
      Lookup = True
    end
  end
  object ADODSCAMINHAO: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from CAMINHAO'
    Parameters = <>
    Left = 48
    Top = 320
    object ADODSCAMINHAOPLACA: TStringField
      FieldName = 'PLACA'
      EditMask = '!LLL-0000;1;_'
      Size = 8
    end
    object ADODSCAMINHAOMODELO: TStringField
      FieldName = 'MODELO'
      Size = 15
    end
    object ADODSCAMINHAOSIT: TStringField
      FieldName = 'SIT'
      Size = 7
    end
    object ADODSCAMINHAOTRANSPORTADORA: TStringField
      FieldName = 'TRANSPORTADORA'
      Size = 25
    end
  end
  object DSCARGADESCARGA: TDataSource
    DataSet = ADODSCARGADESCARGA
    Left = 160
    Top = 256
  end
  object DSCAMINHAO: TDataSource
    DataSet = ADODSCAMINHAO
    Left = 160
    Top = 320
  end
  object updpessoa: TDataSource
    DataSet = ADODSUPDpessoa
    Left = 354
    Top = 37
  end
  object updmotorista: TDataSource
    DataSet = ADODSUPMOTORISTA
    Left = 354
    Top = 93
  end
  object updcaminhao: TDataSource
    DataSet = ADODSUPDCAMINHAO
    Left = 354
    Top = 157
  end
  object ADODSUPDCAMINHAO: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'select count(CAMINHAO.SIT) from CAMINHAO where CAMINHAO.SIT='#39'ENT' +
      'RADA'#39' '#13#10#13#10#13#10
    Parameters = <>
    Left = 458
    Top = 165
    object IntegerField2: TIntegerField
      FieldName = 'COLUMN1'
      ReadOnly = True
    end
  end
  object ADODSUPMOTORISTA: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'select count(colaborador.SIT) from COLABORADOR where COLABORADOR' +
      '.SIT='#39'ENTRADA'#39' AND CARGO = '#39'MOTORISTA-DE-CAMINHAO'#39#13#10#13#10#13#10
    Parameters = <>
    Left = 458
    Top = 101
    object IntegerField1: TIntegerField
      FieldName = 'COLUMN1'
      ReadOnly = True
    end
  end
  object ADODSUPDpessoa: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'select count(colaborador.SIT) from COLABORADOR where COLABORADOR' +
      '.SIT='#39'ENTRADA'#39' AND CARGO<>'#39'MOTORISTA-DE-CAMINHAO'#39#13#10#13#10#13#10
    Parameters = <>
    Left = 458
    Top = 37
    object ADODSUPDpessoaCOLUMN1: TIntegerField
      FieldName = 'COLUMN1'
      ReadOnly = True
    end
  end
  object adodscracha: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from CRACHA'
    Parameters = <>
    Left = 48
    Top = 392
    object adodscrachaNCRACHA: TStringField
      FieldName = 'NCRACHA'
      Size = 15
    end
    object adodscrachaDISPONIBILIDADE: TWideStringField
      FieldName = 'DISPONIBILIDADE'
      FixedChar = True
      Size = 15
    end
    object adodscrachaCODCOLABCRACHA: TIntegerField
      FieldName = 'CODCOLABCRACHA'
    end
  end
  object DSCRACHA: TDataSource
    DataSet = adodscracha
    Left = 152
    Top = 400
  end
  object ADODSCONTROLEDEINTEGRACAO: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from CONTROLEDEINTEGRACAO'
    Parameters = <>
    Left = 360
    Top = 328
    object ADODSCONTROLEDEINTEGRACAONOME_INSTRUTOR: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME_INSTRUTOR'
      LookupDataSet = ADODSINSTRUTOR
      LookupKeyFields = 'COD_INSTRUTOR'
      LookupResultField = 'NOME_INSTRUTOR'
      KeyFields = 'FK_INSTRUTOR_COD'
      Size = 35
      Lookup = True
    end
    object ADODSCONTROLEDEINTEGRACAONOME_EMPRESA: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME_EMPRESA'
      LookupDataSet = ADODSEMPRESA
      LookupKeyFields = 'COD_EMPRESA'
      LookupResultField = 'NOME_EMPRESA'
      KeyFields = 'FK_COD_EMPRESA'
      Size = 35
      Lookup = True
    end
    object ADODSCONTROLEDEINTEGRACAONOME_COLABORADOR: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME_COLABORADOR'
      LookupDataSet = ADODSCOLAB
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'FK_COLAB_CODCOLAB'
      Size = 35
      Lookup = True
    end
    object ADODSCONTROLEDEINTEGRACAOordem: TAutoIncField
      FieldName = 'ordem'
      ReadOnly = True
    end
    object ADODSCONTROLEDEINTEGRACAODATAINTEGRA_DIA: TIntegerField
      FieldName = 'DATAINTEGRA_DIA'
    end
    object ADODSCONTROLEDEINTEGRACAODATAINTEGRA_MES: TIntegerField
      FieldName = 'DATAINTEGRA_MES'
    end
    object ADODSCONTROLEDEINTEGRACAODATAINTEGRA_ANO: TIntegerField
      FieldName = 'DATAINTEGRA_ANO'
    end
    object ADODSCONTROLEDEINTEGRACAOFK_INSTRUTOR_COD: TIntegerField
      FieldName = 'FK_INSTRUTOR_COD'
    end
    object ADODSCONTROLEDEINTEGRACAOFK_COD_EMPRESA: TIntegerField
      FieldName = 'FK_COD_EMPRESA'
    end
    object ADODSCONTROLEDEINTEGRACAOFK_COLAB_CODCOLAB: TIntegerField
      FieldName = 'FK_COLAB_CODCOLAB'
    end
    object ADODSCONTROLEDEINTEGRACAOASO_DATA_DIA: TIntegerField
      FieldName = 'ASO_DATA_DIA'
    end
    object ADODSCONTROLEDEINTEGRACAOASO_DATA_MES: TIntegerField
      FieldName = 'ASO_DATA_MES'
    end
    object ADODSCONTROLEDEINTEGRACAOASO_DATA_ANO: TIntegerField
      FieldName = 'ASO_DATA_ANO'
    end
    object ADODSCONTROLEDEINTEGRACAOVALIDADE_ASO_DATA_DIA: TIntegerField
      FieldName = 'VALIDADE_ASO_DATA_DIA'
    end
    object ADODSCONTROLEDEINTEGRACAOVALIDADE_ASO_DATA_MES: TIntegerField
      FieldName = 'VALIDADE_ASO_DATA_MES'
    end
    object ADODSCONTROLEDEINTEGRACAOVALIDADE_ASO_DATA_ANO: TIntegerField
      FieldName = 'VALIDADE_ASO_DATA_ANO'
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC1: TStringField
      FieldName = 'NR_OPC1'
      Size = 5
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC2: TStringField
      FieldName = 'NR_OPC2'
      Size = 5
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC3: TStringField
      FieldName = 'NR_OPC3'
      Size = 5
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC4: TStringField
      FieldName = 'NR_OPC4'
      Size = 5
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC5: TStringField
      FieldName = 'NR_OPC5'
      Size = 5
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC6: TStringField
      FieldName = 'NR_OPC6'
      Size = 5
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC1_DATA_DIA: TIntegerField
      FieldName = 'NR_OPC1_DATA_DIA'
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC2_DATA_DIA: TIntegerField
      FieldName = 'NR_OPC2_DATA_DIA'
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC3_DATA_DIA: TIntegerField
      FieldName = 'NR_OPC3_DATA_DIA'
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC4_DATA_DIA: TIntegerField
      FieldName = 'NR_OPC4_DATA_DIA'
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC5_DATA_DIA: TIntegerField
      FieldName = 'NR_OPC5_DATA_DIA'
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC6_DATA_DIA: TIntegerField
      FieldName = 'NR_OPC6_DATA_DIA'
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC1_DATA_MES: TIntegerField
      FieldName = 'NR_OPC1_DATA_MES'
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC2_DATA_MES: TIntegerField
      FieldName = 'NR_OPC2_DATA_MES'
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC3_DATA_MES: TIntegerField
      FieldName = 'NR_OPC3_DATA_MES'
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC4_DATA_MES: TIntegerField
      FieldName = 'NR_OPC4_DATA_MES'
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC5_DATA_MES: TIntegerField
      FieldName = 'NR_OPC5_DATA_MES'
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC6_DATA_MES: TIntegerField
      FieldName = 'NR_OPC6_DATA_MES'
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC1_DATA_ANO: TIntegerField
      FieldName = 'NR_OPC1_DATA_ANO'
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC2_DATA_ANO: TIntegerField
      FieldName = 'NR_OPC2_DATA_ANO'
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC3_DATA_ANO: TIntegerField
      FieldName = 'NR_OPC3_DATA_ANO'
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC4_DATA_ANO: TIntegerField
      FieldName = 'NR_OPC4_DATA_ANO'
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC5_DATA_ANO: TIntegerField
      FieldName = 'NR_OPC5_DATA_ANO'
    end
    object ADODSCONTROLEDEINTEGRACAONR_OPC6_DATA_ANO: TIntegerField
      FieldName = 'NR_OPC6_DATA_ANO'
    end
    object ADODSCONTROLEDEINTEGRACAOOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
  end
  object ADODSINSTRUTOR: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from INSTRUTOR'
    Parameters = <>
    Left = 360
    Top = 400
    object ADODSINSTRUTORCOD_INSTRUTOR: TIntegerField
      FieldName = 'COD_INSTRUTOR'
    end
    object ADODSINSTRUTORNOME_INSTRUTOR: TStringField
      FieldName = 'NOME_INSTRUTOR'
      Size = 35
    end
  end
  object DSCONTROLINTEGRACAO: TDataSource
    DataSet = ADODSCONTROLEDEINTEGRACAO
    Left = 528
    Top = 328
  end
  object DSINSTRUTOR: TDataSource
    DataSet = ADODSINSTRUTOR
    Left = 536
    Top = 384
  end
  object ADODSEMPRESA: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from EMPRESA'
    Parameters = <>
    Left = 360
    Top = 456
    object ADODSEMPRESACOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object ADODSEMPRESANOME_EMPRESA: TStringField
      FieldName = 'NOME_EMPRESA'
      Size = 35
    end
  end
  object DSEMPRESA: TDataSource
    DataSet = ADODSEMPRESA
    Left = 528
    Top = 448
  end
end
