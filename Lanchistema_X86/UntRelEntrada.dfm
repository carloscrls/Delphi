inherited frmRelEntrada: TfrmRelEntrada
  Caption = 'frmRelEntrada'
  ClientHeight = 217
  ClientWidth = 219
  ExplicitWidth = 235
  ExplicitHeight = 256
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 219
    Height = 176
    inherited BitBtn1: TBitBtn
      Left = 30
      Top = 128
      ExplicitLeft = 30
      ExplicitTop = 128
    end
    inherited BitBtn2: TBitBtn
      Left = 126
      Top = 128
      ExplicitLeft = 126
      ExplicitTop = 128
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 6
      Width = 185
      Height = 105
      TabOrder = 2
      object edt_id: TLabeledEdit
        Left = 32
        Top = 48
        Width = 121
        Height = 21
        EditLabel.Width = 52
        EditLabel.Height = 13
        EditLabel.BiDiMode = bdLeftToRight
        EditLabel.Caption = 'ID Entrada'
        EditLabel.ParentBiDiMode = False
        EditLabel.Layout = tlCenter
        TabOrder = 0
      end
    end
  end
  inherited Panel2: TPanel
    Width = 219
    inherited Label1: TLabel
      Width = 217
      Caption = 'Impress'#227'o de Entrada'
    end
  end
  inherited frxReport1: TfrxReport
    ReportOptions.CreateDate = 42516.820826481500000000
    ReportOptions.LastChange = 42522.434994050920000000
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
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
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Top = 56.692950000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Entrada de Produtos')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 7.559060000000000000
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
        object Memo18: TfrxMemoView
          Left = 7.559060000000000000
          Top = 18.897650000000000000
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
        object Memo19: TfrxMemoView
          Left = 7.559060000000000000
          Top = 37.795300000000000000
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
        Height = 86.929190000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1Sit: TfrxMemoView
          Left = 623.622450000000000000
          Top = 18.897650000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'Sit'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Sit"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 589.606680000000000000
          Top = 18.897650000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Sit')
          ParentFont = False
        end
        object frxDBDataset1Data_inc: TfrxMemoView
          Left = 192.756030000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'Data_inc'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Data_inc"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 109.606370000000000000
          Top = 18.897650000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Dt Inclus'#227'o:')
          ParentFont = False
        end
        object frxDBDataset1Nome: TfrxMemoView
          Left = 340.157700000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'Nome'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Nome"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 275.905690000000000000
          Top = 18.897650000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Usuario:')
          ParentFont = False
        end
        object frxDBDataset1Dt_entrada: TfrxMemoView
          Left = 506.457020000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'Dt_entrada'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Dt_entrada"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 423.307360000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Dt Entrada:')
          ParentFont = False
        end
        object frxDBDataset1ID: TfrxMemoView
          Left = 64.252010000000000000
          Top = 18.897650000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ID:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 619.842920000000000000
          Top = 64.252010000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o Total')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 15.118120000000000000
          Top = 64.252010000000010000
          Width = 79.370130000000000000
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
        object Memo12: TfrxMemoView
          Left = 321.260050000000000000
          Top = 64.252010000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Unidade')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 423.307360000000000000
          Top = 64.252010000000010000
          Width = 79.370130000000000000
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
        object Memo14: TfrxMemoView
          Left = 510.236550000000000000
          Top = 64.252010000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o Unit.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 98.267780000000000000
          Top = 64.252010000000010000
          Width = 79.370130000000000000
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
        object Line1: TfrxLineView
          Top = 83.149659999999900000
          Width = 725.669760000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 419.527830000000000000
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
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo16: TfrxMemoView
          Top = 3.779529999999965000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
        object frxDBDataset2Pr_total: TfrxMemoView
          Left = 619.842920000000000000
          Top = 3.779529999999965000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'Pr_total'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."Pr_total"]')
          ParentFont = False
        end
        object frxDBDataset2id_prod: TfrxMemoView
          Left = 15.118120000000000000
          Top = 3.779529999999965000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'id_prod'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."id_prod"]')
          ParentFont = False
        end
        object frxDBDataset2Unidade: TfrxMemoView
          Left = 321.260050000000000000
          Top = 3.779529999999965000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'Unidade'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."Unidade"]')
          ParentFont = False
        end
        object frxDBDataset2Qtde: TfrxMemoView
          Left = 423.307360000000000000
          Top = 3.779529999999965000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'Qtde'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."Qtde"]')
          ParentFont = False
        end
        object frxDBDataset2Pr_custo: TfrxMemoView
          Left = 510.236550000000000000
          Top = 3.779529999999965000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'Pr_custo'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."Pr_custo"]')
          ParentFont = False
        end
        object frxDBDataset2Nome: TfrxMemoView
          Left = 102.047310000000000000
          Top = 3.779529999999965000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          DataField = 'Nome'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."Nome"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        object frxDBDataset1Qtde_itens: TfrxMemoView
          Left = 419.527830000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'Qtde_itens'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Qtde_itens"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 336.378170000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde Itens:')
          ParentFont = False
        end
        object frxDBDataset1Custo_total: TfrxMemoView
          Left = 634.961040000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'Custo_total'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Custo_total"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 510.236550000000000000
          Top = 18.897650000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Custo Total ==>')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 336.378170000000000000
          Top = 18.897650000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          Shape = skRoundRectangle
        end
      end
      object Picture1: TfrxPictureView
        Left = 566.929500000000000000
        Top = 15.118120000000000000
        Width = 192.756030000000000000
        Height = 90.708720000000000000
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
      object Shape2: TfrxShapeView
        Top = 15.118120000000000000
        Width = 740.787880000000000000
        Height = 90.708720000000000000
      end
    end
  end
  inherited FDQuery1: TFDQuery
    SQL.Strings = (
      'SELECT        Entrada.*, Usuario.Nome'
      'FROM            Entrada INNER JOIN'
      '                         Usuario ON Entrada.ID = Usuario.ID')
  end
  inherited frxDBDataset1: TfrxDBDataset
    FieldAliases.Strings = (
      'ID=ID'
      'Dt_entrada=Dt_entrada'
      'Custo_total=Custo_total'
      'Qtde_itens=Qtde_itens'
      'ID_usuario=ID_usuario'
      'Data_inc=Data_inc'
      'Data_alt=Data_alt'
      'STATUS=STATUS'
      'Sit=Sit'
      'Nome=Nome')
  end
  object FDQuery2: TFDQuery
    Active = True
    MasterSource = DataSource1
    MasterFields = 'ID'
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT        EntradaItens.*, Produto.Nome'
      'FROM            Entrada INNER JOIN'
      
        '                         EntradaItens ON Entrada.ID = EntradaIte' +
        'ns.ID_entrada INNER JOIN'
      
        '                         Produto ON EntradaItens.id_prod = Produ' +
        'to.ID')
    Left = 232
    Top = 113
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 352
    Top = 129
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = FDQuery2
    BCDToCurrency = False
    Left = 296
    Top = 113
  end
end
