object FRMREGINTEGRACAO: TFRMREGINTEGRACAO
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'FRMREGINTEGRACAO'
  ClientHeight = 650
  ClientWidth = 613
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 13
    Top = 241
    Width = 60
    Height = 16
    Caption = 'Descri'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 13
    Top = 65
    Width = 60
    Height = 16
    Caption = 'Descri'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object PnlReg: TPanel
    Left = 0
    Top = 81
    Width = 613
    Height = 569
    Align = alClient
    BevelOuter = bvNone
    Color = 2170653
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 87
    object Label1: TLabel
      Left = 132
      Top = 17
      Width = 96
      Height = 13
      Caption = 'DATA INTEGRA'#199#195'O'
      FocusControl = INTEGRADIA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 27
      Top = 141
      Width = 51
      Height = 13
      Caption = 'DATA ASO'
      FocusControl = ASODIA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 174
      Top = 141
      Width = 119
      Height = 13
      Caption = 'DATA DE VALIDADE ASO'
      FocusControl = VALIDASODIA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 52
      Top = 461
      Width = 20
      Height = 13
      Caption = 'OBS'
      FocusControl = DBMemo1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 44
      Top = 190
      Width = 47
      Height = 13
      Caption = 'NR_OPC1'
      FocusControl = DBEdit8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 44
      Top = 233
      Width = 47
      Height = 13
      Caption = 'NR_OPC2'
      FocusControl = DBEdit9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 44
      Top = 273
      Width = 47
      Height = 13
      Caption = 'NR_OPC3'
      FocusControl = DBEdit10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 44
      Top = 313
      Width = 47
      Height = 13
      Caption = 'NR_OPC4'
      FocusControl = DBEdit11
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 44
      Top = 353
      Width = 47
      Height = 13
      Caption = 'NR_OPC5'
      FocusControl = DBEdit12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 44
      Top = 393
      Width = 47
      Height = 13
      Caption = 'NR_OPC6'
      FocusControl = DBEdit13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 214
      Top = 190
      Width = 80
      Height = 13
      Caption = 'NR_OPC1_DATA'
      FocusControl = nr1dia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 214
      Top = 233
      Width = 80
      Height = 13
      Caption = 'NR_OPC2_DATA'
      FocusControl = nr2dia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 214
      Top = 273
      Width = 80
      Height = 13
      Caption = 'NR_OPC3_DATA'
      FocusControl = nr3dia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 214
      Top = 313
      Width = 80
      Height = 13
      Caption = 'NR_OPC4_DATA'
      FocusControl = nr4dia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 214
      Top = 353
      Width = 80
      Height = 13
      Caption = 'NR_OPC5_DATA'
      FocusControl = nr5dia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 214
      Top = 393
      Width = 80
      Height = 13
      Caption = 'NR_OPC6_DATA'
      FocusControl = nr6dia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 50
      Top = 59
      Width = 29
      Height = 13
      Caption = 'NOME'
      FocusControl = INTEGRADIA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 33
      Top = 86
      Width = 46
      Height = 13
      Caption = 'EMPRESA'
      FocusControl = INTEGRADIA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 21
      Top = 115
      Width = 58
      Height = 13
      Caption = 'INSTRUTOR'
      FocusControl = INTEGRADIA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 174
      Top = 190
      Width = 8
      Height = 13
      Caption = '='
      FocusControl = nr1dia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 174
      Top = 233
      Width = 8
      Height = 13
      Caption = '='
      FocusControl = nr1dia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 174
      Top = 273
      Width = 8
      Height = 13
      Caption = '='
      FocusControl = nr1dia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 174
      Top = 313
      Width = 8
      Height = 13
      Caption = '='
      FocusControl = nr1dia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 174
      Top = 353
      Width = 8
      Height = 13
      Caption = '='
      FocusControl = nr1dia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 174
      Top = 393
      Width = 8
      Height = 13
      Caption = '='
      FocusControl = nr1dia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label29: TLabel
      Left = 299
      Top = 141
      Width = 77
      Height = 13
      Caption = '      /       /          '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label30: TLabel
      Left = 300
      Top = 190
      Width = 77
      Height = 13
      Caption = '      /       /          '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label31: TLabel
      Left = 300
      Top = 233
      Width = 71
      Height = 13
      Caption = '      /       /          '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label32: TLabel
      Left = 300
      Top = 273
      Width = 77
      Height = 13
      Caption = '      /       /          '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label33: TLabel
      Left = 300
      Top = 313
      Width = 77
      Height = 13
      Caption = '      /       /          '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label34: TLabel
      Left = 300
      Top = 353
      Width = 77
      Height = 13
      Caption = '      /       /          '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label35: TLabel
      Left = 300
      Top = 393
      Width = 77
      Height = 13
      Caption = '      /       /          '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label36: TLabel
      Left = 84
      Top = 141
      Width = 77
      Height = 13
      Caption = '      /       /          '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label37: TLabel
      Left = 234
      Top = 17
      Width = 77
      Height = 13
      Caption = '      /       /          '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 85
      Top = 57
      Width = 309
      Height = 21
      DataField = 'FK_COLAB_CODCOLAB'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = DMUNT.DSCOLAB
      TabOrder = 0
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 85
      Top = 84
      Width = 309
      Height = 21
      DataField = 'FK_COD_EMPRESA'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      KeyField = 'COD_EMPRESA'
      ListField = 'NOME_EMPRESA'
      ListSource = DMUNT.DSEMPRESA
      TabOrder = 1
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 85
      Top = 111
      Width = 309
      Height = 21
      DataField = 'FK_INSTRUTOR_COD'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      KeyField = 'COD_INSTRUTOR'
      ListField = 'NOME_INSTRUTOR'
      ListSource = DMUNT.DSINSTRUTOR
      TabOrder = 2
    end
    object INTEGRADIA: TDBEdit
      Left = 234
      Top = 14
      Width = 15
      Height = 17
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'DATAINTEGRA_DIA'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object ASODIA: TDBEdit
      Left = 84
      Top = 138
      Width = 18
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'ASO_DATA_DIA'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object VALIDASODIA: TDBEdit
      Left = 299
      Top = 138
      Width = 18
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'VALIDADE_ASO_DATA_DIA'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 5
    end
    object DBMemo1: TDBMemo
      Left = 87
      Top = 458
      Width = 307
      Height = 89
      Hint = 'FUN'#199#195'O OU INFORMA'#199'OES ADICIONAIS SOBRE O FUNCIONARIO'
      BorderStyle = bsNone
      Color = 3881787
      Ctl3D = True
      DataField = 'OBS'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnKeyPress = DBMemo1KeyPress
    end
    object DBEdit8: TDBEdit
      Left = 107
      Top = 187
      Width = 55
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC1'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 107
      Top = 230
      Width = 55
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC2'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 107
      Top = 270
      Width = 55
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC3'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
    end
    object DBEdit11: TDBEdit
      Left = 107
      Top = 310
      Width = 55
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC4'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
    object DBEdit12: TDBEdit
      Left = 107
      Top = 350
      Width = 55
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC5'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
    end
    object DBEdit13: TDBEdit
      Left = 107
      Top = 390
      Width = 55
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC6'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
    end
    object nr1dia: TDBEdit
      Left = 300
      Top = 187
      Width = 17
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC1_DATA_DIA'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
    end
    object nr2dia: TDBEdit
      Left = 300
      Top = 230
      Width = 17
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC2_DATA_DIA'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
    end
    object nr3dia: TDBEdit
      Left = 300
      Top = 270
      Width = 17
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC3_DATA_DIA'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
    end
    object nr4dia: TDBEdit
      Left = 300
      Top = 310
      Width = 17
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC4_DATA_DIA'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
    end
    object nr5dia: TDBEdit
      Left = 300
      Top = 350
      Width = 17
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC5_DATA_DIA'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 17
    end
    object nr6dia: TDBEdit
      Left = 300
      Top = 390
      Width = 17
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC6_DATA_DIA'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 18
    end
    object nr1MES: TDBEdit
      Left = 323
      Top = 187
      Width = 17
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC1_DATA_MES'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 19
    end
    object nr2mes: TDBEdit
      Left = 323
      Top = 230
      Width = 17
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC2_DATA_MES'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 20
    end
    object nr3MES: TDBEdit
      Left = 323
      Top = 270
      Width = 17
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC3_DATA_MES'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 21
    end
    object nr4MES: TDBEdit
      Left = 323
      Top = 310
      Width = 17
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC4_DATA_MES'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 22
    end
    object nr5MES: TDBEdit
      Left = 323
      Top = 350
      Width = 17
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC5_DATA_MES'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 23
    end
    object nr6MES: TDBEdit
      Left = 323
      Top = 390
      Width = 17
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC6_DATA_MES'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 24
    end
    object VALIDASOMES: TDBEdit
      Left = 322
      Top = 138
      Width = 18
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'VALIDADE_ASO_DATA_MES'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 25
    end
    object ASOMES: TDBEdit
      Left = 108
      Top = 138
      Width = 17
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'ASO_DATA_MES'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 26
    end
    object INTEGRAMES: TDBEdit
      Left = 261
      Top = 14
      Width = 15
      Height = 17
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'DATAINTEGRA_MES'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 27
    end
    object VALIDASOANO: TDBEdit
      Left = 347
      Top = 138
      Width = 32
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'VALIDADE_ASO_DATA_ANO'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 28
    end
    object INTEGRAANO: TDBEdit
      Left = 282
      Top = 14
      Width = 32
      Height = 17
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'DATAINTEGRA_ANO'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 29
    end
    object ASOANO: TDBEdit
      Left = 132
      Top = 138
      Width = 30
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'ASO_DATA_ANO'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 30
    end
    object nr6ANO: TDBEdit
      Left = 346
      Top = 390
      Width = 31
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC6_DATA_ANO'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 31
    end
    object nr5ANO: TDBEdit
      Left = 349
      Top = 350
      Width = 31
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC5_DATA_ANO'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 32
    end
    object nr4ANO: TDBEdit
      Left = 349
      Top = 310
      Width = 31
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC4_DATA_ANO'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 33
    end
    object nr3ANO: TDBEdit
      Left = 349
      Top = 270
      Width = 31
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC3_DATA_ANO'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 34
    end
    object nr2ANO: TDBEdit
      Left = 349
      Top = 230
      Width = 31
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC2_DATA_ANO'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 35
    end
    object nr1ANO: TDBEdit
      Left = 348
      Top = 187
      Width = 31
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 3881787
      DataField = 'NR_OPC1_DATA_ANO'
      DataSource = DMUNT.DSCONTROLINTEGRACAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 36
    end
  end
  object PnlProducts: TPanel
    Left = 0
    Top = 0
    Width = 613
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'CADASTRAR INTEGRA'#199#195'O'
    Color = clInactiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 456
  end
  object PnlTool: TPanel
    Left = 0
    Top = 41
    Width = 613
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Color = 2170653
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 456
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 613
      Height = 41
      ButtonHeight = 38
      ButtonWidth = 39
      Caption = 'ToolBar1'
      Color = 2170653
      GradientEndColor = 11319229
      Images = ImageList1
      ParentColor = False
      TabOrder = 0
      ExplicitWidth = 456
      object BTN_Save: TToolButton
        Left = 0
        Top = 0
        Hint = 'Salvar Cadastro'
        Caption = 'BTN_Save'
        ImageIndex = 0
        ParentShowHint = False
        ShowHint = True
        OnClick = BTN_SaveClick
      end
      object BTN_Cancel: TToolButton
        Left = 39
        Top = 0
        Hint = 'Cancelar e sair'
        Caption = 'BTN_Cancel'
        ImageIndex = 1
        OnClick = BTN_CancelClick
      end
      object ToolButton3: TToolButton
        Left = 78
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object BTN_Exit: TToolButton
        Left = 86
        Top = 0
        Hint = 'SAIR'
        Caption = 'BTN_Exit'
        ImageIndex = 2
        OnClick = BTN_ExitClick
      end
    end
  end
  object ImageList1: TImageList
    Height = 32
    Width = 32
    Left = 422
    Top = 9
    Bitmap = {
      494C0101030034004C0020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002000000001002000000000000040
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF413F3CFF403F52FF3A42B8FF3743
      E6FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3743E0FF3942B5FF403F56FF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF595754FFEDEDEDFFC9C9C8FFA9A8A6FF898785FF686664FF474542FF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF403F52FF3743EAFF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3743EAFF403F56FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF4D4B48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F4F4FFD8D8
      D7FFBCBBBAFFA09F9EFF848381FF686664FF4B4A47FF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3A42B8FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3942B5FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF7D7B79FFB7B7B6FFB7B7B6FFB7B7B6FFB7B7B6FFB7B7B6FFB7B7
      B6FFC0C0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFD8D8D7FF807E7CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3842D5FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3842D5FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF949392FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9EFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFF413F3CFF413F3CFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF413F3CFF413F
      3CFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFFA09F9EFFFFFFFFFFE7E7E7FFA09F9EFFA09F9EFFA09F9EFFA09F
      9EFFACABA9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9EFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFF413F3CFF413F3CFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF413F3CFF413F
      3CFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF949392FFFFFFFFFFCFCFCEFF413F3CFF413F3CFF413F3CFF413F
      3CFF4D4B48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9DFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3942C9FF3943D7FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3943D7FF3942C9FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF949392FFFFFFFFFFCFCFCEFF413F3CFF413F3CFF413F3CFF413F
      3CFF4D4B48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9DFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3942C9FF413F44FF403F4DFF3943
      D7FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3943D7FF403F4DFF413F44FF3942C9FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF949392FFFFFFFFFFCFCFCEFF413F3CFF413F3CFF413F3CFF413F
      3CFF4D4B48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9DFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFF413F3CFF413F3CFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF413F3CFF413F
      3CFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3942B5FF3F3F59FF413F3CFF413F3CFF3E40
      66FF3842C2FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3842
      C6FF3E406AFF413F3CFF413F3CFF403F52FF3B41AFFF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF949392FFFFFFFFFFCFCFCEFF413F3CFF413F3CFF413F3CFF413F
      3CFF4D4B48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9DFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFF413F3CFF413F3CFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF413F3CFF413F
      3CFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3842CCFF413F44FF413F3CFF413F3CFF413F3CFF413F
      3CFF403F4DFF3943D7FF3643F4FF3643F4FF3643F4FF3643F4FF3943D7FF403F
      4DFF413F3CFF413F3CFF413F3CFF413F3CFF413F44FF3842CCFF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF949392FFFFFFFFFFCFCFCEFF413F3CFF413F3CFF413F3CFF413F
      3CFF4D4B48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9EFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3842CCFF3E4070FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF3E4068FF3942C4FF3643F4FF3643F4FF3842C6FF3E406AFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF3E406AFF3842C6FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF949392FFFFFFFFFFCFCFCEFF413F3CFF413F3CFF413F3CFF413F
      3CFF4D4B48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9EFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3743E3FF3F3F59FF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF403F4DFF3943D7FF3943D7FF403F4DFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF3F3F59FF3743E3FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF949392FFFFFFFFFFCFCFCEFF413F3CFF413F3CFF413F3CFF413F
      3CFF4D4B48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9EFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFF413F3CFF413F3CFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF413F3CFF413F
      3CFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3743E3FF3F3F59FF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF403F4DFF403F4DFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF3F3F59FF3743E3FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF949392FFFFFFFFFFCFCFCEFF413F3CFF413F3CFF413F3CFF413F
      3CFF4D4B48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9EFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFF413F3CFF413F3CFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF413F3CFF413F
      3CFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3842CCFF3E4070FF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF3E406AFF3842C6FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF949392FFFFFFFFFFCFCFCEFF413F3CFF413F3CFF413F3CFF413F
      3CFF4D4B48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9EFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3842CCFF3E40
      70FF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF3E406AFF3842C6FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFFA09F9EFFFFFFFFFFCFCFCEFF413F3CFF413F3CFF413F3CFF413F
      3CFF595754FFFFFFFFFFFFFFFFFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9EFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3842
      CCFF3E4070FF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF3E40
      6AFF3842C6FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFFA09F9EFFFFFFFFFFCFCFCEFF413F3CFF413F3CFF413F3CFF413F
      3CFF595754FFFFFFFFFFA9A8A6FF5F5D5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9EFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3842
      CCFF3E406FFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF3E40
      6AFF3942C5FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFFA09F9EFFFFFFFFFFCFCFCEFF413F3CFF413F3CFF413F3CFF413F
      3CFF595754FFFFFFFFFFAFAEACFF656361FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9EFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3942C9FF3E40
      6FFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF3E4069FF3942C4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFFA09F9EFFFFFFFFFFCFCFCEFF413F3CFF413F3CFF413F3CFF413F
      3CFF595754FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9EFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3841C9FF3E406EFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF3E4068FF3941C4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF949392FFFFFFFFFFCFCFCEFF413F3CFF413F3CFF413F3CFF413F
      3CFF4D4B48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9DFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3743E3FF3F3F59FF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF3F3F59FF3F3F59FF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF403F4DFF3943D7FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF949392FFFFFFFFFFCFCFCEFF413F3CFF413F3CFF413F3CFF413F
      3CFF4D4B48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9DFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3743E3FF3F3F59FF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF3F3F59FF3743E3FF3743E3FF3F3F59FF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF403F4DFF3943D7FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF949392FFFFFFFFFFCFCFCEFF413F3CFF413F3CFF413F3CFF413F
      3CFF4D4B48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9DFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFF413F3CFF413F3CFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3941C6FF3E406BFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF3E406EFF3942C9FF3643F4FF3643F4FF3842CCFF3E4070FF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF3F4065FF3942C1FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF949392FFFFFFFFFFCFCFCEFF413F3CFF413F3CFF413F3CFF413F
      3CFF4D4B48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9DFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFF413F3CFF413F3CFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3942C9FF413F44FF413F3CFF413F3CFF413F3CFF413F
      3CFF3F3F59FF3743E3FF3643F4FF3643F4FF3643F4FF3643F4FF3743E3FF3F3F
      59FF413F3CFF413F3CFF413F3CFF413F3CFF413F44FF3942C9FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF949392FFFFFFFFFFCFCFCEFF413F3CFF413F3CFF413F3CFF413F
      3CFF4D4B48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9EFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFF413F3CFF413F3CFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3942BBFF3F405FFF413F3CFF413F3CFF3E40
      6BFF3942C8FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3842
      CCFF3E4070FF413F3CFF413F3CFF3F3F59FF3942B5FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF949392FFFFFFFFFFCFCFCEFF413F3CFF413F3CFF413F3CFF413F
      3CFF4D4B48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9EFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFF413F3CFF413F3CFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3942C9FF413F44FF3F3F59FF3743
      E3FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3743E3FF3F3F59FF413F44FF3942C9FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF949392FFFFFFFFFFCFCFCEFF413F3CFF413F3CFF413F3CFF413F
      3CFF4D4B48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9EFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFF413F3CFF413F3CFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3842CCFF3743E3FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3743E3FF3842CCFF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF949392FFFFFFFFFFCFCFCEFF413F3CFF413F3CFF413F3CFF413F
      3CFF4D4B48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9EFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFF413F3CFF413F3CFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFF8A5E35FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF949392FFFFFFFFFFCFCFCEFF413F3CFF413F3CFF413F3CFF413F
      3CFF4D4B48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9EFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFF413F3CFF413F3CFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFF8A5E35FF413F3CFF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFFA09F9EFFFFFFFFFFE7E7E7FFA09F9EFFA09F9EFFA09F9EFFA09F
      9EFFACABA9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9EFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFF413F3CFF413F3CFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFF8A5E35FF413F3CFF413F3CFF3842D6FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3842D5FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF949392FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F9EFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFF413F3CFF413F3CFFD47C2FFFD47C2FFFD47C2FFFD47C
      2FFF8A5E35FF413F3CFF413F3CFF413F3CFF3942B5FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3942B5FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF7D7B79FFB7B7B6FFB7B7B6FFB7B7B6FFB7B7B6FFB7B7B6FFB7B7
      B6FFC0C0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E3FFC3C3C2FF747270FF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2FFFD47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFFD47C2FFFD47C2FFFD47C2FFF8A5E
      35FF413F3CFF413F3CFF413F3CFF413F3CFF403F50FF3743E6FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3743E8FF403F52FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF4D4B48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6FFC9C9
      C8FFACABAAFF908F8DFF73716FFF565451FF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47C2F00D47C2FFFD47C2FFFD47C
      2FFFD47C2FFFD47C2FFFD47C2FFFD47C2FFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFFD47C2FFFD47C2FFF8A5E35FF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF403F50FF3942B5FF3743
      E6FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3743E0FF3B42B2FF403F50FF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF565451FFDEDEDDFFC0C0BFFF9A9998FF7A7876FF565451FF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F3CFF413F
      3CFF413F3CFF413F3CFF413F3CFF413F3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000200000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end