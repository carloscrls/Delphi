inherited frmRelFuncionarios: TfrmRelFuncionarios
  Caption = 'frmRelFuncionarios'
  ClientHeight = 245
  ClientWidth = 364
  OnActivate = FormActivate
  ExplicitWidth = 380
  ExplicitHeight = 284
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 364
    Height = 204
    ExplicitWidth = 364
    ExplicitHeight = 204
    inherited BitBtn1: TBitBtn
      Left = 199
      Top = 153
      ExplicitLeft = 199
      ExplicitTop = 153
    end
    inherited BitBtn2: TBitBtn
      Left = 280
      Top = 153
      ExplicitLeft = 280
      ExplicitTop = 153
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 6
      Width = 153
      Height = 105
      Caption = 'ID'
      TabOrder = 2
      object EdtCod1: TLabeledEdit
        Left = 32
        Top = 32
        Width = 89
        Height = 21
        EditLabel.Width = 17
        EditLabel.Height = 13
        EditLabel.Caption = 'De:'
        TabOrder = 0
      end
      object EdtCod2: TLabeledEdit
        Left = 32
        Top = 72
        Width = 89
        Height = 21
        EditLabel.Width = 21
        EditLabel.Height = 13
        EditLabel.Caption = 'At'#233':'
        TabOrder = 1
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 199
      Top = 5
      Width = 153
      Height = 105
      Caption = 'Ordena'#231#227'o'
      Items.Strings = (
        'ID'
        'Nome'
        'Data Admiss'#227'o')
      TabOrder = 3
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 117
      Width = 177
      Height = 61
      Caption = 'Situa'#231#227'o'
      TabOrder = 4
      object ComboBox1: TComboBox
        Left = 16
        Top = 24
        Width = 145
        Height = 21
        TabOrder = 0
        Text = 'ComboBox1'
        Items.Strings = (
          'Todos'
          'Ativo'
          'Demitido'
          'Ferias')
      end
    end
  end
  inherited Panel2: TPanel
    Width = 364
    ExplicitWidth = 364
    inherited Label1: TLabel
      Width = 362
      Caption = 'Lista de Funcion'#225'rios'
      ExplicitWidth = 362
    end
  end
  inherited frxReport1: TfrxReport
    ReportOptions.CreateDate = 42515.835322789400000000
    ReportOptions.LastChange = 42515.847073854200000000
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 24
    Top = 265
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Picture1: TfrxPictureView
          Left = 566.929500000000000000
          Width = 192.756030000000000000
          Height = 90.708720000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Shape2: TfrxShapeView
          Width = 740.787880000000000000
          Height = 90.708720000000000000
        end
        object Memo7: TfrxMemoView
          Top = 60.472480000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lista de Funcionarios')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Lanchonete dos hue tudo')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 7.559060000000000000
          Top = 22.677180000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Av. da Saudade, 255')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 7.559060000000000000
          Top = 41.574830000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Centro - Laranjal Paulista')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1CPF: TfrxMemoView
          Left = 377.953000000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'CPF'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CPF"]')
        end
        object frxDBDataset1Nome: TfrxMemoView
          Left = 79.370130000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          DataField = 'Nome'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Nome"]')
        end
        object frxDBDataset1ID: TfrxMemoView
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
          ParentFont = False
        end
        object frxDBDataset1Dt_admissao: TfrxMemoView
          Left = 491.338900000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'Dt_admissao'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Dt_admissao"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 476.220780000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Page] de [TotalPages]')
          Formats = <
            item
            end
            item
            end>
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 27.677180000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 377.953000000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 79.370130000000000000
          Top = 3.779530000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ID')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Admiss'#227'o')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 23.897650000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  inherited FDQuery1: TFDQuery
    Active = True
    SQL.Strings = (
      'select * from funcionario')
    Left = 80
    Top = 265
  end
  inherited frxDBDataset1: TfrxDBDataset
    Left = 128
    Top = 265
  end
end
