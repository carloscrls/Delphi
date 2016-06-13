object frmREMODULADAcargadescarga: TfrmREMODULADAcargadescarga
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'CARGA E DESCARGA'
  ClientHeight = 374
  ClientWidth = 916
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBtnText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object NOME: TPanel
    Left = 0
    Top = 0
    Width = 916
    Height = 59
    Align = alTop
    Caption = 'CARGA E DESCARGA '
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object PNLBOTOES: TPanel
    Left = 0
    Top = 59
    Width = 916
    Height = 90
    Align = alTop
    Color = clBackground
    ParentBackground = False
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 17
      Top = 16
      Width = 151
      Height = 49
      Caption = 'REGISTRAR ENTRADA'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 255
      Top = 16
      Width = 151
      Height = 49
      Caption = 'REGISTRAR PESO ENTRADA'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 730
      Top = 16
      Width = 151
      Height = 49
      Caption = 'REGISTRAR SAIDA'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 506
      Top = 16
      Width = 151
      Height = 49
      Caption = 'REGISTRAR PESO SAIDA'
      TabOrder = 3
      OnClick = BitBtn4Click
    end
  end
  object PNLCADASTRO: TPanel
    Left = 0
    Top = 268
    Width = 916
    Height = 106
    Align = alClient
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    Visible = False
    object Label5: TLabel
      Left = 248
      Top = 133
      Width = 96
      Height = 16
      Caption = 'DATA ENTRADA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label4: TLabel
      Left = 187
      Top = 40
      Width = 77
      Height = 16
      Caption = 'MOTORISTA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label6: TLabel
      Left = 187
      Top = 18
      Width = 122
      Height = 16
      Caption = 'CARGAouDESCARGA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label7: TLabel
      Left = 267
      Top = 183
      Width = 77
      Height = 16
      Caption = 'DATA SAIDA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label8: TLabel
      Left = 266
      Top = 206
      Width = 78
      Height = 16
      Caption = 'HORA SAIDA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label9: TLabel
      Left = 187
      Top = 97
      Width = 60
      Height = 16
      Caption = 'N'#176' LACRE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label10: TLabel
      Left = 506
      Top = 181
      Width = 45
      Height = 16
      Caption = 'N'#176' NFE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label11: TLabel
      Left = 449
      Top = 74
      Width = 95
      Height = 16
      Caption = 'PESO ENTRADA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label12: TLabel
      Left = 467
      Top = 99
      Width = 76
      Height = 16
      Caption = 'PESO SAIDA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label13: TLabel
      Left = 469
      Top = 155
      Width = 81
      Height = 16
      Caption = 'PESO NFE KG:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label14: TLabel
      Left = 187
      Top = 69
      Width = 62
      Height = 16
      Caption = 'PRODUTO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label3: TLabel
      Left = 476
      Top = 20
      Width = 42
      Height = 16
      Caption = 'PLACA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label15: TLabel
      Left = 478
      Top = 126
      Width = 72
      Height = 16
      Caption = 'PESO LQDO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label2: TLabel
      Left = 247
      Top = 155
      Width = 97
      Height = 16
      Caption = 'HORA ENTRADA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object DBEdit3: TDBEdit
      Left = 350
      Top = 130
      Width = 74
      Height = 21
      Hint = 'Data da entrada'
      BevelInner = bvLowered
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'DATAENTRADA'
      DataSource = DMUNT.DSCARGADESCARGA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object CADASTRARCAM: TBitBtn
      Left = 626
      Top = 13
      Width = 127
      Height = 23
      Hint = 'CASO NAO TENHA ENCONTRADO AO LADO CADASTRE A PESSOA'
      Caption = 'Cadastrar Caminh'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = CADASTRARCAMClick
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 270
      Top = 42
      Width = 350
      Height = 21
      Hint = 'Escolha o Motorista de caminh'#227'o cadastrado'
      BiDiMode = bdLeftToRight
      Color = 3881787
      DataField = 'CODIGOCOLABFK'
      DataSource = DMUNT.DSCARGADESCARGA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = DSMOTORISTA
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object CADASTRARMOT: TBitBtn
      Left = 626
      Top = 42
      Width = 127
      Height = 23
      Hint = 'CASO NAO TENHA ENCONTRADO AO LADO CADASTRE A PESSOA'
      Caption = 'Cadastrar Motorista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = CADASTRARMOTClick
    end
    object DBComboBox1: TDBComboBox
      Left = 315
      Top = 15
      Width = 131
      Height = 21
      Hint = 'Escolha se o caminhao ir'#225' CARREGAR ou DESCARREGAR produto'
      Style = csDropDownList
      Color = 3881787
      DataField = 'TIPO'
      DataSource = DMUNT.DSCARGADESCARGA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        'CARGA'
        'DESCARGA')
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnChange = DBComboBox1Change
    end
    object DBEdit4: TDBEdit
      Left = 350
      Top = 182
      Width = 74
      Height = 20
      Hint = 'Data da Saida '
      BevelInner = bvLowered
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'DATASAIDA'
      DataSource = DMUNT.DSCARGADESCARGA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object DBEdit5: TDBEdit
      Left = 350
      Top = 208
      Width = 74
      Height = 20
      Hint = 'Hora da saida'
      BevelInner = bvLowered
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'HORASAIDA'
      DataSource = DMUNT.DSCARGADESCARGA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object DBEdit2: TDBEdit
      Left = 254
      Top = 97
      Width = 170
      Height = 21
      Hint = 'Numero do Lacre'
      BevelInner = bvLowered
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NUMLACRE'
      DataSource = DMUNT.DSCARGADESCARGA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object DBEdit6: TDBEdit
      Left = 556
      Top = 180
      Width = 64
      Height = 21
      Hint = 'Numero da Nota Fiscal'
      BevelInner = bvLowered
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NUMNFE'
      DataSource = DMUNT.DSCARGADESCARGA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object DBEdit8: TDBEdit
      Left = 556
      Top = 99
      Width = 64
      Height = 21
      Hint = 'Peso a ser coletado no visor da balan'#231'a manualmente'
      BevelInner = bvLowered
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'PESOBALANCASAIDA'
      DataSource = DMUNT.DSCARGADESCARGA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnChange = DBEdit8Change
    end
    object DBEdit9: TDBEdit
      Left = 556
      Top = 152
      Width = 64
      Height = 22
      Hint = 'Peso descrito na nota fiscal '
      BevelInner = bvLowered
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'PESONFE'
      DataSource = DMUNT.DSCARGADESCARGA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
    object DBEdit10: TDBEdit
      Left = 254
      Top = 69
      Width = 170
      Height = 21
      Hint = 'DIGITE o produto '
      BevelInner = bvLowered
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'PRODUTO'
      DataSource = DMUNT.DSCARGADESCARGA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
    end
    object DBEdit7: TDBEdit
      Left = 556
      Top = 72
      Width = 64
      Height = 21
      Hint = 'Peso a ser coletado no visor da balan'#231'a manualmente'
      BevelInner = bvLowered
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'PESOBALANCAENTRADA'
      DataSource = DMUNT.DSCARGADESCARGA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 524
      Top = 15
      Width = 96
      Height = 21
      Hint = 'Escolha a placa do caminhao cadastrado'
      BiDiMode = bdLeftToRight
      Color = 3881787
      DataField = 'PLACAFK'
      DataSource = DMUNT.DSCARGADESCARGA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'PLACA'
      ListField = 'PLACA'
      ListSource = DSPLACA
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
    end
    object DBEdit11: TDBEdit
      Left = 556
      Top = 125
      Width = 64
      Height = 21
      Hint = 'Este valor '#233' Calculado automaticamente  '
      BevelInner = bvLowered
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'PESOLIQUIDO'
      DataSource = DMUNT.DSCARGADESCARGA
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
    end
    object DBEdit1: TDBEdit
      Left = 350
      Top = 156
      Width = 74
      Height = 21
      Hint = 'Hora da entrada '
      BevelInner = bvLowered
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'HORAENTRADA'
      DataSource = DMUNT.DSCARGADESCARGA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
    end
    object BTNSALVAR: TBitBtn
      Left = 215
      Top = 256
      Width = 151
      Height = 50
      Caption = 'SALVAR REGISTRO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      OnClick = BTNSALVARClick
    end
    object BTNCANCELAR: TBitBtn
      Left = 492
      Top = 256
      Width = 143
      Height = 50
      Caption = 'CANCELAR REGISTRO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      OnClick = BTNCANCELARClick
    end
    object AGORAENTRADA: TButton
      Left = 183
      Top = 132
      Width = 59
      Height = 40
      Caption = 'AGORA!!!'
      TabOrder = 18
      Visible = False
      OnClick = AGORAENTRADAClick
    end
    object AGORASAIDA: TButton
      Left = 183
      Top = 180
      Width = 77
      Height = 40
      Caption = 'AGORA!!!'
      TabOrder = 19
      Visible = False
      OnClick = AGORASAIDAClick
    end
  end
  object PNLGRID: TPanel
    Left = 0
    Top = 149
    Width = 916
    Height = 119
    Align = alTop
    TabOrder = 3
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 914
      Height = 117
      Align = alClient
      DataSource = DMUNT.DSCARGADESCARGA
      DrawingStyle = gdsGradient
      FixedColor = clLime
      GradientEndColor = clSilver
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBtnText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Color = clWhite
          Expanded = False
          FieldName = 'PLACAFK'
          Title.Alignment = taCenter
          Title.Caption = 'PLACA'
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'colabnome'
          Title.Alignment = taCenter
          Title.Caption = 'MOTORISTA'
          Width = 224
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'transportadora'
          Title.Alignment = taCenter
          Title.Caption = 'TRANSPORT.'
          Width = 98
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'TIPO'
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'PRODUTO'
          Title.Alignment = taCenter
          Width = 761
          Visible = True
        end>
    end
  end
  object ADOGRID: TADOQuery
    Connection = DMUNT.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cargaoudescarga')
    Left = 696
    Top = 2
    object ADOGRIDCODCARGAOUDESCARGA: TAutoIncField
      FieldName = 'CODCARGAOUDESCARGA'
      ReadOnly = True
    end
    object ADOGRIDPLACAFK: TStringField
      FieldName = 'PLACAFK'
      Size = 8
    end
    object ADOGRIDCODIGOCOLABFK: TIntegerField
      FieldName = 'CODIGOCOLABFK'
    end
    object ADOGRIDDATAENTRADA: TStringField
      FieldName = 'DATAENTRADA'
      Size = 15
    end
    object ADOGRIDHORAENTRADA: TStringField
      FieldName = 'HORAENTRADA'
      Size = 15
    end
    object ADOGRIDDATASAIDA: TStringField
      FieldName = 'DATASAIDA'
      Size = 15
    end
    object ADOGRIDHORASAIDA: TStringField
      FieldName = 'HORASAIDA'
      Size = 15
    end
    object ADOGRIDTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object ADOGRIDNUMNFE: TStringField
      FieldName = 'NUMNFE'
      Size = 15
    end
    object ADOGRIDNUMLACRE: TStringField
      FieldName = 'NUMLACRE'
    end
    object ADOGRIDPESONFE: TStringField
      FieldName = 'PESONFE'
    end
    object ADOGRIDPESOBALANCAENTRADA: TFloatField
      FieldName = 'PESOBALANCAENTRADA'
    end
    object ADOGRIDPESOBALANCASAIDA: TFloatField
      FieldName = 'PESOBALANCASAIDA'
    end
    object ADOGRIDPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object ADOGRIDPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 50
    end
  end
  object DSGRID: TDataSource
    DataSet = ADOGRID
    Left = 632
    Top = 2
  end
  object ADOPLACA: TADOQuery
    Connection = DMUNT.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT        PLACA, SIT'
      'FROM            CAMINHAO'
      'ORDER BY PLACA')
    Left = 725
    Top = 393
    object ADOPLACAPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object ADOPLACASIT: TStringField
      FieldName = 'SIT'
      Size = 7
    end
  end
  object DSPLACA: TDataSource
    DataSet = ADOPLACA
    Left = 645
    Top = 393
  end
  object ADOMOTORISTA: TADOQuery
    Connection = DMUNT.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT        CODIGO, NOME, CARGO,SIT'
      'FROM            COLABORADOR'
      'WHERE CARGO = '#39'MOTORISTA-DE-CAMINHAO'#39
      ' ORDER BY NOME')
    Left = 725
    Top = 449
    object ADOMOTORISTACODIGO: TAutoIncField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object ADOMOTORISTANOME: TStringField
      FieldName = 'NOME'
      Size = 35
    end
    object ADOMOTORISTACARGO: TStringField
      FieldName = 'CARGO'
      Size = 22
    end
    object ADOMOTORISTASIT: TStringField
      FieldName = 'SIT'
      Size = 10
    end
  end
  object DSMOTORISTA: TDataSource
    DataSet = ADOMOTORISTA
    Left = 645
    Top = 449
  end
  object DSUCAMINHAO: TDataSource
    DataSet = UPDATECAMINHAO
    Left = 728
    Top = 585
  end
  object UPDATECAMINHAO: TADOQuery
    Connection = DMUNT.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT PLACA,SIT FROM CAMINHAO')
    Left = 664
    Top = 585
    object UPDATECAMINHAOPLACA: TStringField
      DisplayWidth = 14
      FieldName = 'PLACA'
      Size = 8
    end
    object UPDATECAMINHAOSIT: TStringField
      DisplayWidth = 12
      FieldName = 'SIT'
      Size = 7
    end
  end
  object UPDATECOLAB: TADOQuery
    Connection = DMUNT.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT NOME, SIT FROM COLABORADOR')
    Left = 664
    Top = 537
    object UPDATECOLABNOME: TStringField
      FieldName = 'NOME'
      Size = 35
    end
    object UPDATECOLABSIT: TStringField
      FieldName = 'SIT'
      Size = 10
    end
  end
  object DSUCOLAB: TDataSource
    DataSet = UPDATECOLAB
    Left = 728
    Top = 537
  end
end
