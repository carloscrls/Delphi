inherited frmRelProdxCat: TfrmRelProdxCat
  Caption = 'frmRelProdxCat'
  ClientWidth = 429
  ExplicitWidth = 445
  ExplicitHeight = 288
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 429
    ExplicitWidth = 429
    inherited BitBtn1: TBitBtn
      Left = 16
      ExplicitLeft = 16
    end
    inherited BitBtn2: TBitBtn
      Left = 112
      ExplicitLeft = 112
    end
  end
  inherited Panel2: TPanel
    Width = 429
    ExplicitWidth = 429
    inherited Label1: TLabel
      Width = 427
      Caption = 'Lista Produtos/Categoria'
      ExplicitWidth = 427
    end
  end
  inherited frxReport1: TfrxReport
    ReportOptions.CreateDate = 42522.392695092600000000
    ReportOptions.LastChange = 42527.465449247680000000
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
        Height = 94.488250000000000000
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
            'Produtos por Categoria')
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
        Top = 264.567100000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo6: TfrxMemoView
          Left = 68.031540000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 0'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 16777166
          ParentFont = False
        end
        object frxDBDataset1ProdNome: TfrxMemoView
          Left = 68.031540000000000000
          Width = 374.173470000000000000
          Height = 18.897650000000000000
          DataField = 'ProdNome'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."ProdNome"]')
        end
        object frxDBDataset1ID: TfrxMemoView
          Left = 11.338590000000000000
          Width = 49.133890000000000000
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
        Top = 393.071120000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 563.149970000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina: [Page#] de [TotalPages#]')
          Formats = <
            item
            end
            item
            end>
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 68.031540000000000000
        Top = 173.858380000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBDataset1."CatNome"'
        object frxDBDataset1CatNome: TfrxMemoView
          Left = 98.267780000000000000
          Top = 11.338590000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'CatNome'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CatNome"]')
        end
        object Memo3: TfrxMemoView
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Categoria:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 68.031540000000000000
          Top = 41.574830000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 18.897650000000000000
          Top = 11.338590000000000000
          Width = 699.213050000000000000
          Height = 18.897650000000000000
          Shape = skRoundRectangle
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 740.409927000000000000
        object Line2: TfrxLineView
          Left = 608.504330000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Color = clBlack
          Diagonal = True
        end
        object SysMemo1: TfrxSysMemoView
          Left = 653.858690000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
        end
        object Memo5: TfrxMemoView
          Left = 608.504330000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
      end
    end
  end
  inherited FDQuery1: TFDQuery
    SQL.Strings = (
      
        'SELECT        Produto.ID, Produto.Nome AS ProdNome, Categoria.No' +
        'me AS CatNome'
      'FROM            Produto INNER JOIN'
      
        '                         Categoria ON Produto.Id_categoria = Cat' +
        'egoria.ID'
      'GROUP BY PRODUTO.ID, Produto.Nome, Categoria.Nome'
      'ORDER BY CatNome')
  end
end
