inherited frmRelVendasxProduto: TfrmRelVendasxProduto
  Caption = 'Vendas por Produto'
  ClientWidth = 430
  ExplicitWidth = 446
  ExplicitHeight = 288
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 430
    ExplicitWidth = 430
  end
  inherited Panel2: TPanel
    Width = 430
    ExplicitWidth = 430
    inherited Label1: TLabel
      Width = 428
      Caption = 'Relat'#243'rio Vendas por Produto'
      ExplicitWidth = 428
    end
  end
  inherited frxReport1: TfrxReport
    ReportOptions.CreateDate = 42523.688706643500000000
    ReportOptions.LastChange = 42526.798290381940000000
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
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
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
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
            'Vendas por Produto')
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
        Height = 18.897650000000000000
        Top = 234.330860000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1TotalGrana: TfrxMemoView
          Left = 623.622450000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'TotalGrana'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8W = (
            '[frxDBDataset1."TotalGrana"]')
        end
        object frxDBDataset1Qtos: TfrxMemoView
          Left = 464.882190000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'Qtos'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."Qtos"]')
          ParentFont = False
        end
        object frxDBDataset1QtosPedidos: TfrxMemoView
          Left = 336.378170000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QtosPedidos'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."QtosPedidos"]')
          ParentFont = False
        end
        object frxDBDataset1Nome: TfrxMemoView
          Left = 60.472480000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DataField = 'Nome'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Nome"]')
        end
        object frxDBDataset1ID: TfrxMemoView
          Left = 7.559060000000000000
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
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 313.700990000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 480.000310000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina: [Page#] de [TotalPages#]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 139.842610000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 623.622450000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 464.882190000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Qtos')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 336.378170000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Pedidos')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 60.472480000000000000
          Top = 7.559060000000000000
          Width = 230.551330000000000000
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
        object Memo6: TfrxMemoView
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 45.354360000000000000
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
          Top = 26.456710000000000000
          Width = 740.787880000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  inherited FDQuery1: TFDQuery
    Active = True
    SQL.Strings = (
      
        'SELECT        Produto.ID, Produto.Nome, COUNT(PedItem.ID_pedido)' +
        ' AS QtosPedidos, '
      
        #9#9#9#9'SUM(PedItem.Qtde) as Qtos, SUM(PedItem.Pr_total) as TotalGra' +
        'na'
      'FROM            Produto INNER JOIN'
      
        '                         PedItem ON Produto.ID = PedItem.ID_prod' +
        'uto'
      'GROUP BY Produto.ID, Produto.Nome'
      'ORDER BY Produto.Nome')
  end
end
