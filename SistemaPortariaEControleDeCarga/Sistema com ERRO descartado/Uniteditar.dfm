object frmeditar: Tfrmeditar
  Left = 0
  Top = 0
  Caption = 'frmeditar'
  ClientHeight = 613
  ClientWidth = 876
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 876
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object atribui: TLabel
      Left = 0
      Top = 0
      Width = 876
      Height = 25
      Align = alTop
      Alignment = taCenter
      Caption = 'Atribuir Entrada/Saida ao CAMINH'#195'O'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 395
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 876
    Height = 474
    Align = alClient
    BevelOuter = bvNone
    Color = clGrayText
    ParentBackground = False
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 876
      Height = 474
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          ReadOnly = True
          Width = 165
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PLACAFK'
          ReadOnly = True
          Title.Caption = 'PLACA'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          ReadOnly = True
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUTO'
          Title.Caption = 'PRODUTO*'
          Width = 205
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAENTRADA'
          Title.Caption = 'ENTRADA*'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HORAENTRADA'
          Title.Caption = 'ENTRADA*'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATASAIDA'
          Title.Caption = 'SAIDA*'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HORASAIDA'
          Title.Caption = 'SAIDA*'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMNFE'
          Title.Caption = 'NUM NFE*'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMLACRE'
          Title.Caption = 'NUM LACRE*'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PESONFE'
          Title.Caption = 'PESO NFE*'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PESOBALANCAENTRADA'
          ReadOnly = True
          Title.Caption = 'PESO ENTRADA'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PESOBALANCASAIDA'
          ReadOnly = True
          Title.Caption = 'PESO SAIDA'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PESOLIQUIDO'
          ReadOnly = True
          Title.Caption = 'PESO LIQUIDO'
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 507
    Width = 876
    Height = 106
    Align = alBottom
    Color = clGray
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      876
      106)
    object Label1: TLabel
      Left = 486
      Top = 13
      Width = 379
      Height = 13
      Anchors = [akRight, akBottom]
      Caption = 
        'Voce pode clicar e alterar as informa'#231#245'es que cont'#233'm * direto na' +
        ' planilha acima'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInactiveBorder
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 486
      Top = 32
      Width = 378
      Height = 13
      Anchors = [akRight, akBottom]
      Caption = 
        'Caso a informa'#231#227'o que deseja alterar n'#227'o comt'#233'm * basta selecion' +
        'a-la e clicar '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInactiveBorder
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 486
      Top = 51
      Width = 125
      Height = 13
      Anchors = [akRight, akBottom]
      Caption = 'no bot'#227'o deletar ao lado. '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInactiveBorder
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 37
      Width = 33
      Height = 13
      Caption = 'NOME:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInactiveBorder
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 191
      Top = 37
      Width = 36
      Height = 13
      Caption = 'PLACA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInactiveBorder
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 11
      Width = 294
      Height = 13
      Caption = 'Selecione o registro que deseja deletar na "planilha" acima '#8593
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInactiveBorder
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 342
      Top = 37
      Width = 50
      Height = 13
      Caption = 'Peso SDA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInactiveBorder
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object DBEdit1: TDBEdit
      Left = 191
      Top = 56
      Width = 65
      Height = 21
      DataField = 'PLACAFK'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 0
    end
    object Button1: TButton
      Left = 261
      Top = 54
      Width = 75
      Height = 25
      Caption = 'DELETAR'
      TabOrder = 1
      OnClick = Button1Click
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 56
      Width = 170
      Height = 21
      DataField = 'NOME'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 342
      Top = 56
      Width = 65
      Height = 21
      DataField = 'PESOBALANCASAIDA'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 3
      Visible = False
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DMUNT.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CARGAOUDESCARGA'
      ''
      'ORDER BY CODCARGAOUDESCARGA DESC')
    Left = 144
    Top = 264
    object ADOQuery1CODCARGAOUDESCARGA: TAutoIncField
      FieldName = 'CODCARGAOUDESCARGA'
      ReadOnly = True
    end
    object ADOQuery1PLACAFK: TStringField
      FieldName = 'PLACAFK'
      Size = 8
    end
    object ADOQuery1CODIGOCOLABFK: TIntegerField
      FieldName = 'CODIGOCOLABFK'
    end
    object ADOQuery1DATAENTRADA: TStringField
      FieldName = 'DATAENTRADA'
      Size = 15
    end
    object ADOQuery1HORAENTRADA: TStringField
      FieldName = 'HORAENTRADA'
      Size = 15
    end
    object ADOQuery1DATASAIDA: TStringField
      FieldName = 'DATASAIDA'
      Size = 15
    end
    object C: TStringField
      FieldName = 'HORASAIDA'
      Size = 15
    end
    object ADOQuery1TIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object ADOQuery1NUMNFE: TStringField
      FieldName = 'NUMNFE'
      Size = 15
    end
    object ADOQuery1NUMLACRE: TStringField
      FieldName = 'NUMLACRE'
    end
    object ADOQuery1PESONFE: TStringField
      FieldName = 'PESONFE'
    end
    object ADOQuery1PESOBALANCAENTRADA: TFloatField
      FieldName = 'PESOBALANCAENTRADA'
    end
    object ADOQuery1PESOBALANCASAIDA: TFloatField
      FieldName = 'PESOBALANCASAIDA'
    end
    object ADOQuery1PESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object ADOQuery1PRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 50
    end
    object ADOQuery1NOME: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME'
      LookupDataSet = DMUNT.ADODSCOLAB
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGOCOLABFK'
      Size = 35
      Lookup = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 232
    Top = 264
  end
  object UPDATECOLAB: TADOQuery
    Connection = DMUNT.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT NOME, SIT FROM COLABORADOR')
    Left = 416
    Top = 281
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
    Left = 416
    Top = 329
  end
  object UPDATECAMINHAO: TADOQuery
    Connection = DMUNT.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT PLACA,SIT FROM CAMINHAO')
    Left = 536
    Top = 289
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
  object DSUCAMINHAO: TDataSource
    DataSet = UPDATECAMINHAO
    Left = 536
    Top = 337
  end
end
