inherited frmRelProdutos: TfrmRelProdutos
  Caption = 'frmRelProdutos'
  ClientHeight = 239
  ClientWidth = 364
  OnActivate = FormActivate
  ExplicitWidth = 380
  ExplicitHeight = 278
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 364
    Height = 198
    inherited BitBtn1: TBitBtn
      Left = 196
      Top = 158
      ExplicitLeft = 196
      ExplicitTop = 158
    end
    inherited BitBtn2: TBitBtn
      Left = 277
      Top = 158
      ExplicitLeft = 277
      ExplicitTop = 158
    end
    object GroupBox1: TGroupBox
      Left = 175
      Top = 88
      Width = 177
      Height = 64
      Caption = 'Categoria'
      TabOrder = 2
      object ComboBox1: TComboBox
        Left = 13
        Top = 27
        Width = 153
        Height = 21
        TabOrder = 0
      end
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 6
      Width = 153
      Height = 105
      Caption = 'ID'
      TabOrder = 3
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
      Left = 175
      Top = 6
      Width = 82
      Height = 76
      Caption = 'Ordena'#231#227'o'
      Items.Strings = (
        'ID'
        'Nome')
      TabOrder = 4
    end
    object RadioGroup2: TRadioGroup
      Left = 263
      Top = 6
      Width = 89
      Height = 76
      Caption = 'Status'
      Items.Strings = (
        'Todos'
        'Ativos'
        'Inativos')
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    Width = 364
    inherited Label1: TLabel
      Width = 362
      Caption = 'Lista de Produtos'
    end
  end
  inherited frxReport1: TfrxReport
    ReportOptions.CreateDate = 42519.723158669000000000
    ReportOptions.LastChange = 42528.643550706020000000
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 32
    Top = 161
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
        Height = 105.826840000000000000
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
        object Memo2: TfrxMemoView
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
            'Lista de Produtos')
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
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo10: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<line> mod 2 = 0'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14211288
          ParentFont = False
        end
        object frxDBDataset1Qtde_real: TfrxMemoView
          Left = 423.307360000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'Qtde_real'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."Qtde_real"]')
          ParentFont = False
        end
        object frxDBDataset1Pr_custo: TfrxMemoView
          Left = 491.338900000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'Pr_custo'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."Pr_custo"]')
          ParentFont = False
        end
        object frxDBDataset1Pr_venda: TfrxMemoView
          Left = 578.268090000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'Pr_venda'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."Pr_venda"]')
          ParentFont = False
        end
        object frxDBDataset1ProdNome: TfrxMemoView
          Left = 49.133890000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataField = 'ProdNome'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."ProdNome"]')
        end
        object frxDBDataset1CatNome: TfrxMemoView
          Left = 321.260050000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'CatNome'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CatNome"]')
        end
        object frxDBDataset1Comp: TfrxMemoView
          Left = 661.417750000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'Comp'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."Comp"]')
          ParentFont = False
        end
        object frxDBDataset1ID: TfrxMemoView
          Left = 3.779530000000000000
          Width = 41.574830000000000000
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
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Left = 423.307360000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Qtde')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Custo')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 570.709030000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Venda')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 49.133890000000000000
          Top = 3.779530000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 321.260050000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Categoria')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 661.417750000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Comp')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
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
        object Line1: TfrxLineView
          Top = 22.677180000000000000
          Width = 729.449290000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 3.779530000000000000
          Width = 729.449290000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  inherited FDQuery1: TFDQuery
    SQL.Strings = (
      
        'SELECT        Categoria.Nome as CatNome,Produto.Status, Produto.' +
        'Nome AS ProdNome, Produto.ID, Produto.Pr_venda, Produto.Pr_custo' +
        ', Produto.Qtde_real, Produto.Comp'
      'FROM            Produto INNER JOIN'
      
        '                         Categoria ON Produto.Id_categoria = Cat' +
        'egoria.ID')
    Left = 88
    Top = 161
  end
  inherited frxDBDataset1: TfrxDBDataset
    Left = 136
    Top = 161
  end
  object FDQuery2: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from categoria')
    Left = 40
    Top = 225
  end
end
